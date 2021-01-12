#!/usr/bin/env python3
'''This script is designed to load quasi-static data into a PostGIS database
for rendering maps. It differs from the usual scripts to do this in that it is
designed to take its configuration from a file rather than be a series of shell
commands.

Some implicit assumptions are
- Time spent querying (rendering) the data is more valuable than the one-time
    cost of loading it
- The script will not be running multiple times in parallel. This is not
    normally likely because the script is likely to be called daily or less,
    not minutely.
- Usage patterns will be similar to typical map rendering
'''

import yaml
import os
import os.path
import re
import argparse
import shutil

# modules for getting data
import zipfile
import requests
import io
import time
import email.utils

# modules for converting and postgres loading
import subprocess
import psycopg2

import logging


def database_setup(conn, temp_schema, schema, metadata_table):
    with conn.cursor() as cur:
            cur.execute('''CREATE SCHEMA IF NOT EXISTS {temp_schema};'''
                        .format(temp_schema=temp_schema))
            cur.execute(('''CREATE TABLE IF NOT EXISTS "{schema}"."{metadata_table}"'''
                         ''' (name text primary key, last_modified text);''')
                        .format(schema=schema, metadata_table=metadata_table))
    conn.commit()


class Table:
    def __init__(self, name, conn, temp_schema, schema, metadata_table):
        self._name = name
        self._conn = conn
        self._temp_schema = temp_schema
        self._dst_schema = schema
        self._metadata_table = metadata_table

    # Clean up the temporary schema in preperation for loading
    def clean_temp(self):
        with self._conn.cursor() as cur:
            cur.execute('''DROP TABLE IF EXISTS "{temp_schema}"."{name}"'''
                        .format(name=self._name, temp_schema=self._temp_schema))
        self._conn.commit()

    # get the last modified date from the metadata table
    def last_modified(self):
        with self._conn.cursor() as cur:
            cur.execute('''SELECT last_modified FROM "{schema}"."{metadata_table}" WHERE name = %s'''
                        .format(schema=self._dst_schema, metadata_table=self._metadata_table), [self._name])
            results = cur.fetchone()
            if results is not None:
                return results[0]
        return ''

    def index(self):
        with self._conn.cursor() as cur:
            # Disable autovacuum while manipulating the table, since it'll get clustered towards the end.
            cur.execute('''ALTER TABLE "{temp_schema}"."{name}" SET ( autovacuum_enabled = FALSE );'''
                        .format(name=self._name, temp_schema=self._temp_schema))
            # ogr creates a ogc_fid column we don't need
            cur.execute('''ALTER TABLE "{temp_schema}"."{name}" DROP COLUMN ogc_fid;'''
                        .format(name=self._name, temp_schema=self._temp_schema))

            # Null geometries are useless for rendering
            cur.execute('''DELETE FROM "{temp_schema}"."{name}" WHERE way IS NULL;'''
                        .format(name=self._name, temp_schema=self._temp_schema))
            cur.execute('''ALTER TABLE "{temp_schema}"."{name}" ALTER COLUMN way SET NOT NULL;'''
                        .format(name=self._name, temp_schema=self._temp_schema))
            # sorting static tables helps performance and reduces size from the column drop above
            cur.execute(('''CREATE INDEX "{name}_order" ON "{temp_schema}"."{name}" '''
                         '''(ST_Envelope(way));'''
                         '''CLUSTER "{temp_schema}"."{name}" '''
                         '''USING "{name}_order";'''
                         '''DROP INDEX "{temp_schema}"."{name}_order";'''
                         '''CREATE INDEX ON "{temp_schema}"."{name}" '''
                         '''USING GIST (way) WITH (fillfactor=100);''')
                        .format(name=self._name, temp_schema=self._temp_schema))
            # Reset autovacuum. The table is static, so this doesn't really
            # matter since it'll never need a vacuum.
            cur.execute('''ALTER TABLE "{temp_schema}"."{name}" RESET ( autovacuum_enabled );'''
                        .format(name=self._name, temp_schema=self._temp_schema))
        self._conn.commit()

        # VACUUM can't be run in transaction, so autocommit needs to be turned on
        old_autocommit = self._conn.autocommit
        try:
            self._conn.autocommit = True
            with self._conn.cursor() as cur:
                cur.execute('''VACUUM ANALYZE "{temp_schema}"."{name}";'''
                            .format(name=self._name, temp_schema=self._temp_schema))
        finally:
            self._conn.autocommit = old_autocommit

    def replace(self, new_last_modified):
        with self._conn.cursor() as cur:
            cur.execute('''BEGIN;''')
            cur.execute(('''DROP TABLE IF EXISTS "{schema}"."{name}";'''
                         '''ALTER TABLE "{temp_schema}"."{name}" SET SCHEMA "{schema}";''')
                        .format(name=self._name, temp_schema=self._temp_schema, schema=self._dst_schema))

            # We checked if the metadata table had this table way up above
            cur.execute('''SELECT 1 FROM "{schema}"."{metadata_table}" WHERE name = %s'''
                        .format(schema=self._dst_schema, metadata_table=self._metadata_table),
                        [self._name])
            if cur.rowcount == 0:
                cur.execute(('''INSERT INTO "{schema}"."{metadata_table}" '''
                            '''(name, last_modified) VALUES (%s, %s)''')
                            .format(schema=self._dst_schema, metadata_table=self._metadata_table),
                            [self._name, new_last_modified])
            else:
                cur.execute('''UPDATE "{schema}"."{metadata_table}" SET last_modified = %s WHERE name = %s'''
                            .format(schema=self._dst_schema, metadata_table=self._metadata_table),
                            [new_last_modified, self._name])
        self._conn.commit()


def should_redownload(req, url, file_name):
    if not os.path.isfile(file_name):
        return True
    download_head = req.head(url, allow_redirects=True)
    if 'last-modified' in download_head.headers:
        last_modified = time.mktime(email.utils.parsedate(download_head.headers['last-modified']))
        if last_modified > os.path.getmtime(file_name):
            logging.debug('Will redownload {} due to modification on server'.format(file_name))
            return True
    if 'content-length' in download_head.headers:
        file_size = int(download_head.headers['content-length'])
        if file_size != os.path.getsize(file_name):
            logging.debug('Will redownload {} due to size mismatch'.format(file_name))
            return True
        else:
            return False
    logging.debug('Will redownload {} due to missing Content-Length header'.format(file_name))
    return True


def main():
    # parse options
    parser = argparse.ArgumentParser(description="Load external data into a database")

    parser.add_argument("-r", "--redownload", action="store_true", help="Redownload external files, even if not required")
    parser.add_argument("-f", "--force", action="store_true", help="Recreate database objects, even if not required")

    parser.add_argument("-c", "--config", action="store", default="external-data.yml",
                        help="Name of configuration file (default external-data.yml)")
    parser.add_argument("-D", "--data", action="store", help="Override data download directory")

    parser.add_argument("-d", "--database", action="store", help="Override database name to connect to")
    parser.add_argument("-H", "--host", action="store",
                        help="Override database server host or socket directory")
    parser.add_argument("-p", "--port", action="store", help="Override database server port")
    parser.add_argument("-U", "--username", action="store", help="Override database user name")
    parser.add_argument("-v", "--verbose", action="store_true", help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true", help="Only report serious problems")

    opts = parser.parse_args()

    if opts.verbose:
        logging.basicConfig(level=logging.DEBUG)
    elif opts.quiet:
        logging.basicConfig(level=logging.WARNING)
    else:
        logging.basicConfig(level=logging.INFO)

    with open(opts.config) as config_file:
        config = yaml.safe_load(config_file)
        data_dir = opts.data or config["settings"]["data_dir"]
        os.makedirs(data_dir, exist_ok=True)

        # If the DB options are unspecified in both on the command line and in the
        # config file, libpq will pick what to use with the None
        database = opts.database or config["settings"].get("database")
        host = opts.host or config["settings"].get("host")
        port = opts.port or config["settings"].get("port")
        user = opts.username or config["settings"].get("username")
        with requests.Session() as s, \
            psycopg2.connect(database=database,
                             host=host, port=port,
                             user=user) as conn:

            s.headers.update({'User-Agent': 'get-external-data.py/osm-carto'})

            # DB setup
            database_setup(conn, config["settings"]["temp_schema"],
                           config["settings"]["schema"],
                           config["settings"]["metadata_table"])

            for name, source in config["sources"].items():
                logging.info("Checking table {}".format(name))
                # Don't attempt to handle strange names
                # Even if there was code to escape them properly here, you don't want
                # in a style with all the quoting headaches
                if not re.match('''^[a-zA-Z0-9_]+$''', name):
                    raise RuntimeError("Only ASCII alphanumeric table are names supported")

                workingdir = os.path.join(data_dir, name)
                # Clean up anything left over from an aborted run
                shutil.rmtree(workingdir, ignore_errors=True)

                os.makedirs(workingdir, exist_ok=True)

                this_table = Table(name, conn,
                                   config["settings"]["temp_schema"],
                                   config["settings"]["schema"],
                                   config["settings"]["metadata_table"])
                this_table.clean_temp()

                file_name = os.path.join(data_dir, os.path.basename(source["url"]))
                last_modified = None
                if opts.redownload or should_redownload(s, source["url"], file_name):
                    logging.info("Downloading file {}".format(file_name))
                    download = s.get(source["url"], stream=True)
                    download.raise_for_status()
                    with open(file_name, "wb") as f:
                        for chunk in download.iter_content(chunk_size=8388608):
                            f.write(chunk)
                    try:
                        last_modified = time.mktime(email.utils.parsedate(download.headers['last-modified']))
                        os.utime(file_name, (time.time(), last_modified))
                    except (KeyError, TypeError, OverflowError, ValueError):
                        # KeyError will be raised if Last-Modified header is missing
                        # TypeError will be raised if header did not contain a valid date
                        # OverflowError/ValueError may come from mktime invocation
                        pass

                if last_modified is None:
                    last_modified = os.path.getmtime(file_name)

                if opts.force or str(last_modified) != this_table.last_modified():
                    if "archive" in source and source["archive"]["format"] == "zip":
                        logging.info("Extracting files from archive {}".format(file_name))
                        zip = zipfile.ZipFile(file_name, "r")
                        for member in source["archive"]["files"]:
                            zip.extract(member, workingdir)

                    ogrpg = "PG:dbname={}".format(database)

                    if port is not None:
                        ogrpg = ogrpg + " port={}".format(port)
                    if user is not None:
                        ogrpg = ogrpg + " user={}".format(user)
                    if host is not None:
                        ogrpg = ogrpg + " host={}".format(host)

                    ogrcommand = ["ogr2ogr",
                                  '-f', 'PostgreSQL',
                                  '-lco', 'GEOMETRY_NAME=way',
                                  '-lco', 'SPATIAL_INDEX=FALSE',
                                  '-lco', 'EXTRACT_SCHEMA_FROM_LAYER_NAME=YES',
                                  '-nln', "{}.{}".format(config["settings"]["temp_schema"], name)]

                    if "ogropts" in source:
                        ogrcommand += source["ogropts"]

                    ogrcommand += [ogrpg, os.path.join(workingdir, source["file"])]

                    logging.info("Importing data from file {}".format(source["file"]))
                    logging.debug("running {}".format(subprocess.list2cmdline(ogrcommand)))

                    # ogr2ogr can raise errors here, so they need to be caught
                    try:
                        subprocess.check_output(ogrcommand, stderr=subprocess.PIPE, universal_newlines=True)
                    except subprocess.CalledProcessError as e:
                        # Add more detail on stdout for the logs
                        logging.critical("ogr2ogr returned {} with layer {}".format(e.returncode, name))
                        logging.critical("Command line was {}".format(subprocess.list2cmdline(e.cmd)))
                        logging.critical("stdout:\n{}".format(e.output))
                        logging.critical("stderr:\n{}".format(e.stderr))
                        raise RuntimeError("ogr2ogr error when loading table {}".format(name))

                    this_table.index()
                    this_table.replace(str(last_modified))
                else:
                    logging.info("Table {} is up to date".format(name))


if __name__ == '__main__':
    main()

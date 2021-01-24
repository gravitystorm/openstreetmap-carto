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
import re
import argparse
import shutil

# modules for getting data
import zipfile
import requests
import io

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


def main():
    # parse options
    parser = argparse.ArgumentParser(
        description="Load external data into a database")

    parser.add_argument("-f", "--force", action="store_true",
                        help="Download new data, even if not required")

    parser.add_argument("-c", "--config", action="store", default="external-data.yml",
                        help="Name of configuration file (default external-data.yml)")
    parser.add_argument("-D", "--data", action="store",
                        help="Override data download directory")

    parser.add_argument("-d", "--database", action="store",
                        help="Override database name to connect to")
    parser.add_argument("-H", "--host", action="store",
                        help="Override database server host or socket directory")
    parser.add_argument("-p", "--port", action="store",
                        help="Override database server port")
    parser.add_argument("-U", "--username", action="store",
                        help="Override database user name")
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="Be more verbose. Overrides -q")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only report serious problems")
    parser.add_argument("-w", "--password", action="store",
                        help="Override database password")

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
        password = opts.password or config["settings"].get("password")
        with requests.Session() as s, \
            psycopg2.connect(database=database,
                             host=host, port=port,
                             user=user,
                             password=password) as conn:

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
                    raise RuntimeError(
                        "Only ASCII alphanumeric table are names supported")

                workingdir = os.path.join(data_dir, name)
                # Clean up anything left over from an aborted run
                shutil.rmtree(workingdir, ignore_errors=True)

                os.makedirs(workingdir, exist_ok=True)

                this_table = Table(name, conn,
                                   config["settings"]["temp_schema"],
                                   config["settings"]["schema"],
                                   config["settings"]["metadata_table"])
                this_table.clean_temp()

                if not opts.force:
                    headers = {'If-Modified-Since': this_table.last_modified()}
                else:
                    headers = {}

                download = s.get(source["url"], headers=headers)
                download.raise_for_status()

                if (download.status_code == 200):
                    if "Last-Modified" in download.headers:
                        new_last_modified = download.headers["Last-Modified"]
                    else:
                        new_last_modified = None
                    if "archive" in source and source["archive"]["format"] == "zip":
                        zip = zipfile.ZipFile(io.BytesIO(download.content))
                        for member in source["archive"]["files"]:
                            zip.extract(member, workingdir)

                    ogrpg = "PG:dbname={}".format(database)

                    if port is not None:
                        ogrpg = ogrpg + " port={}".format(port)
                    if user is not None:
                        ogrpg = ogrpg + " user={}".format(user)
                    if host is not None:
                        ogrpg = ogrpg + " host={}".format(host)
                    if password is not None:
                        ogrpg = ogrpg + " password={}".format(password)

                    ogrcommand = ["ogr2ogr",
                                  '-f', 'PostgreSQL',
                                  '-lco', 'GEOMETRY_NAME=way',
                                  '-lco', 'SPATIAL_INDEX=FALSE',
                                  '-lco', 'EXTRACT_SCHEMA_FROM_LAYER_NAME=YES',
                                  '-nln', "{}.{}".format(config["settings"]["temp_schema"], name)]

                    if "ogropts" in source:
                        ogrcommand += source["ogropts"]

                    ogrcommand += [ogrpg,
                                   os.path.join(workingdir, source["file"])]

                    logging.debug("running {}".format(
                        subprocess.list2cmdline(ogrcommand)))

                    # ogr2ogr can raise errors here, so they need to be caught
                    try:
                        subprocess.check_output(
                            ogrcommand, stderr=subprocess.PIPE, universal_newlines=True)
                    except subprocess.CalledProcessError as e:
                        # Add more detail on stdout for the logs
                        logging.critical(
                            "ogr2ogr returned {} with layer {}".format(e.returncode, name))
                        logging.critical("Command line was {}".format(
                            subprocess.list2cmdline(e.cmd)))
                        logging.critical("Output was\n{}".format(e.output))
                        raise RuntimeError(
                            "ogr2ogr error when loading table {}".format(name))

                    this_table.index()
                    this_table.replace(new_last_modified)
                else:
                    logging.info(
                        "Table {} did not require updating".format(name))


if __name__ == '__main__':
    main()

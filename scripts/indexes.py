#!/usr/bin/env python3

# This script takes a YAML file defining indexes and creates SQL statements
# There are a number of options for concurrent index creation, recreating the
# osm2pgsql-built indexes, fillfactors, and other settings to give full control
# of the resulting statements
# indexes.sql is created by this script, with the default options

import argparse, sys, os, yaml

def index_statement(table, name, function, conditions=None, concurrent=False,notexist=False, fillfactor=None):
    options = ' CONCURRENTLY' if concurrent else ''
    options += ' IF NOT EXISTS' if notexist else ''
    storage = '' if fillfactor is None else '\n  WITH (fillfactor={})'.format(fillfactor)
    where = '' if conditions is None else '\n  WHERE {}'.format(conditions)
    return ('CREATE INDEX{options} {table}_{name}\n' +
            '  ON {table} USING GIST ({function})' +
            '{storage}' +
            '{where};\n').format(table="planet_osm_"+table, name=name, function=function,
                storage=storage, options=options, where=where)

def parse(cb):
    with open(os.path.join(os.path.dirname(__file__), '../indexes.yml')) as yaml_file:
        indexes = yaml.safe_load(yaml_file)

    for table, data in sorted(indexes.items()):
        for name, definition in sorted(data.items()):
            cb(table, name, definition.get("function", "way"), definition["where"])

# The same as parse, but for osm2pgsql-built indexes
def osm2pgsql_parse(cb):
    cb('point', 'index', None)
    cb('line', 'index', None)
    cb('polygon', 'index', None)
    cb('roads', 'index', None)

parser = argparse.ArgumentParser(description='Generates custom index statements')
parser.add_argument('--concurrent', dest='concurrent', help='Generate indexes CONCURRENTLY', action='store_true', default=False)
parser.add_argument('--fillfactor', help='Custom fillfactor to use')
parser.add_argument('--notexist', help='Use IF NOT EXISTS (requires 9.5)', action='store_true', default=False)
parser.add_argument('--osm2pgsql', help='Include indexes normally built by osm2pgsql', action='store_true', default=False)
parser.add_argument('--reindex', help='Rebuild existing indexes', action='store_true', default=False)
args = parser.parse_args()

def cb (table, name, function, where):
    print(index_statement(table, name, function, where, args.concurrent, args.notexist, args.fillfactor), end='')

def reindex_cb(table, name, function, where):
    if not args.concurrent:
        print('REINDEX planet_osm_{table}_{name};'.format(table=table, name=name))
    else:
        # Rebuilding indexes concurently requires making a new index, dropping the old one, and renaming.
        print('ALTER INDEX planet_osm_{table}_{name} RENAME TO planet_osm_{table}_{name}_old;'.format(table=table, name=name))
        cb(table, name, function, where)
        print('DROP INDEX planet_osm_{table}_{name}_old;\n'.format(table=table, name=name))

print(('-- These are indexes for rendering performance with OpenStreetMap Carto.\n'+
      '-- This file is generated with {}\n').format(' '.join(sys.argv)))

if not args.reindex:
    parse(cb)
else:
    parse(reindex_cb)

if args.osm2pgsql:
    print('\n-- These indexes are normally built by osm2pgsql')
    if not args.reindex:
        osm2pgsql_parse(cb)
    else:
        osm2pgsql_parse(reindex_cb)

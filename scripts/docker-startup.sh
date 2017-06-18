#!/bin/sh

i=1
MAXCOUNT=60
echo "Waiting for PostgreSQL to be running"
while [ $i -le $MAXCOUNT ]
do
	pg_isready -q && echo "PostgreSQL running" && break
	sleep 2
	i=$((i+1))
done
test $i -gt $MAXCOUNT && echo "Timeout while waiting for PostgreSQL to be running"

case "$1" in
import)
	psql -c "SELECT 1 FROM pg_database WHERE datname = 'gis';" | grep -q 1 || createdb gis && \
  psql -d gis -c 'CREATE EXTENSION IF NOT EXISTS postgis;' && \
  psql -d gis -c 'CREATE EXTENSION IF NOT EXISTS hstore;' && \
  osm2pgsql \
  --cache $OSM2PGSQL_CACHE \
  --number-processes $OSM2PGSQL_NUMPROC \
  --hstore \
  --multi-geometry \
  --database gis \
  --style openstreetmap-carto.style \
  --tag-transform-script openstreetmap-carto.lua \
  $OSM2PGSQL_DATAFILE
  ;;
kosmtik)
	python scripts/get-shapefiles.py -n
	
	mkdir -p .config
	if [ ! -e ".kosmtik-config.yml" ]; then
	  touch .kosmtik-config.yml
	  # this can be removed once https://github.com/kosmtik/kosmtik/issues/236 is resolved
	  echo "plugins:" >> .kosmtik-config.yml
	fi
	export KOSMTIK_CONFIGPATH=".kosmtik-config.yml"
	
	kosmtik serve project.mml --host 0.0.0.0
	# It needs Control C to be interrupted
  ;;
esac
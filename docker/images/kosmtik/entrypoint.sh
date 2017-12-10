#!/bin/sh

# Testing if database is ready
i=1
MAXCOUNT=60
echo "Waiting for PostgreSQL to be running"
while [ $i -le $MAXCOUNT ]
do
  pg_isready -q && echo "PostgreSQL running" && break
  sleep 2
  i=$((i+1))
done
test $i -gt $MAXCOUNT && echo "Timeout while waiting for PostgreSQL to be running"  && exit 1

# Downloading needed shapefiles
python scripts/get-shapefiles.py -n

# Creating default Kosmtik settings file
if [ ! -e "docker/.kosmtik-config.yml" ]; then
  cp /tmp/.kosmtik-config.yml docker/.kosmtik-config.yml
fi
export KOSMTIK_CONFIGPATH="docker/.kosmtik-config.yml"

# Starting Kosmtik
kosmtik serve project.mml --host 0.0.0.0
# It needs Ctrl+C to be interrupted

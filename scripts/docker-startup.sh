#!/bin/sh

python scripts/get-shapefiles.py

mkdir -p .config
if [ ! -e ".kosmtik-config.yml" ]; then
  touch .kosmtik-config.yml
  # this can be removed once https://github.com/kosmtik/kosmtik/issues/236 is resolved
  echo "plugins:" >> .kosmtik-config.yml
fi
export KOSMTIK_CONFIGPATH=".kosmtik-config.yml"

kosmtik serve project.mml --host 0.0.0.0

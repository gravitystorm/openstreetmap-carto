#!/usr/bin/python
#
# Code to generate a taginfo project json from database views
# inspired by https://github.com/osmlab/osm2pgsql_taginfo
#

import sys
import os
import re
import json

class tag_usage():
    def __init__(self, key, node, way, area):
        self.key = key
        self.node = node
        self.way = way
        self.area = area


taginfo = {
    "data_format": 1,
    "project": {
        "name": "Keys used in german mapnik style",
        "description": "This files contains all keys used for rendering in german carto style",
        "project_url": "https://github.com/giggls/openstreetmap-carto-de",
        "contact_name": "Sven Geggus",
        "contact_email": "sven-osm@geggus.net"
    },
    "tags": []
}

if len(sys.argv) != 4:
  sys.stderr.write("usage: %s view-point.sql view-line.sql view-polygon.sql\n" % os.path.basename(sys.argv[0]))
  sys.exit(1)

p = re.compile("tags->'([^ ]+)' as")

type = ['node','way','area'];

allkeys = {}
for arg in range(1,4):
  f = open(sys.argv[arg], 'r')
  sql=f.read()
  keys = p.findall(sql)
  for key in keys:
    if key == 'tags':
      continue
    if key not in allkeys:
      l = []
      l.append(type[arg-1])
      allkeys[key] = l
    else:
      allkeys[key].append(type[arg-1])

for k in allkeys:
  #print("%s %s" % (k,allkeys[k]))
  taginfo["tags"].append(
  {
    "key": k,
    "object_types": allkeys[k]
  })

print(json.dumps(taginfo, indent=4))

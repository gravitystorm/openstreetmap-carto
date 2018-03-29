#!/usr/bin/env python3

# -------------------------------------------------------------------------------
#
# This code generate a taginfo project list file (see more https://wiki.openstreetmap.org/wiki/Taginfo/Projects )
#
### Attribution & Disclaimer: 
# This code is based on :
# Paul Norman code : https://github.com/osmlab/osm2pgsql_taginfo
# Sven Geggus code : https://github.com/giggls/openstreetmap-carto-de/blob/master/views_osmde/generate_taginfo.py
# -------------------------------------------------------

import re
import json
import yaml

taginfo = {
    "data_format": 1,
    "project": {
        "name": "OpenStreetMap Carto keys",
        "description": "Default OpenStreetMap.org style using CartoCSS",
        "project_url": "https://github.com/gravitystorm/openstreetmap-carto",
        "contact_name": "openstreetmap-carto maintainers",
        "contact_email": "openstreetmap-carto (at) gravitystorm (dot) co (dot) uk"
    },
    "tags": []
}


#
# Parsing openstreetmap-carto.style file
#
with open('../openstreetmap-carto.style', 'r') as style:
    for line in style:
        if line[0] == '#':
            continue
        keyline = line.split()
        if len(keyline) != 4:
            continue
        if keyline[3] == 'delete' or 'nocolumn' in keyline[3]:
            continue
        key = keyline[1]
        object_types = []
        if 'node' in keyline[0]:
            object_types.append('node')
        if 'way' in keyline[0]:
            object_types.append('way')            
            if 'polygon' in keyline[3]:
                object_types.append('area')

        if ('area' in object_types) or ('way' in object_types ):
                object_types.append('relation')
     
        if key not in ('z_order','way_area'):        
            taginfo["tags"].append(
                {
                    "key": key,
                    "object_types": object_types,
                    "description": "Used in the osm2pgsql database backend, see more in the github repo",
                    "doc_url": "https://github.com/gravitystorm/openstreetmap-carto/search?utf8=%E2%9C%93&q="+key
                })



#
# Parsing "project.mml" file for the HSTORE keys (  tags-> )
#

with open('../project.mml', 'r') as f:
  newf = yaml.load(f.read())
f.closed


tags_b = re.compile(r"tags[^'^)]*'.+?'")

# ["tags @> 'capital=>yes'"]
# ["tags ? 'wetland'", "tags->'wetland'", "tags->'leaf_type'"]
# (tags @> '"generator:source"=>wind' 

allhstoretags={}

for layer in newf["Layer"]:
    print( "########### processing Layer: ", layer["id"]," ###########" )  
    ds_geometry = layer.get("geometry")

    osmtype = ''
    if ds_geometry:
        if ds_geometry=='point':
            osmtype='node'
        elif ds_geometry=='linestring':    
            osmtype='way'
        elif ds_geometry=='polygon':    
            osmtype='area'

    ds_type = layer["Datasource"].get("type")
    if ds_type and ds_type == "postgis":
        ds_table = layer["Datasource"].get("table")
        if ds_table:
            tags01 = tags_b.findall(ds_table)
            if tags01:
                print(tags01)
                for tag in tags01:
                    key=tag.split("'")[1].split("=")[0].replace('"','')
                    if key:
                        print("--:", ds_geometry,"->", osmtype, " key:", key)
                        if key not in allhstoretags:
                            k = [ osmtype ]
                            allhstoretags[key]=k
                        elif osmtype not in allhstoretags[key]:
                            allhstoretags[key].append(osmtype)

for k in allhstoretags:
  # add "relation" if  "area" or "way"  
  if ('area' in allhstoretags[k]) or ('way' in allhstoretags[k]):
    allhstoretags[k].append("relation")

  taginfo["tags"].append(
  {
    "key": k,
    "object_types": allhstoretags[k],
    "description": "Used as a hstore tags-> in the database backend, see more in the github repo",
    "doc_url": "https://github.com/gravitystorm/openstreetmap-carto/search?utf8=%E2%9C%93&q="+k
  })



with open('taginfo-openstreetmap-carto.json', 'w') as outfile:
    json.dump(taginfo, outfile, indent=4)

                            
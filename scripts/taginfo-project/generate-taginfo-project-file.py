#!/usr/bin/env python3

# -------------------------------------------------------------------------------
#
# This code generates a taginfo project list file (see more https://wiki.openstreetmap.org/wiki/Taginfo/Projects )
#
### Attribution & Disclaimer:
# This code is based on :
# Paul Norman code : https://github.com/osmlab/osm2pgsql_taginfo
# Sven Geggus code : https://github.com/giggls/openstreetmap-carto-de/blob/master/views_osmde/generate_taginfo.py
# -------------------------------------------------------

import argparse
import json
import os
import re
import yaml

parser = argparse.ArgumentParser()
parser.add_argument("-v", "--verbose",              help="Print debug info",action="store_true")

parser.add_argument("--osm2pgsql_file",             help="osm2pgsql config file",    default="./openstreetmap-carto.style")
parser.add_argument("--cartocss_project_file",      help="project cartocss yml file",default="./project.mml")
parser.add_argument("--taginfo_project_file", "-o", help="output taginfo json file ",default="./taginfo-openstreetmap-carto.json")

parser.add_argument("--project_name",       help="taginfo project name "          ,default="OpenStreetMap Carto keys")
parser.add_argument("--project_description",help="taginfo project description"    ,default="Default OpenStreetMap.org style using CartoCSS")
parser.add_argument("--project_url",        help="taginfo project url  "          ,default="https://github.com/gravitystorm/openstreetmap-carto")
parser.add_argument("--contact_name",       help="taginfo project - contact name ",default="openstreetmap-carto maintainers")
parser.add_argument("--contact_email",      help="taginfo project - contact_email",default="openstreetmap-carto (at) gravitystorm (dot) co (dot) uk")

parser.add_argument("--search_url",help="taginfo project - search_url for every keys",default='https://github.com/gravitystorm/openstreetmap-carto/search?utf8=%E2%9C%93&q=')

args = parser.parse_args()

# -------------------------  parameters ----------------------------
taginfo = {
    "data_format": 1,
    "project": {
        "name":         args.project_name,
        "description":  args.project_description,
        "project_url":  args.project_url,
        "contact_name": args.contact_name,
        "contact_email":args.contact_email
    },
    "tags": []
}


# ----------------------------------  Examples --------------------
#  tags @> 'capital=>yes'"]
#  tags ? 'wetland'"
#  tags->'leaf_type'
#  tags @> '"generator:source"=>wind'
re_tags_one     = re.compile(r"[^a-z0-9_]tags[^'^)^\[^\]]*'.+?'")   # calling with re.IGNORECASE


# ----------------------------------  Examples --------------------
#  tags -> ARRAY['wheelchair',ramp:wheelchair']
#  tags ?& ARRAY['wheelchair',ramp:wheelchair']
#  tags ?| ARRAY['wheelchair',ramp:wheelchair']
re_tags_array = re.compile(  r"[^a-z0-9_]tags\s*[@\?-][>&\|]\s*array\[.+?\]"  )  # calling with re.IGNORECASE

allhstoretags={}



def processOSMkeys(_layer, _ds_geometry, _osmtype, _tag):
    """Processing  sql codefragment(_tag)  to allhstoretags[key]

        example input:
            _layer        = amenity-points
            _ds_geometry  = point
            _osmtype      = node
            _tag          = (tags @> '"generator:source"=>wind'

        should append/create
            allhstoretags['generator:source']= [ node ] 

    """

    key=_tag.split("'")[1].split("=")[0].replace('"','')    
    # key=generator:source

    if key:
        if args.verbose:
            print("--:[", _layer , _ds_geometry, _osmtype, '] parse:', _tag,  "   ----> key:", key)
            # --:[ amenity-points point node ] parse: (tags @> '"generator:source"=>wind'    ----> key: generator:source

        # based on example add/append:        allhstoretags['generator:source']= [ node ] 
        if key not in allhstoretags:
            k = [ _osmtype ]
            allhstoretags[key]=k
        elif _osmtype not in allhstoretags[key]:
            allhstoretags[key].append(_osmtype)
    return


#
# Parsing openstreetmap-carto.style file
#
with open( args.osm2pgsql_file , 'r') as style:
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
                    "doc_url": args.search_url+key
                })



#
# Parsing "project.mml" file for the HSTORE keys (  tags-> )
#

with open( args.cartocss_project_file , 'r') as f:
  newf = yaml.load(f.read())

for layer in newf["Layer"]:
    if args.verbose:
        print( "########### processing Layer: ", layer["id"]," ###########" )
    _layer      = layer["id"]
    ds_geometry = layer.get("geometry")

    ds_type = layer["Datasource"].get("type")
    if ds_type and ds_type == "postgis":
        ds_table = layer["Datasource"].get("table")
        if ds_table:

            osmtype = ''
            if ds_geometry:
                if (ds_geometry=='point'):
                    osmtype='node'
                elif ds_geometry=='linestring':
                    osmtype='way'
                elif ds_geometry=='polygon':
                    osmtype='area'
            else:
                # If no Geometry type - we try to guess the type.
                if 'planet_osm_point' in ds_table.lower():
                    osmtype='node'
                elif 'planet_osm_polygon'  in ds_table.lower():
                    osmtype='area'
                elif 'planet_osm_line'  in ds_table.lower():
                    osmtype='way'
                elif 'planet_osm_roads'  in ds_table.lower():
                    osmtype='way'
                else:
                    if args.verbose:
                        print( 'table Not found:', ds_table.lower() )

            tags_one = re_tags_one.findall(ds_table,re.IGNORECASE)
            if tags_one:
                if args.verbose:
                    print(tags_one)
                for tag in tags_one:
                    processOSMkeys(_layer,ds_geometry,osmtype,tag)

            tags_array = re_tags_array.findall(ds_table,re.IGNORECASE)
            if tags_array:
                for tags in tags_array:
                    for tag in tags.split(','):
                        processOSMkeys(_layer,ds_geometry,osmtype,tag)

for k in allhstoretags:
  # add "relation" if  "area" or "way"
  if ('area' in allhstoretags[k]) or ('way' in allhstoretags[k]):
    allhstoretags[k].append("relation")

  taginfo["tags"].append(
  {
    "key": k,
    "object_types": allhstoretags[k],
    "description": "Used as a hstore tags-> in the database backend, see more in the github repo",
    "doc_url": args.search_url+k
  })


# write the json output
with open(args.taginfo_project_file, 'w') as outfile:
    taginfo_sorted=taginfo
    taginfo_sorted["tags"]= sorted(taginfo["tags"],key= lambda k: k['key'] )
    json.dump(taginfo_sorted, outfile, indent=4)

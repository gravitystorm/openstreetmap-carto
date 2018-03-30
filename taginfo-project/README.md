

The taginfo database keeps the information which projects use which OSM keys and tags
* site: https://taginfo.openstreetmap.org
* wiki: https://wiki.openstreetmap.org/wiki/Taginfo

Now We can generate only a minimal info - about the used 'keys'
see more  https://github.com/gravitystorm/openstreetmap-carto/issues/961

### WHEN to run?
*  when the `../openstreetmap-carto.style` or `../project.mml` change  , this is the 2 input files for detecting osm keys

### HOW to run:
*  from this directory:  `python3  ./generate-taginfo-project-file.py`

### RESULT:
*  the new:  `taginfo-openstreetmap-carto.json`   ( and some debug info in the screen! )

### Known limitations
* Only a subset of hstore `tags->` is parsed from the  `../project.mml`
* This code tested only on Ubuntu Linux
* Check the result!

### Examples for parsing
* `tags @> 'capital=>yes'"]`
* `tags ? 'wetland'"`
* `tags->'wetland' `
* `tags->'leaf_type'`
* `tags @> '"generator:source"=>wind'`
* `tags -> ARRAY['wheelchair',ramp:wheelchair']`
* `tags ?& ARRAY['wheelchair',ramp:wheelchair']`
* `tags ?| ARRAY['wheelchair',ramp:wheelchair']`

### How to debug:
The taginfo project_list file should contain a link to this repo ( /taginfo-project/taginfo-openstreetmap-carto.json )
* https://github.com/taginfo/taginfo-projects/blob/master/project_list.txt

the expected line:
*  openstreetmap_carto  https://raw.githubusercontent.com/gravitystorm/openstreetmap-carto/master/taginfo-project/taginfo-openstreetmap-carto.json

After the daily refresh the project info should be find here:
* https://taginfo.openstreetmap.org/projects/openstreetmap_carto

### Disclaimer and Attribution : This code is based on
* Paul Norman code : https://github.com/osmlab/osm2pgsql_taginfo
* Sven Geggus code : https://github.com/giggls/openstreetmap-carto-de/blob/master/views_osmde/generate_taginfo.py

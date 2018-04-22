

The taginfo database keeps the information which projects use which OSM keys and tags
* site: https://taginfo.openstreetmap.org
* wiki: https://wiki.openstreetmap.org/wiki/Taginfo


_"There are many projects using OSM tags in some way: editors, routers, maps, data extraction tools, ... Taginfo can get information from those projects about their use of OSM tags through 'project files'."_
_"Taginfo will periodically (usually daily) poll the project file and add the information to its own database."_ see more: https://wiki.openstreetmap.org/wiki/Taginfo/Projects


Now We can generate only a minimal info - about the used 'keys' ( see more  https://github.com/gravitystorm/openstreetmap-carto/issues/961 )

### WHEN to run?
*  when the `openstreetmap-carto.style` or `project.mml` change, this is the 2 input files for detecting osm keys

### HOW to run:
*  from the project directory:  `python3 scripts/taginfo-project/generate-taginfo-project-file.py`
*  output:
    *  `taginfo-openstreetmap-carto.json`  file
### With verbose mode and different file output
* `python3 ./scripts/taginfo-project/generate-taginfo-project-file.py -o ./new_carto_taginfo.json -v`


### Known limitations
* Only a small subset of [hstore operators](https://www.postgresql.org/docs/10/static/hstore.html#HSTORE-OP-TABLE) is parsed from the  `../../project.mml`
* Be carefull with the SQL comments or use as a simple hack:  ` /* tags->'wetland' */ `
* This code tested only on Ubuntu Linux
* Check the result!

### Valid examples for parsing
* `tags ? 'wetland'"`
* `tags @> '"generator:source"=>wind'`
* `tags @> 'capital=>yes'"]`
* `tags -> 'leaf_type'`
* `tags -> ARRAY['wheelchair',ramp:wheelchair']`
* `tags ?& ARRAY['wheelchair',ramp:wheelchair']`
* `tags ?| ARRAY['wheelchair',ramp:wheelchair']`

### How to debug:
The taginfo project_list file should contain a link to this repo ( `taginfo-openstreetmap-carto.json` )
* https://github.com/taginfo/taginfo-projects/blob/master/project_list.txt

the expected line:
*  openstreetmap-carto  https://raw.githubusercontent.com/gravitystorm/openstreetmap-carto/master/taginfo-openstreetmap-carto.json

After the daily refresh the project info should be find here:
* https://taginfo.openstreetmap.org/projects/openstreetmap-carto

### Command line parameters
```
$ python3 scripts/taginfo-project/generate-taginfo-project-file.py -h

usage: generate-taginfo-project-file.py [-h] [-v]
                                        [--osm2pgsql_file OSM2PGSQL_FILE]
                                        [--cartocss_project_file CARTOCSS_PROJECT_FILE]
                                        [--taginfo_project_file TAGINFO_PROJECT_FILE]
                                        [--project_name PROJECT_NAME]
                                        [--project_description PROJECT_DESCRIPTION]
                                        [--project_url PROJECT_URL]
                                        [--contact_name CONTACT_NAME]
                                        [--contact_email CONTACT_EMAIL]
                                        [--search_url SEARCH_URL]

optional arguments:
  -h, --help            show this help message and exit
  -v, --verbose         Print debug info
  --osm2pgsql_file OSM2PGSQL_FILE
                        osm2pgsql config file
  --cartocss_project_file CARTOCSS_PROJECT_FILE
                        project cartocss yml file
  --taginfo_project_file TAGINFO_PROJECT_FILE, -o TAGINFO_PROJECT_FILE
                        output taginfo json file
  --project_name PROJECT_NAME
                        taginfo project name
  --project_description PROJECT_DESCRIPTION
                        taginfo project description
  --project_url PROJECT_URL
                        taginfo project url
  --contact_name CONTACT_NAME
                        taginfo project - contact name
  --contact_email CONTACT_EMAIL
                        taginfo project - contact_email
  --search_url SEARCH_URL
                        taginfo project - search_url for every keys
```

### Disclaimer and Attribution : This code is based on
* Paul Norman code : https://github.com/osmlab/osm2pgsql_taginfo
* Sven Geggus code : https://github.com/giggls/openstreetmap-carto-de/blob/master/views_osmde/generate_taginfo.py

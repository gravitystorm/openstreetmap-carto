MAPNIK_API = $(shell mapnik-config -v)

osm-de.xml: *.mss project-de.mml
	# use this is for newer versions of carto
	carto -a $(MAPNIK_API) project-de.mml > $@
	# for older versions use this
	#carto project-de.mml > $@

project-de.yaml: project.yaml
	scripts/replace_table_and_database_names project.yaml >project-de.yaml
	
project-de.mml: project-de.yaml
	scripts/yaml2mml.py --yaml project-de.yaml --check >project-de.mml

clean:
	rm -f project-de.* osm-de.xml
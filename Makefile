MAPNIK_API = $(shell mapnik-config -v)

TEMPFILE := $(shell mktemp -u)

osm-de.xml: *.mss project-de.mml
	carto -a $(MAPNIK_API) project-de.mml > $(TEMPFILE)
	mv $(TEMPFILE) $@

project-de.yaml: project.yaml
	scripts/replace_table_and_database_names project.yaml >project-de.yaml
	
project-de.mml: project-de.yaml *.mss
	scripts/yaml2mml.py --yaml project-de.yaml --check >project-de.mml

clean:
	rm -f project-de.* osm-de.xml
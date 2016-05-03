osm-de.xml: *.mss project-de.mml
	carto project-de.mml > $@

project-de.yaml: project.yaml
	scripts/replace_table_and_database_names project.yaml >project-de.yaml
	
project-de.mml: project-de.yaml
	scripts/yaml2mml.py --yaml project-de.yaml --check >project-de.mml

clean:
	rm -f project-de.* osm-de.xml
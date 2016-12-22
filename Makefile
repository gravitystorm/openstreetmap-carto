MAPNIK_API = $(shell mapnik-config -v)

TEMPFILE := $(shell mktemp -u)

osm-de.xml: *.mss project.mml
	carto -a $(MAPNIK_API) project.mml > $(TEMPFILE)
	mv $(TEMPFILE) $@

preview-de.png: osm-de.xml
	nik2img.py osm-de.xml -d 850 300 -z 15 -c 11.625 48.106  -fPNG --no-open $@

clean:
	rm -f project-de.* osm-de.xml

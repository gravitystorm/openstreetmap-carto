MAPNIK_API = $(shell mapnik-config -v)

TEMPFILE := $(shell mktemp -u)

osm-de.xml: *.mss project.mml
	carto -a $(MAPNIK_API) project.mml > $(TEMPFILE)
	mv $(TEMPFILE) $@

preview-de.png: osm-de.xml
	nik2img.py osm-de.xml -d 850 300 -z 15 -c 11.625 48.106  -fPNG --no-open $@

# This target will render one single tile in every zoomlevel
# to ensure successful merges from upstream
test: test-z03.png test-z04.png test-z05.png test-z06.png test-z07.png test-z08.png test-z09.png \
	test-z10.png test-z11.png test-z12.png test-z13.png test-z14.png test-z15.png test-z16.png \
	test-z17.png test-z18.png test-z19.png
	display test-*.png

test-z03.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z03.png -u /3/3/2.png

test-z04.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z04.png -u /4/7/4.png

test-z05.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z05.png -u /5/15/10.png
	
test-z06.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z06.png -u /6/33/20.png

test-z07.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z07.png -u /7/66/43.png

test-z08.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z08.png -u /8/133/87.png

test-z09.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z09.png -u /9/267/175.png

test-z10.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z10.png -u /10/535/351.png

test-z11.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z11.png -u /11/1071/703.png

test-z12.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z12.png -u /12/2143/1406.png

test-z13.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z13.png -u /13/4287/2812.png
	
test-z14.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z14.png -u /14/8576/5626.png

test-z15.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z15.png -u /15/17153/11252.png

test-z16.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z16.png -u /16/34306/22505.png

test-z17.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z17.png -u /17/68612/45011.png
	
test-z18.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z18.png -u /18/137225/90022.pn
	
test-z19.png: osm-de.xml
	render_single_tile.py -s osm-de.xml -o test-z19.png -u /19/274450/180045.png

clean:
	rm -f project-de.* osm-de.xml test-*.png

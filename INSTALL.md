# Installation

You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](https://github.com/gravitystorm/openstreetmap-carto#dependencies)). These stylesheets currently work only with the osm2pgsql defaults (i.e. database name is `gis`, table names are `planet_osm_point`, etc).

It's probably easiest to grab an PBF of OSM data from [Mapzen](https://mapzen.com/metro-extracts/) or [geofabrik](http://download.geofabrik.de/). Once you've set up your PostGIS database, import with osm2pgsql:

```
osm2pgsql -d gis ~/path/to/data.osm.pbf --style openstreetmap-carto.style
```

You can find a more detailed guide to setting up a database and loading data with osm2pgsql at [switch2osm.org](http://switch2osm.org/loading-osm-data/).

Additionally you need some shapefiles.

## Scripted download

To download the shapefiles you can run the following script from this directory. No further steps should be needed as the data has been processed and placed in the requisite directories.

```
./get-shapefiles.sh
```

## Manual download

You can also download them manually at the following paths:

* [`simplified-land-polygons.shp`](http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip) (updated daily)
* [`land-polygon.shp`](http://data.openstreetmapdata.com/land-polygons-split-3857.zip) (updated daily)
* [`builtup_area.shp`](http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz)
* [`ne_110m_admin_0_boundary_lines_land.shp`](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip)
* [`ne_10m_populated_places_fixed.shp`](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip) (and see [below](#populated-places-shapefile))

The repeated www.naturalearthdata.com in the Natural Earth shapefiles is correct.

Put these shapefiles at `path/to/openstreetmap-carto/data`.

### Populated places shapefile

The Natural Earth 2.0 populated places shapefile contains data that triggers a bug in mapnik. As
a workaround we run the shapefile through ogr2ogr to clean up the data.

```
ogr2ogr ne_10m_populated_places_fixed.shp ne_10m_populated_places.shp
```

See https://github.com/mapnik/mapnik/issues/1605 for more details.

## Fonts
The stylesheet depends on a number of openly licensed fonts for support of all the languages found on the map. The package which supplies these fonts on Ubuntu is indicated.

If a font is missing, it will skip to the next available font which contains those characters. If you are not concerned with a particular language, you do not need its fonts. DejaVu Sans and Unifont are the two required fonts, and included on most systems.

### Global
* DejaVu Sans, for most languages (`ttf-dejavu`)
* Droid Sans Fallback, as a reasonable fallback (`fonts-droid`)
* Unifont, as a last resort fallback (`ttf-unifont`)

### Southeast Asia
* Arundina Sans, for Thai (`fonts-sipa-arundina`)
* Padauk, for Burmese (`fonts-sil-padauk`)
* Khmer OS Metal Chrieng Regular, for Khmer (`fonts-khmeros`)

### South Asia

* Mukti Narrow, for Bangali (`ttf-indic-fonts-core`)
* Gargi Medium, for Devanagari (`ttf-indic-fonts-core`)
* TSCu_Paranar, for Tamil (`ttf-tamil-fonts`)
* Mallige, for Kannada (`ttf-indic-fonts-core` for normal and bold and `ttf-kannada-fonts` for oblique) *The filename uses "Malige" but the font name uses "Mallige"*

On Ubuntu you can install all the fonts with

```
sudo apt-get install ttf-dejavu fonts-droid ttf-unifont fonts-sipa-arundina fonts-sil-padauk fonts-khmeros \
ttf-indic-fonts-core ttf-tamil-fonts ttf-kannada-fonts
```

## Dependencies

* [TileMill](http://mapbox.com/tilemill) - This is a TileMill project you can copy (or symlink) directly into your Mapbox/project directory

If you aren't using TileMill, you can compile the CartoCSS stylesheets into Mapnik XML using the command-line `carto` command.

* [carto](https://github.com/mapbox/carto) >= 0.9.3 (we're using instances with cascading rules)
* [mapnik](https://github.com/mapnik/mapnik/wiki/Mapnik-Installation) >= 2.1.0

---

* [osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql) to import your data into a PostGIS database
* [PostgreSQL](http://www.postgresql.org/)
* [PostGIS](http://postgis.org/)
* [ogr2ogr](http://www.gdal.org/) command line GDAL utility for processing vector data. here we use it to work around a encoding bug in the Nautral Earth data.
* curl, unzip for downloading and decompressing files
* shapeindex (a companion utility to Mapnik found in the mapnik-utils package) for indexing downloaded shapefiles

* [PyYAML](http://pyyaml.org/wiki/PyYAML) if editing the MML (layer definition) file (packaged as `python-yaml` on Ubuntu, or installed with `pip install pyyaml`)

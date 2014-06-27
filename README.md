# OpenStreetMap Carto

An implemention of the standard OpenStreetMap mapnik style, in CartoCSS.

These stylesheets can be used in your own cartography projects, and are designed to be easily
customised. They work with [TileMill](http://www.mapbox.com/tilemill/) and also with the command-line [CartoCSS](https://github.com/mapbox/carto) processor.

Since August 2013 these stylesheets are used on the OSMF tileservers (tile.openstreetmap.org), and
are updated from each point release. They supersede the previous [XML-based stylesheets](https://trac.openstreetmap.org/browser/subversion/applications/rendering/mapnik)

# Setup

You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](https://github.com/gravitystorm/openstreetmap-carto#dependencies)). These stylesheets currently work only with the osm2pgsql defaults (i.e. database name is 'gis', table names are 'planet_osm_point' etc).

It's probably easiest to grab an PBF of OSM data from [metro.teczno.com](http://metro.teczno.com/) or [geofabrik](http://download.geofabrik.de/). Once you've [set up your PostGIS database](http://switch2osm.org/loading-osm-data/), import with osm2pgsql:

```
osm2pgsql -d gis ~/path/to/data.osm.pbf --style openstreetmap-carto.style
```

Additionally you need some shapefiles.

## Scripted download

To download the shapefiles you can run the following script from this directory. No further steps should be needed as the data has been processed and placed in the requisite directories.

```
./get-shapefiles.sh
```

## Manual download

You can also download them manually at the following paths:

* `simplified-land-polygons.shp` [download](http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip)
* `land-polygon.shp` [download](http://data.openstreetmapdata.com/land-polygons-split-3857.zip)
* `builtup_area.shp` [download](http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz) 
* `ne_110m_admin_0_boundary_lines_land.shp` [download](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip)
* `ne_10m_populated_places_fixed.shp` [download](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip) (and see below)

Put these shapefiles at path/to/opentreetmap-carto/data

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
* DejaVu Sans, for most languages (``ttf-dejavu``)
* Droid Sans Fallback, as a reasonable fallback (``fonts-droid``)
* Unifont, as a last resort fallback (``ttf-unifont``)

### Southeast Asia
* Arundina Sans, for Thai (``fonts-sipa-arundina``)
* Padauk, for Burmese (``fonts-sil-padauk``)
* Khmer OS Metal Chrieng Regular, for Khmer (``fonts-khmeros``)

### South Asia

* Mukti Narrow, for Bangali (``ttf-indic-fonts-core``)
* Gargi Medium, for Devanagari (``ttf-indic-fonts-core``)
* TSCu_Paranar, for Tamil (``ttf-tamil-fonts``)
* Mallige, for Kannada (``ttf-indic-fonts-core`` for normal and bold and ``ttf-kannada-fonts`` for oblique) *The filename uses "Malige" but the font name uses "Mallige"*

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

# Roadmap

## Initial Release (v1.0.0, December 2012)

This was a full re-implementation of the original OSM style, with only a few bugs discovered later. There's been
no interest in creating further point releases in the v1.x series.

## Easier to wrangle (v2.x)

There are a number of refactorings that can be made to the style, either to fix glitches
with the current style, or to leverage new features in carto / mapnik to simplify the stylesheets
with only small changes to the output. It's also appropriate to pull out some of the 'old-skool'
tagging methods that are now rarely used.

Care is being taken to not get too clever with variables and expressions. While these often make
it easier to customise, experience has shown that over-cleverness (e.g. [interpolated entities][cleverness])
can discourage contributions.

The end goal will be a style that hews close to the current look of the standard style, but is
much more suitable for further development, and/or forking for third-parties to customise.

## Tackle the backlog (v3.x)

There are over [400 open requests][trac] on trac, some that have been open for years. These need
reviewing and dividing into obvious fixes, or additional new features that need some cartographic
judgement. The work done already in v1.0 and v2.0 will make it much easier to process these.

# CartoCSS Style Guidelines

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after = etc
* Two space indents. No tabs.
* space after : but not before
* Dashes, not underscores, in layer names
* Name SQL subqueries after the layer name (but use underscores)
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`
* Avoid repeating the layer name for layers with mutiple attachments, i.e., prefer

```
#layer {
  ::outline {
    line-width: 6;
    line-color: black;
  }
  ::inline {
    line-width: 2;
    line-color: white;
  }
}
```
instead of

```
#layer::outline {
    line-width: 6;
    line-color: black;
}
#layer::inline {
    line-width: 2;
    line-color: white;
}
```
* Order the selectors in a style-sheet in rough order of importance (i.e., highway=primary, then highway=secondary) and beyond that, add layers that are rendered later (i.e., higher) lower in the file.

[trac]: https://trac.openstreetmap.org/query?component=mapnik&status=!closed&order=changetime&desc=1&max=500
[cleverness]: https://github.com/openstreetmap/mapnik-stylesheets/blob/master/inc/settings.xml.inc.template#L16

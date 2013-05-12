# OpenStreetMap Carto

A project to re-implement the standard OpenStreetMap mapnik style, in CartoCSS

# Setup

You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](https://github.com/gravitystorm/openstreetmap-carto#dependencies)). These stylesheets currently work only with the osm2pgsql defaults (i.e. database name is 'gis', table names are 'planet_osm_point' etc).

It's probably easiest to grab an PBF of OSM data from [metro.teczno.com](http://metro.teczno.com/) or [geofabrik](http://download.geofabrik.de/). Once you've set up your PostGIS database, import with osm2pgsql:

```
osm2pgsql -d gis ~/path/to/data.osm.pbf
```

Additionally you need some shapefiles.

## Scripted download

To download the shapefiles you can run the following script from this directory. No further steps should be needed as the data has been processed and placed in the requisite directories.

```
sh get-shapefiles.sh
```

## Manual download

You can also download them manually at the following paths:

* `shoreline_300.shp` [download](http://tile.openstreetmap.org/shoreline_300.tar.bz2)
* `processed_p.shp` [download](http://tile.openstreetmap.org/processed_p.tar.bz2)
* `builtup_area.shp` [download](http://tile.openstreetmap.org/world_boundaries-spherical.tgz)
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

## Dependencies

* [TileMill](http://mapbox.com/tilemill) - This is a TileMill project you can copy (or symlink) directly into your Mapbox/project directory

If you aren't using TileMill, you can compile the CartoCSS stylesheets into Mapnik XML using the command-line `carto` command.

* [carto](https://github.com/mapbox/carto) >= 0.9.3 (we're using instances with cascading rules)
* [mapnik](https://github.com/mapnik/mapnik/wiki/Mapnik-Installation) >= 2.0.0 (we might move to 2.1 in the near term

---

* [osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql) to import your data into a PostGIS database
* [PostgreSQL](http://www.postgresql.org/)
* [PostGIS](http://postgis.org/)
* [ogr2ogr](http://www.gdal.org/) command line GDAL utility for processing vector data. here we use it to work around a encoding bug in the Nautral Earth data.
* unzip for decompressing downloaded files

# Roadmap

## Initial Release (v1.0)

This will be the full re-implementation of the OSM style. At this point development will
branch - any bugfixes or features that didn't make 1.0 will appear in the 1.x series.

## Easier to wrangle (v2.0)

There are a number of refactorings that can be made to the style, either to fix glitches
with the current style, or to leverage new features in carto / mapnik to simplify the stylesheets
with only small changes to the output. It's also appropriate to pull out some of the 'old-skool'
tagging methods that are now rarely used.

Care will be taken to not get too clever with variables and expressions. While these often make
it easier to customise, experience has shown that over-cleverness (e.g. [interpolated entities][cleverness])
can discourage contributions.

The end goal will be a style that hews close to the current look of the standard style, but is
much more suitable for further development, and/or forking for third-parties to customise.

## Tackle the backlog (v3.0)

There are over [400 open requests][trac] on trac, some that have been open for years. These need
reviewing and dividing into obvious fixes, or additional new features that need some cartographic
judgement. The work done in v1.0 and v2.0 will make it much easier to process these.

# Notes on conversion

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after =  etc
* Two space indents. No tabs.
* space after : but no before
* If there is a `&minscale_zoom18;`, ignore it. These really mess up any attempts to run the style at z19
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`

[trac]: https://trac.openstreetmap.org/query?component=mapnik&status=!closed&order=changetime&desc=1&max=500
[cleverness]: https://github.com/openstreetmap/mapnik-stylesheets/blob/master/inc/settings.xml.inc.template#L16

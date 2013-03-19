# OpenStreetMap "FR" Carto

Une adaptation "french-style" de la ré-implémentation CartoCSS du style Mapnik d'OpenStreetMap

Le résultat est visible sur: http://tile.openstreetmap.fr/

A project to re-implement the standard OpenStreetMap mapnik style, in CartoCSS... with "french-style" modifications.


# Bugs ?

https://trac.openstreetmap.fr/query?status=accepted&status=assigned&status=new&status=reopened&component=style+osmfr&max=500&desc=1&order=changetime


# Changements par rapport au setup d'origine

Le nom de la base est 'osm', utilisateur 'fr'.
Les requêtes SQL utilisent les hstore pour récupérer certaines données, pensez à les inclure dans votre import osm2pgsql.
C'est Mapnik 2.1 qui est utilisé avec postgresql 9.1 et postgis 2.0.

Le reste du readme ci-dessous est inchangé par rapport au projet https://github.com/gravitystorm/openstreetmap-carto

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

* [TileMill](mapbox.com/tilemill) - This is a TileMill project you can copy (or symlink) directly into your Mapbox/project directory

If you aren't using TileMill, you can compile the CartoCSS stylesheets into Mapnik XML using the command-line `carto` command.

* [carto](https://github.com/mapbox/carto) >= 0.9.3 (we're using instances with cascading rules)
* [mapnik](https://github.com/mapnik/mapnik/wiki/Mapnik-Installation) >= 2.1

---

* [osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql) to import you data into a PostGIS database
* [PostgreSQL](http://www.postgresql.org/)
* [PostGIS](http://postgis.refractions.net/)
* [ogr2ogr](http://www.gdal.org/) command line GDAL utility for processing vector data. here we use it to work around a encoding bug in the Nautral Earth data.

# Notes on conversion

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after =  etc
* Two space indents. No tabs.
* space after : but no before
* If there is a `&minscale_zoom18;`, ignore it. These really mess up any attempts to run the style at z19
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`


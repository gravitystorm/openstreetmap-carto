# Installation

## Operating systems

Linux (Ubuntu) is the preferred OS to install and run the development environment. Commands in this page mostly refer to Linux.

Anyway, [TILEMILL.md](TILEMILL.md) reports a step-by-step guide to install and manage openstreetmap-carto under Windows through Tilemill.

## OpenStreetMap data
You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](#dependencies)). These stylesheets expect a database generated with osm2pgsql using the pgsql backend (table names of `planet_osm_point`, etc), the default database name (`gis`), and the [lua transforms](https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md) documented in the instructions below.

Start by setting up your database to have PostGIS and hstore with ``psql -d gis -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;'``, then grab some OSM data. It's probably easiest to grab an PBF of OSM data from [Mapzen](https://mapzen.com/metro-extracts/) or [geofabrik](http://download.geofabrik.de/). Once you've done that, import with osm2pgsql:

```
osm2pgsql -G --hstore --style openstreetmap-carto.style --tag-transform-script openstreetmap-carto.lua -d gis ~/path/to/data.osm.pbf
```

You can find a more detailed guide to setting up a database and loading data with osm2pgsql at [switch2osm.org](http://switch2osm.org/loading-osm-data/).

### Custom indexes
Custom indexes are not required, but will speed up rendering, particularly for full planet databases, heavy load, or other production environments. They will not be as helpful with development using small extracts.

```
psql -d gis -f indexes.sql
```

Additionally you need some shapefiles.

## Scripted download
To download the shapefiles you can run the following script. No further steps should be needed as the data has been processed and placed in the requisite directories.

```
scripts/get-shapefiles.py
```

This script generates and populates the *data* directory with all needed shapefiles, including indexing them through *shapeindex*.

## Manual download

You can also download them manually at the following paths:

* [`simplified-land-polygons.shp`](http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip) (updated daily)
* [`land-polygon.shp`](http://data.openstreetmapdata.com/land-polygons-split-3857.zip) (updated daily)
* [`builtup_area.shp`](http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz)
* [`ne_110m_admin_0_boundary_lines_land.shp`](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip)

The repeated www.naturalearthdata.com in the Natural Earth shapefiles is correct.

Put these shapefiles at `path/to/openstreetmap-carto/data`.

## Fonts
The stylesheet uses Noto, an openly licensed font family from Google with support for multiple scripts. The stylesheet uses Noto's "Sans" style where available. If not available, this stylesheet uses another appropriate style of the Noto family. The "UI" version is used where available, with its vertical metrics which fit better with Latin text.

DejaVu Sans is used as an optional fallback font for systems without Noto Sans. If all the Noto fonts are installed, it should never be used.

Hanazono is used a fallback for seldom used CJK characters that are not covered by Noto.

Unifont is used as a last resort fallback, with it's excellent coverage, common presence on machines, and ugly look.

### Installation on Ubuntu/Debian

On Ubuntu 16.04 or Debian Testing you can download and install the required fonts except Noto Emoji Regular with

```
sudo apt-get install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
```

Noto Emoji Regular can be downloaded [from the Noto Emoji repository](https://github.com/googlei18n/noto-emoji).

It might be useful to have a more recent version of the fonts for [rare non-latin scripts](#non-latin-scripts). This can be installed [from source](https://github.com/googlei18n/noto-fonts/blob/master/FAQ.md#where-are-the-fonts).

DejaVu is packaged as `fonts-dejavu-core`.

### Installation on other operation systems

The fonts can be downloaded here:

* [Noto homepage](http://www.google.com/get/noto/) and [Noto github repositories](http://github.com/googlei18n?utf8=%E2%9C%93&q=noto)
* [DejaVu homepage](http://dejavu-fonts.org/)
* [Hanazono homepage](http://fonts.jp/hanazono/)
* [Unifont homepage](http://unifoundry.com/)

After the download, you have to install the font files in the usual way of your operation system.

### Non-latin scripts

For proper rendering of non-latin scripts, particularly those with complicated diacritics and tone marks the requirements are

* FreeType 2.6.2 or later for CJK characters

* A recent enough version of Noto with coverage for the scripts needed.

## Dependencies

For development, a style design studio is needed.
* [Kosmtik](https://github.com/kosmtik/kosmtik) - Kosmtik can be launched with `node index.js serve path/to/openstreetmap-carto/project.mml`

[TileMill](http://mapbox.com/tilemill) is not officially supported, but you may be able to use a recent TileMill version by copying or simlinking the project directly into your Mapbox/project directory.

For deployment, CartoCSS and Mapnik are required.

* [CartoCSS](https://github.com/mapbox/carto) >= 0.18.0 (we're using YAML)
* [Mapnik](https://github.com/mapnik/mapnik/wiki/Mapnik-Installation) >= 3.0

Remember to run CartoCSS with proper API version to avoid errors (at least 3.0.0: `carto -a "3.0.0"`).

---

For both development and deployment, a database and some utilities are required

* [osm2pgsql](http://wiki.openstreetmap.org/wiki/Osm2pgsql) to [import your data](https://switch2osm.org/loading-osm-data/) into a PostGIS database
* [PostgreSQL](http://www.postgresql.org/)
* [PostGIS](http://postgis.org/)
* `curl` and `unzip` for downloading and decompressing files
* shapeindex (a companion utility to Mapnik found in the mapnik-utils package) for indexing downloaded shapefiles

### Development dependencies

Some colours, SVGs and other files are generated with helper scripts. Not all users will need these dependencies

* Python and Ruby to run helper scripts
* [Color Math](https://github.com/gtaylor/python-colormath) and [numpy](http://www.numpy.org/) if running generate_road_colors.py helper script (may be obtained with `pip install colormath numpy`)

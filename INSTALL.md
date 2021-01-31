# Installation

This document describes how to manually configure your system for running OpenStreetMap Carto. If you prefer quick, platform independent setup for a development environment, without the need to install and configure tools by hand, follow a Docker installation guide in [DOCKER.md](https://github.com/gravitystorm/openstreetmap-carto/blob/master/DOCKER.md).

## OpenStreetMap data
You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](#dependencies)). These stylesheets expect a database generated with osm2pgsql using the pgsql backend (table names of `planet_osm_point`, etc), the default database name (`gis`), and the [lua transforms](https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md) documented in the instructions below.

Start by creating a database

```
sudo -u postgres createuser -s $USER
createdb gis
```

Enable PostGIS and hstore extensions with

```
psql -d gis -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;'
```

then grab some OSM data. It's probably easiest to grab an PBF of OSM data from [Geofabrik](https://download.geofabrik.de/). Once you've done that, import with osm2pgsql:

```
osm2pgsql -G --hstore --style openstreetmap-carto.style --tag-transform-script openstreetmap-carto.lua -d gis ~/path/to/data.osm.pbf
```

You can find a more detailed guide to setting up a database and loading data with osm2pgsql at [switch2osm.org](https://switch2osm.org/manually-building-a-tile-server-16-04-2-lts/).

### Custom indexes
Custom indexes are required for rendering performance and are essential on full planet databases.

```
psql -d gis -f indexes.sql
```

## Scripted download
Some features are rendered using preprocessed shapefiles.

To download them and import them into the database you can run the following script

```
scripts/get-external-data.py
```

The script downloads shapefiles, loads them into the database and sets up the tables for rendering. Additional script option documentation can be seen with `scripts/get-external-data.py --help`.

## Fonts
The stylesheet uses Noto, an openly licensed font family from Google with support for multiple scripts. The stylesheet uses Noto's "Sans" style where available. If not available, this stylesheet uses another appropriate style of the Noto family. The "UI" version is used where available, with its vertical metrics which fit better with Latin text.

DejaVu Sans is used as an optional fallback font for systems without Noto Sans. If all the Noto fonts are installed, it should never be used. Noto Naskh Arabic UI is used an an optional fallback font for systems without Noto Sans Arabic.

Hanazono is used a fallback for seldom used CJK characters that are not covered by Noto.

Unifont is used as a last resort fallback, with it's excellent coverage, common presence on machines, and ugly look. For compatibility reasons, we support two Linux-distributions-specific versions of Unifont, therefor it's expected that you *always* get a warning about a missing Unifont version.

If you do not install all the fonts, the rendering itself will not break, but missing glyphs will be ugly.

For more details, see the documentation at [fonts.mss](style/fonts.mss).

### Installation on Ubuntu/Debian

On Ubuntu 16.04 or Debian Testing you can download and install most of the required fonts

```
sudo apt-get install fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted fonts-hanazono ttf-unifont
```

Noto Emoji Regular (*not* Noto Color Emoji) can be downloaded [from the Noto Emoji repository](https://github.com/googlei18n/noto-emoji).

It might be useful to have a more recent version of the fonts for [rare non-latin scripts](#non-latin-scripts). The current upstream font release has also some more scripts and style variants than in the Ubuntu package. It can be installed [from source](https://github.com/googlei18n/noto-fonts/blob/master/FAQ.md#where-are-the-fonts).

DejaVu is packaged as `fonts-dejavu-core`.

### Installation on other operating systems

The fonts can be downloaded here:

* [Noto homepage](https://www.google.com/get/noto/) and [Noto github repositories](https://github.com/googlei18n?utf8=%E2%9C%93&q=noto)
* [DejaVu homepage](http://dejavu-fonts.org/)
* [Hanazono homepage](http://fonts.jp/hanazono/)
* [Unifont homepage](http://unifoundry.com/)

After the download, you have to install the font files in the usual way of your operating system.

### Non-latin scripts

For proper rendering of non-latin scripts, particularly those with complicated diacritics and tone marks the requirements are

* FreeType 2.6.2 or later for CJK characters

* A recent enough version of Noto with coverage for the scripts needed.

## Dependencies

For development, a style design studio is needed.
* [Kosmtik](https://github.com/kosmtik/kosmtik) - Kosmtik can be launched with `node index.js serve path/to/openstreetmap-carto/project.mml`

[TileMill](https://tilemill-project.github.io/tilemill/) is not officially supported, but you may be able to use a recent TileMill version by copying or symlinking the project directly into your Mapbox/project directory.

To display any map a database containing OpenStreetMap data and some utilities are required

* [PostgreSQL](https://www.postgresql.org/)
* [PostGIS](https://postgis.net/)
* [osm2pgsql](https://github.com/openstreetmap/osm2pgsql#installing) to [import your data](https://switch2osm.org/loading-osm-data/) into a PostGIS database
* Python 3 with the psycopg2, yaml, and requests libraries (`python3-psycopg2` `python3-yaml` `python3-requests` packages on Debian-derived systems)
* `ogr2ogr` for loading shapefiles into the database (`gdal-bin` on Debian-derived systems)

### Optional development dependencies

Some colours, SVGs and other files are generated with helper scripts. Not all users will need these dependencies

* Python and Ruby to run helper scripts
* [Color Math](https://github.com/gtaylor/python-colormath) and [numpy](http://www.numpy.org/) if running generate_road_colors.py helper script (may be obtained with `pip install colormath numpy`)

### Additional deployment dependencies

For deployment, CartoCSS and Mapnik are required.

* [CartoCSS](https://github.com/mapbox/carto) >= 0.18.0 (we're using YAML)
* [Mapnik](https://github.com/mapnik/mapnik/wiki/Mapnik-Installation) >= 3.0

With CartoCSS you compile these sources into a Mapnik compatible XML file. When running CartoCSS, specify the Mapnik API version you are using (at least 3.0.0: `carto -a "3.0.0"`).

If you're calling Mapnik in your own program, remember to load the XML file in non strict mode. This way, fonts declared with alternative names will only generate warnings, not errors. For instance, using the Python bindings, this becomes:

```python
mapnik.load_map(mapnik.Map(width, height), xml_filename, False)  # False for non-strict mode
```

# OpenStreetMap Carto

![screenshot](https://raw.github.com/gravitystorm/openstreetmap-carto/master/preview.png)

These are the CartoCSS map stylesheets for the Standard map layer on [OpenStreetMap.org](http://www.openstreetmap.org).

These stylesheets can be used in your own cartography projects, and are designed
to be easily customised. They work with [Kosmtik](https://github.com/kosmtik/kosmtik),
[TileMill](http://www.mapbox.com/tilemill/) and also with the command-line
[CartoCSS](https://github.com/mapbox/carto) processor.

Since August 2013 these stylesheets have been used on the OSMF tileservers (tile.openstreetmap.org), and
are updated from each point release. They supersede the previous [XML-based stylesheets](https://github.com/openstreetmap/mapnik-stylesheets).

# Installation

You need a PostGIS database populated with OpenStreetMap data in the standard
osm2pgsql database layout, along with auxillary shapefiles. See [INSTALL.md](INSTALL.md).

# Contributing

Contributions to this project are welcome, see [CONTRIBUTING.md](CONTRIBUTING.md)
for full details.

# Versioning

This project follows a MAJOR.MINOR.PATCH versioning system. In the context of a
cartographic project you can expect the following:

* PATCH: When a patch version is released, there would be no reason not to
  upgrade. PATCH versions contain only bugfixes e.g. stylesheets won't compile,
  features are missing by mistake, etc.
* MINOR: These are routine releases and happen every 2-5 weeks. They will
  contain changes to what's shown on the map, how they appear, new features
  added and old features removed. They may rarely contain changes to assets i.e.
  shapefiles and fonts but will not contain changes that require software or
  database upgrades.
* MAJOR: Any change the requires reloading a database, or upgrading software
  dependecies will trigger a major version change.

# Roadmap

## Initial Release (v1.0.0, December 2012)

This was a full re-implementation of the original OSM style, with only a few bugs discovered later. There's been
no interest in creating further point releases in the v1.x series.

## Current work (v2.x)

The v2.x series initially focused on refactoring the style, both to to fix
glitches and to leverage new features in CartoCSS / Mapnik to simplify the
stylesheets with only small changes to the output, as well as removing 'old-skool'
tagging methods that are now rarely used.

Care is being taken to not get too clever with variables and expressions. While
these often make it easier to customise, experience has shown that over-cleverness
(e.g. [interpolated entities][cleverness]) can discourage contributions.

There are over [300 open requests][issues], some that have been open for years.
These need reviewing and dividing into obvious fixes, or additional new features
that need some cartographic judgement.

[issues]: https://github.com/gravitystorm/openstreetmap-carto/issues
[cleverness]: https://github.com/openstreetmap/mapnik-stylesheets/blob/master/inc/settings.xml.inc.template#L16

# Alternatives

There are many open-source stylesheets written for creating OpenStreetMap-based
maps using Mapnik, many based on this project. Some alternatives are:

* [OSM-Bright](https://github.com/mapbox/osm-bright)
* [XML-based stylesheets](https://trac.openstreetmap.org/browser/subversion/applications/rendering/mapnik)
* [osmfr-cartocss](https://github.com/cquest/osmfr-cartocss)
* [openstreetmap-carto-german](https://github.com/woodpeck/openstreetmap-carto-german)

# Maintainers

* Andy Allan [@gravitystorm](https://github.com/gravitystorm/)
* Matthijs Melissen [@math1985](https://github.com/math1985/)
* Paul Norman [@pnorman](https://github.com/pnorman/)
* Mateusz Konieczny [@matkoniecz](https://github.com/matkoniecz/)

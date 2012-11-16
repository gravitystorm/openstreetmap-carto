# OpenStreetMap Carto

A project to re-implement the standard OpenStreetMap mapnik style, in CartoCSS

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

# Dependencies

* carto >= 0.9.3 (we're using instances with cascading rules)

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

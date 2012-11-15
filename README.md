# OpenStreetMap Carto

A project to re-implement the standard OpenStreetMap mapnik style, in CartoCSS

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
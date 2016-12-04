# OpenStreetMap Carto contribution guidelines

## Workflow

We operate the "Fork & Pull" model explained at

https://help.github.com/articles/using-pull-requests

You should fork the project into your own repo, create a topic branch
there and then make one or more pull requests back to the gravitystorm repository.
Your pull requests will then be reviewed and discussed.

## Reporting issues

As OpenStreetMap data is always changing, rendering bug reports should **always**
contain a cropped screenshot of the problem, and a link to the area. Don't assume
that we will see exactly what you see. If a particular OSM object is an issue,
the issue should contain the tagging of the object.

## Easy pickings

Some [easy issues](https://github.com/gravitystorm/openstreetmap-carto/issues?q=is%3Aopen+is%3Aissue+label%3Aeasy) have been selected
that are particularly suitable for new contributors to get familiar with the project's code base and the contribution process.

## Editing Layers

OpenStreetMap Carto uses a YAML file for defining layers, because it [works much
better for big projects](https://github.com/gravitystorm/openstreetmap-carto/issues/711).
This requires CartoCSS 0.16.0 or later. If you need JSON MML, you can generate it
with `python -c 'import sys, yaml, json; json.dump(yaml.safe_load(sys.stdin), sys.stdout)' < project.mml > project.json`
or the equivalent in a different language.

[Kosmtik](https://github.com/kosmtik/kosmtik) and CartoCSS can directly load the project from
the YAML file with `node index.js serve path/to/openstreetmap-carto/project.mml`

## CartoCSS Style Guidelines

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after = etc
* Two space indents. No tabs.
* space after : but not before
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`. Where
  Mapnik 2.x and 3.0 have different defaults, they should be stated
* Avoid repeating the layer name for layers with multiple attachments, i.e., prefer

```mss
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

```mss
#layer::outline {
    line-width: 6;
    line-color: black;
}
#layer::inline {
    line-width: 2;
    line-color: white;
}
```
* Order the selectors in a style-sheet in rough order of importance (i.e.,
  `highway=primary`, then `highway=secondary`) and beyond that, add layers that
  are rendered later (i.e., higher) lower in the file.
* For features where the symbolizer attributes change on different zoom levels,
  the main definition should be for the lowest zoom level. Also, avoid nesting
  zoom-based overrides. For example:

```
#layer[feature = 'foo'][zoom >= 13] {
  line-width: 6;
  line-color: black;
  [zoom >= 15] {
    line-width: 7;
  }
  [zoom >= 17] {
    line-width: 10;
  }
}
```
instead of
```
#layer[feature = 'foo'][zoom >= 13] {
  line-width: 10;
  line-color: black;
  [zoom < 18] {
    line-width: 7;
    [zoom < 16] {
      line-width: 6;
    }
  }
}
```

## SQL Style Guidelines
Because SQL within JSON or YAML will not generally be syntax highlighted, indentation and caps are particularly important.

* SQL keywords in caps, as in PostgreSQL documentation
* Two space indents. No tabs.
* Start with `(SELECT` and start the columns on the next line.
* Two indents for columns, to bring them to the same indent level as later clause contents
* Add indentation after `SELECT`s until the end of the sub-select.
* Add indentation for contents of `FROM`, `WHERE`, `ORDER BY` and other clauses
* Put content with WHERE, etc if it's short
* Add indentation if necessary for complex function calls, WHERE parenthesis, and CASE statements
* One space before and after = etc
* Name SQL subqueries after the layer name (but use underscores)

## Map Icon Guidelines

* All new icons must be SVG format only.  The SVG must be saved as standards compliant SVG without any proprietary tags. In Inkscape software, you will need to "Save As..." and choose the format Optimized SVG (preferable) or Plain SVG.
* Icons must use SVG fills only, not SVG strokes or any feature Mapnik does not support.
* Use no color for the icon's fill if the icon is monochromatic. This allows the color to be set in the MSS.
* Use a common canvas size, which is usually 14x14 px.
* Convert shapes and other components to paths and merge them into a compound path.
* Draw a simple siloutte of the subject with an "on the shelf" perspective.
* Align vectors to the pixel grid.
* Make a clean design, so reduced complexity where possible.

### External Icon Design Resources
The project's goals and design philsophy are different from other projects, but some external resources with general information about icon design are:

* [Maki Icons Design Guidelines](https://www.mapbox.com/maki-icons/guidelines/)
* [GNOME Icon Design Guildelines](https://developer.gnome.org/hig/stable/icons-and-artwork.html.en)

## Pull requests

Pull requests that change the cartography should contain a few images selected
to show the changes. The easiest way to make these is by taking screenshots and
cropping them, then pasting them into the issue. Avoid adding an overwhelming
number of screenshots.

The images are not intended to replace reviewing changes in Kosmtik or TileMill,
but to provide an overview.

### Previews

Some changes benefit from a review over a wider area and many zooms, where static
images might not be sufficient and a demo layer is necessary. pnorman has a server
 which can host layers and has some data from parts of the world loaded. Before
 requesting this in a pull request, make sure that it is in a stable condition.

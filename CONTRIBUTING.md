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

## Editing Layers

OpenStreetMap Carto uses a YAML file for defining layers. Some of the rationale
is outlined in [a GitHub issue](https://github.com/gravitystorm/openstreetmap-carto/issues/711).
Editing multi-line SQL statements in a YAML file is much friendlier than editing
escaped SQL in a JSON file.

The `./scripts/yaml2mml.py` script is provided to convert YAML to JSON, and
depends on PyYAML, available through `pip install pyyaml` or packaged on Ubuntu
as `python-yaml`.

[Kosmtik](https://github.com/kosmtik/kosmtik) can directly load the project from
the YAML file with `node index.js serve path/to/openstreetmap-carto/project.yaml`,
and the JSON file just needs updating before committing.

[TileMill](https://github.com/mapbox/tilemill) and Mapbox `carto` [do not directly support YAML](https://github.com/mapbox/carto/issues/401),
so make edits to the YAML file then run the preprocessing step of
`./scripts/yaml2mml.py && touch project.mml` to
update the file and force TileMill to reload it. You shouldn't use the text editor
built-in to TileMill, it doesn't work with the number of .mss files in the style.
Instead, hide the right pane and use an external text editor.

Before committing changes, run `./scripts/yaml2mml.py`
to update the JSON MML file and `git add project.mml`

When committing changes, add both the `project.yaml` and `project.mml` files to
the commit with `./scripts/yaml2mml.py && git add project.mml`.
One of the big advantages of this system is that to resolve any layer merge
conflicts, they only need to be resolved in the YAML file where they are easier
to handle, then the JSON file can be regenerated, while at the same time the
styles work with TileMill and carto out-of-the-box without needing to run the
`yaml2mml` script.

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

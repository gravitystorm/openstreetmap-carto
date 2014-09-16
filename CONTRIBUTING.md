# OpenStreetMap Carto contribution guidelines

## Workflow

We operate the "Fork & Pull" model explained at

https://help.github.com/articles/using-pull-requests

You should fork the project into your own repo, create a topic branch
there and then make one or more pull requests back to the gravitystorm repository.
Your pull requests will then be reviewed and discussed.

## Editing Layers

OpenStreetMap Carto uses a YAML file for defining layers. Some of the rationale is outlined in [a GitHub issue](https://github.com/gravitystorm/openstreetmap-carto/issues/711). Editing multi-line SQL statements in a YAML file is much friendlier than editing escaped SQL in a JSON file.

This requires a preprocessing step to convert the YAML to JSON. A script is provided at `scripts/yaml2mml.py`, which depends on PyYAML, available through `pip install pyyaml` or packaged on Ubuntu as `python-yaml`.

After editing the YAML file, run `./scripts/yaml2mml.py < project.yaml > project.mml && touch project.mml` to update the file and force TileMill to reload it.

When committing changes, add both the `project.yaml` and `project.mml` files to the commit. One of the big advantages of this system is that to resolve any layer merge conflicts, they only need to be resolved in the YAML file where they are easier to handle, then the JSON file can be regenerated, while at the same time the styles work with Tilemill out-of-the-box without needing to run the `yaml2mml` script.

## CartoCSS Style Guidelines

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after = etc
* Two space indents. No tabs.
* space after : but not before
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`
* Avoid repeating the layer name for layers with mutiple attachments, i.e., prefer

```css
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

```css
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

## Previews

Some changes benefit from a review from a wider audience. In most cases some static images are sufficient, but sometimes a demo layer is necessary. pnorman has a private server which can host layers and has some data from parts of the world loaded. Before requesting this in a pull request, make sure that you don't anticipate any more changes to it.

This does not replace reviewing your changes in Tilemill

# OpenStreetMap Carto contribution guidelines

## Workflow

We operate the "Fork & Pull" model explained at

https://help.github.com/articles/using-pull-requests

You should fork the project into your own repo, create a topic branch
there and then make one or more pull requests back to the gravitystorm repository.
Your pull requests will then be reviewed and discussed.

## CartoCSS Style Guidelines

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after = etc
* Two space indents. No tabs.
* space after : but not before
* Dashes, not underscores, in layer names
* Name SQL subqueries after the layer name (but use underscores)
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

## Previews

Some changes benefit from a review from a wider audience. In most cases some static images are sufficient, but sometimes a demo layer is necessary. pnorman has a private server which can host layers and has some data from parts of the world loaded. Before requesting this in a pull request, make sure that you don't anticipate any more changes to it.

This does not replace reviewing your changes in Tilemill

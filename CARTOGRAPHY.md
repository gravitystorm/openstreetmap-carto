# Cartography

This is a style that serves multiple purposes, so here are some guidelines when considering cartographic changes.

## Purposes

There are multiple primary purposes of the map style, which pull in different directions

* It's the primary feedback mechanism for mappers to validate their edits - so detail is useful
* It's a major part of the impression visitors to osm.org receive - so clear design is useful
* It's an examplar stylesheet for rendering OSM data - so easy customisation is useful

It must always be borne in mind that a map style cannot show every detail of the OSM data, and in many cases it is more appropriate to show the detail in other, more specialist styles.

## Colours

Firstly, this is a map, not merely a colourful 2-dimensional visualisation of the database. Colours should be chosen based on their effectiveness and to make things look nice, not chosen for distinctiveness.

The colour palette should be moving towards pastel/light/desaturated for background layers, midtones for streets and save highlights/bolds/saturated for points of interest. If colourspace can be left unused, that enables overlays for third parties.

Colour definitions should, where useful, be put into variables at the top of the file, to enable easier customisation.

## Data manipulation

OpenStreetMap data has to be manipulated for rendering, but since this style is intended for use by mappers to check their work, it should minimise any distortions. For example, line-smoothing improves the look of railways and rivers, but introduces confusion for mappers. Post processing of geometries can improve the cartographic results, but breaks the cause-and-effect between editing the data and seeing the results.

For similar reasons, use of external non-OSM data should be avoided.

## Legibility

I mean this not only in terms of font size, but in the ability of users to be able to "read" the map style. For example, a user might not be familiar with our exact road colours, but should be able to understand their relative importance via intensity of colour, width or other attributes. Important features should be more easily spotted and understood than less important information. It should be possible to gain an understanding of the majority of the map without using a legend.

## The Mapper Feedback Loop

If you thought that mappers were happy just to press "Save" on their editor, you'd be wrong. A key part of their feedback loop - to reassure them their work has been saved, and also to check that they have mapped 'correctly' - is waiting to see the results of their mapping on the main map layer on www.osm.org

While this desire is in obvious conflict with the above comments on level of detail, it has a second impact on the map style. We need to, wherever possible, avoid accidentally encouraging mistakes - that is, avoiding the situation where a clearly misspelled or misused tag leads to the originally expected result. So `highway=mtorway` shouldn't show up as if it was `highway=motorway`, and so on. This has been a problem with "catch-all" rules in queries and filters, such as `where leisure is not null` or `[amenity != ""]`. Avoid these situations.
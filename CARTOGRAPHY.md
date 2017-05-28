
# Design goals and guidelines for this style

This is an attempt to outline the goals of this style and the principles under 
which the maintainers make decisions. These rules are not set in stone, they 
can change and they may not be followed in all cases but contributors should 
be able to expect that they are generally the guiding principles design wise.

It does not make much sense to try following these principles blindly as a 
contributor without understanding them, they are meant to guide you to develop 
an intuition and understanding how to make design decisions to fit into the 
overall concept of this style.

## General purpose

This style has multiple purposes:

* It's an important feedback mechanism for mappers to validate their edits and 
  helps to prevent unfavorable fragmentation of tag use.
* It's a major part of the public face of OpenStreetMap, for many people the 
  map on osm.org rendered with this style _is_ OpenStreetMap.
* It's used in many map applications as a general purpose map.
* It's an exemplar stylesheet for rendering OSM data.

There is no ranking of these purposes. To allow serving all of them and to 
avoid satisfying only some at the cost of the others the following main goals 
have been identified.

## Main goals

The following goals need to be balanced against each other to serve the 
purposes above. There is no fixed order of priorities. Apart from these 
goals there are of course also technical constraints and requirements that 
need to be taken into account.

* **Legibility and clarity** - The map should be intuitively readable by users 
  with some general experience using maps without a map key, preferrably with 
  relatively little effort. A map key or more extensive experience using this 
  map style can be required for clearly identifying minor differences or the 
  exact meaning of certain features but in broad strokes orientation and 
  identification of map elements should be possible on an intuitive level. 
  We also aim for the map appearance to be esthetically pleasing.
* **Being understandable and supportive for mappers** - To serve as feedback 
  for mappers and encourage correct mapping this style needs to render the 
  data in a way that allows mappers to understand how the data produces a 
  certain rendering result based on basic observation without in depth 
  understanding how map rendering works or looking at the style 
  implementation.
* **Diversity** - The style should represent the diversity of the OSM 
  community and geography in general. The most obvious element to serve this 
  goal is showing the local names everywhere on earth in their respective 
  scripts. This goal however goes beyond labels. Both physical and cultural 
  geography differs a lot globally and the aim is to represent this variety 
  with equal determination - well mapped areas are not supposed to have more 
  weight here than less mapped parts of the world. This also means the target 
  map user is the potential global map user and no special consideration is 
  given to the current geographic distribution of actual map use.
* **A rich map** - This style deliberately creating a fairly rich map showing 
  a significant number of different features. This way it shows the richness 
  of OSM data and gives a broad recognition to the mappers' work. The aim is 
  not however to show all or even most of the OSM data.
* **Maintainability** - The implementation of this style should not be too 
  hard to maintain. This refers to both the volume and complexity of the code 
  and how fast the style can be parsed when rendering it, which is very 
  important for efficient development work. So the amount of code should be 
  kept small and complex and fragile interdependencies should be avoided. If 
  the code is difficult to maintain this would ultimately seriously affect 
  all of the above goals.
* **Adaptability and ease of use** - The style should be easy to customize, 
  like for creating localized or special purpose maps. It is also important to 
  keep demands on rendering infrastructure for serving the style low so it is 
  not too difficult and costly to set up a tile server for this style or a 
  specialized variant of it.

## Design guidelines

The following guidelines have been found to be useful design principles that 
can help creating a better map in line with the above goals. Keep in mind that 
none of these principles represents a goal on its own and most of them are 
highly condensed summaries of more complex considerations.

* The difference in rendering between different types of features should 
  foremost be based on their difference in meaning and purpose for the target 
  map users. Differences in physical appearance are only relevant as far as 
  they also represent differences in meaning and purpose.

* Design of symbols, area and line patterns should be in a way that avoids 
  their geometries to be mistaken as mapped geometries.

* The connection between data and appearance of features in the map needs to 
  be comprehensible for the viewer.

* When changes have a strong impact on the overall appearance of the map input 
  should be sought from the broader OpenStreetMap community and particular 
  consideration given to their comments and concerns.

### Colors

* Differentiating features through different colors only makes sense if this 
  difference can actually be read by the map users.

* For area colors we prefer light and low saturation tones. Lines, individual 
  symbols and labels also can be stronger in color.

* Stronger colors indicate fairly distinct and meaningful features as opposed 
  to more general and less distinct features which use weaker colors.

* Small areas work well with somewhat stronger colors while large areas tend 
  to call for weaker tones.

* Symbols of area patterns need to be relatively weak in color with little 
  contrast towards the base color so they cannot be mistaken for an individual 
  symbol.

* Area outlines should - when used - be in colors that are not too strong and 
  harmonic with the fill color. Care should be taken that area outlines are 
  not mistaken for line features.

* Use of blue for area and line colors should be reserved for water related 
  features. Symbols and labels in blue color can also be used for other 
  purposes but sparsely and in a tone clearly distinct from all water related 
  features.

* Use of green should be reserved for vegetation related features, in 
  particular in case of area and line colors.

* Use of red, orange, yellow and brown line colors should be reserved to roads 
  and paths.

* Transparency tends to lead to undesirable and ambiguous color mixing and 
  should therefore be used very carefully.

* It is generally advisable to design color relationships in perceptual color 
  spaces.

### Zoom levels

* Styling of map elements should work for the entire range of displayed 
  latitudes and the full bandwidth of geographic situations that exists on 
  earth.

* Design differences between subsequent zoom levels should be small. 
  Continuous or small step changes over multiple levels is preferable in 
  comparison to constant styling across multiple levels followed by a huge 
  step.

* Size increase (line widths, text sizes, icon sizes etc.) with increasing 
  zoom level should not be larger than the scale ratio between the zoom levels 
  so sizes do not increase relative to ground units at higher zoom levels.

* Features can start to appear at a certain zoom level when zooming in but 
  they should not disappear again at a later zoom level - except possibly for 
  labels of features becoming very large.

* If there is no meaningful measure used for prioritization between individual 
  features starting zoom levels should be selected to show at least most of 
  the features.

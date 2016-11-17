
# Design goals and guidelines for this style

This is an attempt to outline the goals of this style and the principles under 
which the maintainers make decisions.  These rules are not set in stone, they 
can change and they may not be followed in all cases but contributors should 
be able to expect they are generally the guiding principles design wise.

It does not make much sense to try following these principles blindly as a 
contributor without understanding them, they are meant to guide you to develop 
an intuition and understanding how to make design decisions to fit into the 
overall concept of this style.

## General purpose

This style has multiple purposes:

* It's an important feedback mechanism for mappers to validate their edits.
* It's a major part of the public face of OpenStreetMap, for many people the map on osm.org rendered with this style _is_ OpenStreetMap.
* It's used in many map applications as a general purpose map.
* It's an examplar stylesheet for rendering OSM data.

There is no ranking of these purposes.  To allow serving all of them and to 
avoid satisfying only some at the cost of the others the following main goals 
have been identified.

## Main goals

The following goals form an ordered list with the most important on top.  This 
essentially means pursuit of the goals further at the bottom should not 
sacrifice the goals higher up.  All goals are however relevant to fulfill the 
purposes above and should be balanced as far as possible.  Some compromises 
need to be made with the higher priority goals on occasions to not completely 
ruin the lower priority ones.  Apart from these goals there are of course also 
technical constraints and requirements that need to be taken into account.

1. **Legibility** - The map should be intuitively readable by users with some general experience using maps without a map key.  A map key or more extensive experience using this map style can be required for clearly identifying minor differences or the exact meaning of certain features but in broad strokes orientation and identification of map elements should be possible on an intuitive level.

2. **Being understandable and supportive for the mappers** - To serve as feedback for mappers and encourage correct mapping this style needs to render the data in a way that allows mappers to understand how the data produces a certain rendering result based on basic observation without in depth understanding how map rendering works or looking at the style implementation.

3. **Diversity** - The style should represent the diversity of the OSM community and geography in general.  The most obvious element to serve this goal is showing the local names everywhere on earth in their respective scripts.  This goal however goes beyond labels.  Both physical and cultural geography differs a lot globally and the aim is to represent this variety with equal determination - well mapped areas are not supposed to have more weight here than less mapped parts of the world.  This also means the target map user is the potential global map user and no special consideration is given to the current geographic distribution of actual map use.

4. **Clarity** - This is strongly and directly related to legibility but more specifically means the map should be readable with as little effort as possible and be pleasant to look at both with high and low levels of interest and concentration.

5. **A rich map** - This style deliberately creating a fairly rich map showing a significant number of different features.  This way it shows the richness of OSM data and gives a broad recognition to the mappers' work.  The aim is not however to show all or even most of the OSM data.

6. **Maintainability** - The implementation of this style should not be too hard to maintain.  This means the amount of code should be kept small and complex and fragile interdependencies should be avoided.  If the code is difficult to maintain this would ultimately seriously affect all of the above goals.

7. **Adaptability** - The style should be easy to customize, like for creating localized or special purpose maps.

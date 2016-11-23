
# Design goals and guidelines for this style

This is an attempt to outline the goals of this style and the principles under 
which the maintainers make decisions.  These rules are not set in stone, they 
can change and they may not be followed in all cases but contributors should 
be able to expect that they are generally the guiding principles design wise.

It does not make much sense to try following these principles blindly as a 
contributor without understanding them, they are meant to guide you to develop 
an intuition and understanding how to make design decisions to fit into the 
overall concept of this style.

## General purpose

This style has multiple purposes:

* It's an important feedback mechanism for mappers to validate their edits and helps to prevent unfavorable fragmentation of tag use.
* It's a major part of the public face of OpenStreetMap, for many people the map on osm.org rendered with this style _is_ OpenStreetMap.
* It's used in many map applications as a general purpose map.
* It's an exemplar stylesheet for rendering OSM data.

There is no ranking of these purposes.  To allow serving all of them and to 
avoid satisfying only some at the cost of the others the following main goals 
have been identified.

## Main goals

The following goals need to be balanced against each other to serve the purposes 
above.  There is no fixed order of priorities.  Apart from these goals there are 
of course also technical constraints and requirements that need to be taken into 
account.

* **Legibility and clarity** - The map should be intuitively readable by users with some general experience using maps without a map key, preferrably with relatively little effort.  A map key or more extensive experience using this map style can be required for clearly identifying minor differences or the exact meaning of certain features but in broad strokes orientation and identification of map elements should be possible on an intuitive level.  We also aim for the map appearance to be esthetically pleasing.
* **Being understandable and supportive for mappers** - To serve as feedback for mappers and encourage correct mapping this style needs to render the data in a way that allows mappers to understand how the data produces a certain rendering result based on basic observation without in depth understanding how map rendering works or looking at the style implementation.
* **Diversity** - The style should represent the diversity of the OSM community and geography in general.  The most obvious element to serve this goal is showing the local names everywhere on earth in their respective scripts.  This goal however goes beyond labels.  Both physical and cultural geography differs a lot globally and the aim is to represent this variety with equal determination - well mapped areas are not supposed to have more weight here than less mapped parts of the world.  This also means the target map user is the potential global map user and no special consideration is given to the current geographic distribution of actual map use.
* **A rich map** - This style deliberately creating a fairly rich map showing a significant number of different features.  This way it shows the richness of OSM data and gives a broad recognition to the mappers' work.  The aim is not however to show all or even most of the OSM data.
* **Maintainability** - The implementation of this style should not be too hard to maintain. This refers to both the volume and complexity of the code and how fast the style can be parsed when rendering it, which is very important for efficient development work. So the amount of code should be kept small and complex and fragile interdependencies should be avoided. If the code is difficult to maintain this would ultimately seriously affect all of the above goals.
* **Adaptability and ease of use** - The style should be easy to customize, like for creating localized or special purpose maps. It is also important to keep demands on rendering infrastructure for serving the style low so it is not too difficult and costly to set up a tile server for this style or a specialized variant of it.

## Design guidelines

To accomplish these goals the following guidelines have been found to be useful.

Decisions on if and how to display something in the map should be primarily based on the significance of features for the purposes and goals above.

* How often something is currently mapped in OSM has relatively little influence on such decisions.  Widespread use of a tag can be a supporting factor but should never be the reason for rendering something.  Tag use also needs to be seen in relation to the actual occurrence of the type of feature in reality.  And rare use of a tag of course means there is very limited information to assess the quality of the data.
* If mapping in OSM (i.e. use of tags and geometric representation) is consistent, verifiable and accurate is highly relevant.  Rendering something that is mapped inconsistently is counterproductive for all of this style's purposes.  Consistency is to be looked for both in a positive way (mapping with the tag in question is consistent) and in a negative way (the same kind of object in reality is not frequently mapped in a different way).  Different competing tags can be accepted (to be rendered in the same way) if both variants are well established and the difference mainly exists for historic reasons and their use is compatible.
* If tags used for mapping a certain feature type are well documented is likewise important because it affects if future use of these tags will likely be and stay consistent.   For similar reasons a feature that is already rendered in other OSM based maps with widespread use can be regarded more favorably than one that is not.

Apart from the characteristics of the data the most important criterion for deciding on rendering a certain type of feature or not is how visible and meaningful this feature is in reality.  Prominently visible elements tend to be important for orientation even if they are not particularly important themselves for a map user.  Some features like for example an ATM might not be very visible but serve an important social function in their surrounding and should therefore be shown.

If several similar types of features should be rendered identically or differently and which features should differ strongly in appearance and which only in minor nuances should foremost be based on their difference in meaning and purpose for the target map users.  Differences in physical appearance are only relevant as far as they also represent differences in meaning and purpose.

Using data that is not from the OSM database should be avoided - unless it is strictly necessary for the goals.  Preprocessing of OSM based data can be and is used (like for the coastline) but should carefully be considered regarding the influence this has on mapper feedback.

Design of symbols, area and line patterns should be in a way that avoids their geometries to be mistaken as actual data.

How something is rendered should - as far as possible within the guidelines and goals outlined so far - be in line with mappers' expectations.  If the way something is rendered appears either ugly, too prominent, contradicting or diametrical to readability in general mappers will try to avoid mapping it this way and if another feature class appears to look more according to the expectations its tagging is often used instead (also known as mapping for the renderer).  Similar things happen if the way some feature is rendered is very generic, not particularly indicative and distinct for the class of features it is meant to represent. It then will often be abused to map other types of features.  For these reasons it can be more productive to not render something than to render it in a suboptimal way.

Also important in terms of mapper feedback is that how data influences the appearance of features in the map needs to be comprehensible for the viewer.  Complex relationships and unexpected interactions between different features should be avoided.

One particular consideration due to this style being an important part of the public face of OpenStreetMap is to be careful and considerate with changes having a strong impact on the overall appearance of the map, especially with elements that have been rendered a certain way for a long time.  Such changes should be broadly discussed also beyond the issue tracker and comments and concerns should be carefully considered.

### Colors

Colors are a special and very important matter in map design and therefore get a separate section here.  In general since one of the goals is to create a rich map colors should be used sparsely to not affect readability.  And it only makes sense to differentiate features through different color if this difference can actually be read by the map users.

As a general rule large areas should normally be colored in fairly light and low saturation colors.  Lines can be in stronger color although line styling can also be used as a means of differentiating here.  Individual symbols can also be stronger - likewise for labels.

Symbols of area patterns should normally be relatively weak in color with little contrast towards the base color so they cannot be mistaken for an individual symbol.  They should however still be strong enough to be well readable.

Within the different fields of color use (like areas, lines, symbols and labels) stronger and weaker colors can be used to indicate fairly distinct and meaningful features as opposed to more general and less distinct features.  For areas also consider that small areas often work better with stronger colors while large areas tend to call for weaker tones.

Area outlines should - when used - be in colors that are not too strong and harmonic with the fill color.  Care should be taken that area outlines are not mistaken for line features.

The goal of the map being readable based on general map reading experience dictates adhering to general conventions of color use in maps to some extent.  Such conventions also often represent sensible choices regarding color physiology in general.  The following principles should generally be followed:

* Use of blue for area and line colors should be reserved for water related features.  Symbols and labels in blue color can also be used for other purposes but sparsely and in a tone clearly distinct from all water related features
* Use of green should be reserved for vegetation related features, in particular in case of area and line colors.
* Use of red, orange, yellow and brown line colors should be reserved to roads and paths.

Of course there is a continuum of colors and it is not quite clear where green and blue end.  The important thing here is that water related blues and vegetation related greens form identifiable units in color space that allow intuitively identifying these groups of colors when reading the map.

It is an important general principle that features differing strongly in meaning and purpose for the map user should be well differentiated in either color or by other means while fairly similar features should differ little or not at all.  Or in other words: features rendered with similar color should actually be similar in purpose and meaning for the map user.

Transparency should be used very carefully with consideration for the color mixing this can result in and the ambiguities possibly caused by it.

It is generally advisable to design color relationships in perceptual color spaces.  Use of internal color functions like `lighten()` and `darken()` should be considered carefully since they are performed in sRGB.


### Zoom levels

An important aspect of styles for interactive maps is that they are used for a large number of different map sizes or zoom levels.  This creates special challenges for map design.  A particular problem with this stems from the fact that the Mercator projection is a variable scale projection so the different zoom levels do not represent specific map scales.  This fact should always be considered when making design decisions.  Styling should always work for the whole map and for the whole range of map scales present in the zoom level in question.  This normally requires testing changes in different areas at different latitudes.

A number of rules should generally be followed regarding cross zoom level design:

* Design differences between zoom levels should be small and used with caution.  Map users should be able to read the map without learning to interpret every zoom level separately.  Continuous or small step changes over multiple levels is preferable in comparison to constant styling across multiple levels followed by a huge step.  When increasing dimensions (line widths, text sizes, icon sizes etc.) with higher zoom levels this size increase should not be larger than the scale ratio between the zoom levels, in other words: sizes in which things are drawn should not increase relative to ground units with increasing zoom level.
* Many map features start being displayed at a certain zoom level and continue being shown, sometimes with changing styling, at subsequent higher levels.  What is highly undesirable though is to show a feature first and then have it vanish again at a higher zoom level.  The only situation where this can be appropriate is in case of labels for features that get very large and where labeling them is therefore no more useful.
* Decisions at what zoom level to start showing a certain feature type should prominently consider that not actually rendering a large number of elements because of competing labels or icons is often diametrical to the purpose of providing useful mapper feedback, in particular if feature priorities are not based on a meaningful property.
* Decisions at what zoom level to start showing something are also particularly prone to causing bad mapping decisions (mapping for the renderer).  This should be considered when making choices here.



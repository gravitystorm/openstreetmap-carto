This file describes some use cases of the style sheet. For each use case, it is indicated which features we need to render because they are the subject of the use case, and which features we should render as context for the subject feature(s). Also, for each use case is indicated at what zoom level the use case is relevant.

The end goal should be that for everything we render on a given zoomlevel, we have a use case that mentions that feature either as map subject or map context on that zoomlevel. We can accomplish this either by adding use cases, or removing features.

As we are still experimenting with this way of design, this document is restricted for now to zoom levels 5, 6 and 7.

| Use case | Map subject | Map context | Zoom level |
| --- | --- | --- | --- |
| Looking up country location | Country names, country borders | Seas and oceans | z5, z6 |
| Looking up U.S. state location | state names and borders in USA  | Seas and oceans, country bnorders | z5, z6, z7 |
| Looking up province/state location|Province/state names and borders|Country borders | z6, z7 |
| Looking up city location | City names | Seas, oceans, country names, country borders | z5, z6, z7 |
| Long distance road trip planning | Motorways | City names | z6, z7 |

This gives us the following features:
* z5: Map subject: Country names, country borders, city names. Map context: seas, oceans.
* z5 in USA: Map subject: Province/state names and borders. Map context: Country names, country borders, seas oceans
* z6: Map subject: Country names, country borders, province/state names and borders, motorways, city names. Map context: Seas, oceans, country borders, city names.
* z7: Map subject: Province/state names and borders, city names, motorways. Map context: Seas, oceans, country names, country borders.

Some features that we currently render for which we do not (yet) have a use case:
* Province/state names and borders (except USA) on z5
* Roads on z5
* National parks on z7
* Railways on z7
* Minor water areas on z5/6/7

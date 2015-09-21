Pattern file for quarry is generated in two steps.

SVG file is generated using JSDotPattern generator (http://www.imagico.de/map/jsdotpattern.php) using these options:

- symbol definition: quarry1
- symbol pattern (foreground color): #E6E6E6
- point generation
  - distance: 45
  - regular triangular dot pattern
- rendering: render (px aligned)
- patten size: 512

and then converted to PNG file:

```
convert quarry.svg quarry.png
```

Original SVG pattern file (included in this folder) was however made also with scale 0.12 using https://commons.wikimedia.org/wiki/File:Schlaegel_und_Eisen_nach_DIN_21800.svg and then manually converted to PNG.

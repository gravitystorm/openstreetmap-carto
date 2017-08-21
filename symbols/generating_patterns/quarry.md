Pattern file for quarry is generated in two steps.

SVG file is generated using JSDotPattern generator (http://www.imagico.de/map/jsdotpattern.php) using these options:

- symbol definition: quarry1
  - offset: 7 6
  - scale: 1
- symbol pattern (foreground color): #E6E6E6
- point generation
  - distance: 45
  - regular triangular dot pattern
- relaxation
  - radius: 32
  - radius y: 32
  - metric: 2
- rendering: render (px aligned)
- pattern size: 256

(direct link: http://www.imagico.de/map/jsdotpattern.php#x,256,jdp2599;gt,45,32,32;rd,1,0,0,quarry1,1,7,6,0,jdp59560,e6e6e6,c5c3c3)

Generated SVG image is sanitized for use with Mapnik by the script svg_pattern.sh from the jsdotpattern repository at http://github.com/imagico/jsdotpattern.

The final file is quarry.svg


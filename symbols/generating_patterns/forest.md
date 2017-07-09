Pattern file for forests is generated in two steps.

In the first step visit [jsdotpattern (command sequence is recorded)](http://www.imagico.de/map/jsdotpattern.php#x,512,jdp6894;g,30,32,32;s,jdp33742;s,jdp81637;rx,250,2,32,32;s,jdp28824;s,jdp59702;s,jdp91550;s,jdp27774;rx,250,2,64,64;rd,1,0,0,tree%20pair,1,5,5,0,jdp52898,6b8d5e,add19e;)

Generate file - use "render (px aligned)" followed by using "get pattern SVG data" (it is expected that background will be transparent, background colour in jsdotpattern is only for display).

Generated SVG image is sanitized for use with Mapnik by the script svg_pattern.sh from the jsdotpattern repository at http://github.com/imagico/jsdotpattern.

The final file is forest.svg
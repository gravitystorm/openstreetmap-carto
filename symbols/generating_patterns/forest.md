Pattern file for forests is generated in two steps.

In the first step visit [jsdotpattern (command sequence is recorded)](http://www.imagico.de/map/jsdotpattern.php#x,512,jdp6894;g,30,32,32;s,jdp33742;s,jdp81637;rx,250,2,32,32;s,jdp28824;s,jdp59702;s,jdp91550;s,jdp27774;rx,250,2,64,64;rd,1,0,0,tree%20pair,1,5,5,0,jdp48960;)

Replace svg patterns in boxes by

```<g><path fill="rgb(107,141,94)" d="M 2,0 0,6 0,7 2,7 2,10 3,10 3,7 5,7 5,6 3,0 z M 2.5,1 4,6 1,6 z" /><path fill="rgb(107,141,94)" d="m 7,5 1,0 0,5 -1,0 z" /><path fill="rgb(107,141,94)" d="m 7.5,0 a 2.5,3 0 0 1 0,6 l 0,-1 a 1.5,2 0 0 0 0,-4 1.5,2 0 1 0 0,4 l 0,1 a 2.5,3 0 1 1 0,-6 z" /></g>```

```<g><path fill="rgb(107,141,94)" d="m 2,5 1,0 0,5 -1,0 z" /><path fill="rgb(107,141,94)" d="m 2.5,0 a 2.5,3 0 0 1 0,6 l 0,-1 a 1.5,2 0 0 0 0,-4 1.5,2 0 1 0 0,4 l 0,1 a 2.5,3 0 1 1 0,-6 z" /><path fill="rgb(107,141,94)" d="M 7,0 5,6 5,7 7,7 7,10 8,10 8,7 10,7 10,6 8,0 z M 7.5,1 9,6 6,6 z" /></g>```

to obtain color lch(55, 30, 135)

Generate file - use "render (px aligned)" followed by using "get pattern SVG data".

Generated SVG image is present in this folder (forest.svg).

Due to limitations of Mapnik it is impossible to use this svg file.

Currently used workaround is to export png file (this image is used in rendering).
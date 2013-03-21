#golf [zoom>=16] {
  [golf = 'rough'] {
    polygon-fill: #adcc8f;
    polygon-opacity: 1;
    polygon-smooth: 0.8;
  }
  [golf = 'fairway'] {
    polygon-fill: #adcc8f;
    polygon-opacity: 1;
    polygon-smooth: 0.8;
  }
  [golf = 'water_hazard'], [golf = 'lateral_water_hazard'] {
    polygon-fill: #b5d0d0;
    polygon-smooth: 0.8;
  }
  [golf = 'green'] {
    polygon-fill: #bfe573;
    polygon-opacity: 1;
    polygon-smooth: 0.8;
  }
  [golf = 'bunker']{
	polygon-fill: #ffdf88;
	polygon-opacity: 1;
	polygon-smooth: 0.8;
  }
  [golf = 'hole'][geo='line'] {
	line-color: black;
	line-width: 0.5;
	[name!=''] {
		text-placement: line;
		text-name: "[name]";
		text-face-name: @book-fonts;
		text-halo-radius: 1;
		text-halo-fill: fadeout(white, 30%);
	}
  }
  [golf = 'hole'][geo='point'],
  [golf='pin'] {
	point-file: url('symbols/fr/golf.svg');
	point-transform: "scale(0.4)";
	[ref!=''] {
		text-name: "[ref]";
		text-face-name: @book-fonts;
		text-horizontal-alignment: left;
		text-dy: -2;
		text-dx: 10;
		text-halo-radius: 1;
		text-halo-fill: fadeout(white, 30%);
	}
  }
  [golf='tee'] {
	marker-fill: grey;
	marker-width: 3;
	marker-height: 3;
	[ref!=''] {
		text-name: "[ref]";
		text-face-name: @book-fonts;
		text-dy: 6;
		text-halo-radius: 1;
		text-halo-fill: fadeout(white, 30%);
	}
  }
  [golf = 'out_of_bounds'] {
	line-color: white;
	line-width: 2;
	line-cap: round;
	line-dasharray: 1,8;
  }

}
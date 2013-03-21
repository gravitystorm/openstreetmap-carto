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


#sports [zoom>=16] {
	[surface='clay']::surface { polygon-fill: #cc7e66; }
	[surface='grass']::surface { polygon-fill: #bfe573; }
	
	[sport='tennis'][way_area<2000][d12>36][d12<65][d23>15][d23<35][d13>37][d13<75] { /* 12-longueur - 23-largeur */
		point-file: url('symbols/fr/sports-tennis.svg');
		point-opacity: 0.9;
		[zoom=16] { point-transform: "rotate([a23]) scale(0.075)"; }
		[zoom=17] { point-transform: "rotate([a23]) scale(0.15)"; }
		[zoom=18] { point-transform: "rotate([a23]) scale(0.3)"; }
		[zoom=19] { point-transform: "rotate([a23]) scale(0.6)"; }
		[zoom=20] { point-transform: "rotate([a23]) scale(1.2)"; }
		point-ignore-placement: true;
	}
	[sport='tennis'][way_area<2000][d23>36][d23<65][d12>15][d12<35][d13>37][d13<75] { /* 12-largeur - 23-longueur */
		point-file: url('symbols/fr/sports-tennis.svg');
		point-opacity: 0.9;
		[zoom=16] { point-transform: "rotate([a12]) scale(0.075)"; }
		[zoom=17] { point-transform: "rotate([a12]) scale(0.15)"; }
		[zoom=18] { point-transform: "rotate([a12]) scale(0.3)"; }
		[zoom=19] { point-transform: "rotate([a12]) scale(0.6)"; }
		[zoom=20] { point-transform: "rotate([a12]) scale(1.2)"; }
		point-ignore-placement: true;
	}

	[sport='soccer'][d12>135][d12<200][d23>68][d23<160][d13>150][d13<250] { /* 12-longueur - 23-largeur */
		point-file: url('symbols/fr/sports-soccer.svg');
		point-ignore-placement: true;
		[way_area<12000] {
			[zoom=16] { point-transform: "rotate([a23]) scale(0.125)"; }
			[zoom=17] { point-transform: "rotate([a23]) scale(0.25)"; }
			[zoom=18] { point-transform: "rotate([a23]) scale(0.5)"; }
			[zoom=19] { point-transform: "rotate([a23]) scale(1.0)"; }
			[zoom=20] { point-transform: "rotate([a23]) scale(2.0)"; }
		}
		[way_area>=12000][way_area<17000] {
			[zoom=16] { point-transform: "rotate([a23]) scale(0.15)"; }
			[zoom=17] { point-transform: "rotate([a23]) scale(0.3)"; }
			[zoom=18] { point-transform: "rotate([a23]) scale(0.6)"; }
			[zoom=19] { point-transform: "rotate([a23]) scale(1.2)"; }
			[zoom=20] { point-transform: "rotate([a23]) scale(2.4)"; }
		}
		[way_area>=17000] {
			[zoom=16] { point-transform: "rotate([a23]) scale(0.175)"; }
			[zoom=17] { point-transform: "rotate([a23]) scale(0.35)"; }
			[zoom=18] { point-transform: "rotate([a23]) scale(0.7)"; }
			[zoom=19] { point-transform: "rotate([a23]) scale(1.4)"; }
			[zoom=20] { point-transform: "rotate([a23]) scale(2.8)"; }
		}
	}

	[sport='soccer'][d23>135][d23<200][d12>68][d12<160][d13>150][d13<250] { /* 12-largeur - 23-longueur */
		point-file: url('symbols/fr/sports-soccer.svg');
		point-ignore-placement: true;
		[way_area<12000] {
			[zoom=16] { point-transform: "rotate([a12]) scale(0.125)"; }
			[zoom=17] { point-transform: "rotate([a12]) scale(0.25)"; }
			[zoom=18] { point-transform: "rotate([a12]) scale(0.5)"; }
			[zoom=19] { point-transform: "rotate([a12]) scale(1.0)"; }
			[zoom=20] { point-transform: "rotate([a12]) scale(2.0)"; }
		}
		[way_area>=12000][way_area<17000] {
			[zoom=16] { point-transform: "rotate([a12]) scale(0.15)"; }
			[zoom=17] { point-transform: "rotate([a12]) scale(0.3)"; }
			[zoom=18] { point-transform: "rotate([a12]) scale(0.6)"; }
			[zoom=19] { point-transform: "rotate([a12]) scale(1.2)"; }
			[zoom=20] { point-transform: "rotate([a12]) scale(2.4)"; }
		}
		[way_area>=17000] {
			[zoom=16] { point-transform: "rotate([a12]) scale(0.175)"; }
			[zoom=17] { point-transform: "rotate([a12]) scale(0.35)"; }
			[zoom=18] { point-transform: "rotate([a12]) scale(0.7)"; }
			[zoom=19] { point-transform: "rotate([a12]) scale(1.4)"; }
			[zoom=20] { point-transform: "rotate([a12]) scale(2.8)"; }
		}
	}
	
}
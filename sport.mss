/*

derived from https://github.com/cquest/osmfr-cartocss/blob/master/golf.mss
contains fixes for europe-centric worldview :)

*/

@sport-surface-grass: #54a854;
@sport-surface-clay: #cc7e66;

#sports [zoom>=16][angle_diff>85][angle_diff<95] {
	[sport='tennis'] {
		[surface='clay']::surface {
                  polygon-fill: @sport-surface-clay;
                  line-width: 0.6;
                  line-color: saturate(darken(@sport-surface-clay, 30%), 20%);
		}
		[surface='grass']::surface {
                  polygon-fill: @sport-surface-grass;
                  line-width: 0.6;
                  line-color: saturate(darken(@sport-surface-grass, 30%), 20%); 
                }
		[pitch_area<1100][d13>20][d13<52] {			/* area size / diagonal check */
			[d12>20][d12<45][d23>8][d23<30] { 		/* 1>2 = length / 2>3 = width */
				point-file: url('symbols-de/sports/sports-tennis.svg');
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.0517*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.1035*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.207*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.414*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(0.828*[labelsizefactor])"; }
				point-ignore-placement: true;
			}
			[d23>20][d23<45][d12>8][d12<30] { 		/* 1>2 = width / 2>3 = length -> rotate by 90° */
				point-file: url('symbols-de/sports/sports-tennis.svg');
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.0517*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.1035*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.207*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.414*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(0.828*[labelsizefactor])"; }
				point-ignore-placement: true;
			}
		}
        [access='private'] {
        	line-width: 4;
        	line-color: #efa9a9;
        	line-dasharray: 6,8;
        	line-opacity: 0.5;
        	line-join: round;
        	line-cap: round;
		}
	}
	
	[sport='soccer'] {
		[surface='grass']::surface { polygon-fill: @sport-surface-grass; }
		[d12>90][d12<130][d23>45][d23<110][d13>100][d13<170] { /* 1>2 = length / 2>3 = width */
			point-file: url('symbols-de/sports/sports-soccer.svg');
			point-ignore-placement: true;
			[pitch_area<3500] {
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.0776*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.15525*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.3105*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.621*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.242*[labelsizefactor])"; }
			}
			[pitch_area>=3500][pitch_area<10000] {
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.1035*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.207*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.414*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.828*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.656*[labelsizefactor])"; }
			}
			[pitch_area>=10000] {
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.12075*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.2415*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.483*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.966*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.932*[labelsizefactor])"; }
			}
		}

		[d23>80][d23<130][d12>45][d12<110][d13>100][d13<170] { /* 1>2 = length / 2>3 = width */
			point-file: url('symbols-de/sports/sports-soccer.svg');
			point-ignore-placement: true;
			[pitch_area<3500] {
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.0776*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.15525*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.3105*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.621*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.242*[labelsizefactor])"; }
			}
			[pitch_area>=3500][pitch_area<10000] {
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.1035*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.207*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.414*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.828*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.656*[labelsizefactor])"; }
			}
			[pitch_area>=10000] {
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.12075*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.2415*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.483*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.966*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.932*[labelsizefactor])"; }
			}
		}
	}
	
	[sport='basketball'][zoom>=17] {
		[pitch_area<450][d13>20][d13<35] {
			[d12>20][d12<30][d23>10][d23<20] { /* 12-longueur - 23-largeur */
				point-file: url('symbols-de/sports/sports-basketball.svg');
				point-ignore-placement: true;
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.0517*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.1035*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.207*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(0.414*[labelsizefactor])"; }
			}
			[d23>20][d23<30][d12>10][d12<20] { /* 12-largeur - 23-longueur */
				point-file: url('symbols-de/sports/sports-basketball.svg');
				point-ignore-placement: true;
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.0517*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.1035*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.207*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(0.414*[labelsizefactor])"; }
			}
		}
	}
	
	[sport='rugby'],
	[sport='rugby_union'],
	[sport='rugby_league'] {
		[surface='grass'] { polygon-fill: @sport-surface-grass; }
		[pitch_area>6000][pitch_area<11000][d13>100][d13<170] {
			[d23>50][d23<100][d12>100][d12<170] { /* 12-largeur - 23-longueur */
				point-file: url('symbols-de/sports/sports-rugby.svg');
				point-ignore-placement: true;
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.1725*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.345*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.69*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(1.38*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(2.76*[labelsizefactor])"; }
			}
			[d12>50][d12<100][d23>100][d23<170] { /* 12-longueur - 23-largeur */
				point-file: url('symbols-de/sports/sports-rugby.svg');
				point-ignore-placement: true;
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.1725*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.345*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.69*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(1.38*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(2.76*[labelsizefactor])"; }
			}
		}
	}

	[sport='american_football'] {
		[surface='grass'] { polygon-fill: @sport-surface-grass; }
		[pitch_area>3500][pitch_area<8500][d13>80][d13<170] {
			[d23>32][d23<65][d12>80][d12<130] { /* 12-largeur - 23-longueur */
				point-file: url('symbols-de/sports/sports-foot-us.svg');
				point-ignore-placement: true;
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.1035*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.207*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.414*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.828*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.656*[labelsizefactor])"; }
			}
			[d12>32][d12<65][d23>80][d23<130] { /* 12-longueur - 23-largeur */
				point-file: url('symbols-de/sports/sports-foot-us.svg');
				point-ignore-placement: true;
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.1035*[labelsizefactor])"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.207*[labelsizefactor])"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.414*[labelsizefactor])"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.828*[labelsizefactor])"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.656*[labelsizefactor])"; }
			}
		}
	}

}

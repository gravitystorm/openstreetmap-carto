.symbols {
  [aeroway = 'helipad'][zoom >= 16]::aeroway {
    point-file: url('symbols/helipad.svg');
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-dy: -10;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [zoom>=10]::aeroway {
	  [aeroway = 'aerodrome'][aerodrome = 'international'],
	  [aeroway = 'aerodrome'][aerodrome = 'airport'],
	  [aeroway = 'aerodrome'][aerodrome = 'continental'],
	  [aerodrome = 'military'],
	  [aerodrome = 'airfield'],
	  [aeroway = 'airport'] {
		[zoom >= 14] {
			text-dy: 0;
			[zoom>=16] { text-size: 20; }
			text-size: 16;
			text-name: "[name]";
			text-fill: grey;
			text-halo-radius: 1;
			text-placement: interior;
			text-face-name: @oblique-fonts;
		}
		point-file: url('symbols/airport2.svg');
		[aerodrome = 'military'],[aerodrome = 'airfield']
		{
			point-file: url('symbols/airport-red.svg');
		}
		[zoom>=11] {
			text-dy: -12;
			text-size: 9;
			text-name: "[nom]";
			text-fill: #6692da;
			[aerodrome = 'military'],[aerodrome = 'airfield'] { text-fill: black; text-face-name: @book-fonts;}
			text-halo-radius: 1;
			text-placement: interior;
			text-face-name: @bold-fonts;
		}
		[zoom>=13] { text-size: 11; }
	  }

	  [aeroway = 'aerodrome'] {
		point-file: url('symbols/aerodrome.svg');
		[zoom>=12] {
			text-dy: -12;
			text-name: "[nom]";
			[zoom>=15] { text-name: "[name]"; }
			text-size: 9;
			text-fill: #6692da;
			text-face-name: @oblique-fonts;
			text-halo-radius: 1;
			text-placement: interior;
		}
	  }
  }
  
  [railway = 'level_crossing'][zoom >= 15]::railway,
  [railway = 'crossing'][zoom >= 15]::railway {
    point-file: url('symbols/level_crossing2.svg');
    point-transform: "scale(0.5)";
    point-placement: interior;
  }

  [railway = 'buffer_stop'][zoom >= 17]::railway {
    point-file: url('symbols/buffer_stop.svg');
    [zoom=17] { point-transform: "scale(0.5)"; }
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    point-file: url('symbols/lighthouse.p.20.png');
    point-placement: interior;
  }

  [natural = 'peak'][zoom >= 11]::natural {
    point-file: url('symbols/peak.svg');
    point-placement: interior;
  }

  [mountain_pass = 'yes'][zoom >= 11]::natural,
  [natural = 'saddle'][zoom >= 11]::natural {
    point-file: url('symbols/mountain_pass.svg');
    point-placement: interior;
  }

  [natural = 'volcano'][zoom >= 11]::natural {
    point-file: url('symbols/volcano.png');
    point-placement: interior;
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    point-file: url('symbols/poi_cave.p.16.png');
    point-placement: interior;
  }

  [natural = 'spring'][zoom >= 14]::natural {
    point-file: url('symbols/spring.png');
    point-placement: interior;
  }

/*
  [natural = 'tree'][zoom >= 16]::natural {
    point-file: url('symbols/tree.png');
    point-ignore-placement: true;
    point-placement: interior;
    [zoom >= 17] {
      point-file: url('symbols/tree2.png');
    }
  }
*/



//  [zoom >= 15][power = 'sub_station']::power,
//  [zoom >= 15][power = 'substation']::power,
  [zoom >= 12][power = 'plant']::power,
  [zoom >= 15][power = 'generator']['generator:source' = 'wind']::power,
  [zoom >= 15][power = 'generator'][power_source = 'wind']::power
   {
      point-file: url('symbols/fr/electricity.svg');
      point-placement: interior;
	  [power = 'generator']['generator:source' = 'wind']::power,
	  [power = 'generator'][power_source = 'wind']::power
	  {
		  point-file: url('symbols/power_wind.png');
	  }
  }

  [man_made = 'windmill'][zoom >= 16]::man_made {
    point-file: url('symbols/windmill.png');
    point-placement: interior;
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [highway = 'mini_roundabout'][zoom >= 16]::highway {
    point-file: url('symbols/mini_round.png');
    point-placement: interior;
  }

  [highway = 'gate']::highway,
  [barrier = 'gate']::barrier {
    [zoom >= 15] {
      point-file: url('symbols/gate2.png');
      point-placement: interior;
    }
  }

  [barrier = 'toll_booth'][zoom >= 15]::barrier,
  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    point-file: url('symbols/lift_gate.svg');
    point-placement: interior;
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      point-file: url('symbols/bollard.png');
      point-placement: interior;
    }
  }
}

.symbols {
  [aeroway = 'helipad'][zoom >= 16]::aeroway {
    point-file: url('symbols/helipad.p.16.png');
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-dy: -10;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    text-wrap-width: 30;
  }

  [aeroway = 'aerodrome'][zoom >= 10][zoom < 13]::aeroway {
    [zoom < 11] {
      point-file: url('symbols/aerodrome.p.16.png');
      text-dy: -12;
    }
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    text-wrap-width: 30;
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    point-file: url('symbols/lighthouse.p.20.png');
    point-placement: interior;
  }

  [natural = 'peak'][zoom >= 11]::natural {
    marker-file: url('symbols/peak.svg');
    marker-fill: #d08f55;
    marker-placement: interior;
  }

  [natural = 'volcano'][zoom >= 11]::natural {
    marker-file: url('symbols/peak.svg');
    marker-fill: #d40000;
    marker-placement: interior;
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    point-file: url('symbols/poi_cave.p.16.png');
    point-placement: interior;
  }

  [natural = 'spring'][zoom >= 14]::natural {
    marker-file: url('symbols/spring.svg');
    marker-placement: interior;
  }

  [natural = 'tree'][zoom >= 16]::natural {
    marker-placement: interior;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-width: 3;
    marker-fill: #239c45;
    [zoom >= 17] {
      marker-line-width: 1;
      marker-line-color: #8ef2ab;
      marker-width: 4;
    }
  }

  [power = 'generator']['generator:source' = 'wind']::power,
  [power = 'generator'][power_source = 'wind']::power {
    [zoom >= 15] {
      point-file: url('symbols/power_wind.png');
      point-placement: interior;
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
}

.amenity-low-priority {
  [railway = 'level_crossing'][zoom >= 14]::railway {
    point-file: url('symbols/level_crossing.svg');
    point-placement: interior;
    [zoom >= 16] {
      point-file: url('symbols/level_crossing2.svg');
    }
  }

  [highway = 'mini_roundabout'][zoom >= 16]::highway {
    marker-file: url('symbols/mini_roundabout.svg');
    marker-placement: interior;
  }

  [barrier = 'gate']::barrier {
    [zoom >= 16] {
      marker-file: url('symbols/gate.svg');
      marker-placement: interior;
    }
  }

  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    marker-file: url('symbols/liftgate.svg');
    marker-fill: #3f3f3f;
    marker-placement: interior
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      marker-width: 3;
      marker-line-width: 0;
      marker-fill: #7d7c7c;
      marker-placement: interior;

      [zoom >= 18] {
        marker-width: 4;
      }
    }
  }
}

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    point-file: url('symbols/turning_circle-tert-casing.18.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-casing.24.png');
    }
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      point-file: url('symbols/turning_circle-uncl-casing.14.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-casing.18.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-casing.24.png');
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    point-file: url('symbols/turning_circle-uncl-fill.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-uncl-fill.18.png' );
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.24.png' );
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-casing.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-casing.16.png');
    }
  }
}

#turning-circle-fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    point-file: url('symbols/turning_circle-tert-fill.16.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-fill.22.png');
    }
  }
  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      point-file: url('symbols/turning_circle-uncl-fill.12.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-fill.16.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-fill.22.png');
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    point-file: url('symbols/turning_circle-livs-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-livs-fill.16.png');
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-livs-fill.22.png');
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.14.png');
    }
  }
}

#highway-area-casing {
  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [highway = 'pedestrian'],
  [highway = 'service'],
  [highway = 'footway'],
  [highway = 'path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [highway = 'track'][zoom >= 14] {
    line-color: #996600;
    line-width: 2;
  }

  [highway = 'platform'],
  [railway = 'platform']::railway {
    [zoom >= 16] {
      line-color: grey;
      line-width: 2;
      line-cap: round;
      line-join: round;
    }
  }
}

#highway-area-fill {
  [highway = 'living_street'][zoom >= 14] {
    polygon-fill: #ccc;
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [highway = 'pedestrian'],
  [highway = 'footway'],
  [highway = 'path'] {
    [zoom >= 14] {
      polygon-fill: #ededed;
    }
  }

  [highway = 'track'][zoom >= 14] {
    polygon-fill: #dfcc66;
  }

  [highway = 'platform'],
  [railway = 'platform']::railway {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [aeroway = 'runway'][zoom >= 11]::aeroway {
    polygon-fill: #bbc;
  }

  [aeroway = 'taxiway'][zoom >= 13]::aeroway {
    polygon-fill: #bbc;
  }

  [aeroway = 'helipad'][zoom >= 16]::aeroway {
    polygon-fill: #bbc;
  }
}

#landuse-overlay {
  [landuse = 'military'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/military_red_hz2.png');
    line-color: #f55;
    line-width: 3;
    line-opacity: 0.329;
  }
  [leisure = 'nature_reserve'][zoom >= 10] {
    polygon-pattern-file: url('symbols/nature_reserve5.png');
    line-color: #6c3;
    line-width: 0.5;
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/nature_reserve6.png');
      line-width: 1;
    }
  }
}

#area-text {
  [way_area >= 150000][zoom >= 14],
  [way_area >= 80000][zoom >= 15],
  [way_area >= 20000][zoom >= 16],
  [zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}

#highway-junctions {
  [zoom >= 11] {
    ref/text-name: "[ref]";
    ref/text-size: 9;
    ref/text-fill: #6666ff;
    ref/text-min-distance: 2;
    ref/text-face-name: @oblique-fonts;
    ref/text-halo-radius: 1;
    ref/text-wrap-width: 12;
    [zoom >= 12] {
      name/text-name: "[name]";
      name/text-size: 8;
      name/text-fill: #6666ff;
      name/text-dy: -8;
      name/text-face-name: @oblique-fonts;
      name/text-halo-radius: 1;
      name/text-wrap-character: ";";
      name/text-wrap-width: 2;
      name/text-min-distance: 2;
    }
    [zoom >= 15] {
      ref/text-size: 12;
      name/text-size: 11;
      name/text-dy: -10;
    }
  }
}

.text {
  [place = 'island'][zoom >= 12]::place {
    text-name: "[name]";
    text-fill: #000;
    text-size: 9;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'pub']::amenity,
  [amenity = 'restaurant']::amenity,
  [amenity = 'cafe']::amenity,
  [amenity = 'fast_food']::amenity,
  [amenity = 'beirgarten']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #734a08;
      text-size: 10;
      text-dy: 9;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-wrap-width: 34;
      text-placement: interior;
    }
  }

  [amenity = 'bar'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 11;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'library']::amenity,
  [amenity = 'theatre']::amenity,
  [amenity = 'courthouse']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'cinema'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 14;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'parking'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 34;
    text-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
  }

  [amenity = 'police'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'fire_station'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'place_of_worship'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [natural = 'wood'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [natural = 'peak']::natural,
  [natural = 'volcano']::natural {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: brown;
      text-dy: 5;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
      ele/text-name: "[ele]";
      ele/text-size: 9;
      ele/text-fill: brown;
      ele/text-dy: 6;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
      [name != ''] {
        ele/text-dy: 18;
      }
    }
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: brown;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [historic = 'memorial']::historic,
  [historic = 'archaeological_site']::historic {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: brown;
      text-dy: 12;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [natural = 'water']::natural,
  [natural = 'lake']::natural,
  [landuse = 'reservoir']::landuse,
  [landuse = 'basin']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #6699cc;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  /* Hmmm */
  [point = 'yes'][leisure != '']::point,
  [point = 'yes'][landuse != '']::point {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 2;
      text-wrap-width: 10;
    }
  }

  [natural = 'bay'][zoom >= 14]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [natural = 'spring'][zoom >= 16]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [tourism = 'alpine_hut'][zoom >= 15]::tourism {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    [zoom >= 16] {
      ele/text-name: "[ele]";
      ele/text-size: 8;
      ele/text-fill: #6699cc;
      ele/text-dy: 22;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
    }
  }

  [amenity = 'shelter'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    ele/text-name: "[ele]";
    ele/text-size: 8;
    ele/text-fill: #6699cc;
    ele/text-dy: 22;
    ele/text-face-name: @oblique-fonts;
    ele/text-halo-radius: 1;
    ele/text-placement: interior;
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-dy: 9;
    text-halo-radius: 1;
    text-placement: interior;
    text-face-name: @book-fonts;
  }

  [tourism = 'hotel']::tourism,
  [tourism = 'hostel']::tourism,
  [tourism = 'chalet']::tourism {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 7;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'fuel']::amenity,
  [amenity = 'bus_station']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #0066ff;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }

  [tourism = 'camp_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 15;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [tourism = 'caravan_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 19;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [waterway = 'lock'][zoom >= 15]::waterway {
    text-name: "[name]";
    text-size: 9;
    text-dy: 10;
    text-fill: #0066ff;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [leisure = 'marina'][zoom >= 15]::leisure {
    text-name: "[name]";
    text-size: 8;
    text-fill: blue;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 17] {
      text-size: 10;
    }
  }

  [tourism = 'theme_park'][zoom >= 14]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 16] {
      text-size: 10;
    }
  }

  [tourism = 'museum'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-dy: 10;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'attraction'][zoom >= 16]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #660033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [amenity = 'university'][zoom >= 15]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-face-name: @bold-fonts;
    text-halo-radius: 2;
    text-wrap-width: 16;
    text-placement: interior;
  }

  [amenity = 'school']::amenity,
  [amenity = 'college']::amenity {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000033;
      text-face-name: @book-fonts;
      text-halo-radius: 2;
      text-wrap-width: 14;
      text-placement: interior;
    }
  }

  [amenity = 'kindergarten'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 14;
    text-placement: interior;
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [man_made = 'windmill'][zoom >= 17]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #734a08;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [amenity = 'hospital'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-fill: #da0092;
    text-size: 8;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 24;
    text-placement: interior;
  }

  [amenity = 'pharmacy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-dy: 9;
    text-fill: #da0092;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [shop = 'bakery']::shop,
  [shop = 'clothes']::shop,
  [shop = 'fashion']::shop,
  [shop = 'convenience']::shop,
  [shop = 'doityourself']::shop,
  [shop = 'hairdresser']::shop,
  [shop = 'butcher']::shop,
  [shop = 'car']::shop,
  [shop = 'car_repair']::shop,
  [shop = 'bicycle']::shop,
  [shop = 'florist']::shop {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 8;
      text-dy: 9;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 12;
      text-placement: interior;
    }
  }

  [shop = 'supermarket']::shop,
  [shop = 'department_store']::shop {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-dy: 9;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [military = 'danger_area'][zoom >= 12]::military {
    text-name: "[name]";
    text-size: 9;
    text-fill: pink;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [aeroway = 'gate'][zoom >= 17]::aeroway {
    text-name: "[ref]";
    text-size: 10;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }
}

#tunnels::casing {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #506077;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: #477147;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: #8d4346;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-dasharray: 4,2;
      line-color: #a37b48;
    }
    [zoom >= 13] { line-width: 10; }
    [zoom >= 15] { line-width: 12; }
    [zoom >= 17] { line-width: 17; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 6;
      line-dasharray: 4,2;
      line-color: #999;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: #999;
      line-dasharray: 4,2;
    }
    [zoom >= 14] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 16] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#tunnels::fill {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #d6dfea;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 5; }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #cdeacd;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #f4c3c4;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #fee0b8;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: #ffc;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 2;
      line-color: #fff;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }
}

#minor-roads-casing::links {
  [highway = 'raceway'] {
    [zoom >= 12] {
      line-color: pink;
      line-width: 1.2;
      line-join: round;
    }
    [zoom >= 13] { line-width: 4; }
    [zoom >= 15] { line-width: 7; }
  }

  [highway = 'motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 1.5;
      line-color: #506077;
      line-join: round;
    }
    [zoom >= 13] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #477147;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #8d4346;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #a37b48;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: #bbb;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#minor-roads-casing {
  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #506077;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #477147;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #8d4346;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #a37b48;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 8.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'tertiary'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: #bbb;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [tunnel != 'yes'] {
      [zoom >= 13] {
        line-width: 3;
        line-color: #999;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 4.5; }
      [zoom >= 15] {
        line-width: 8;
        line-color: #bbb;
      }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }
  }

  /* This needs refactoring! Minor services shouldn't appear at z14
   * simply because of a tunnel tag. Also rationalise joins and caps
   */
  [highway = 'service'] {
    [service = 'INT-normal'][tunnel != 'yes'] {
      [zoom >= 14] {
        line-color: #999;
        line-width: 2.5;
        line-cap: round;
      }
      [zoom >= 16] { line-width: 7; }
    }
    [service = 'INT-minor'][tunnel != 'yes'] {
      [zoom >= 16] {
        line-color: #999;
        line-width: 4;
        line-cap: round;
        line-join: round;
      }
    }
    [tunnel = 'yes'][zoom >= 14] {
      line-color: #999;
      line-width: 2.5;
      line-dasharray: 4,2;
      [zoom >= 16] { line-width: 7; }
    }
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 2;
    line-color: grey;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 3.6; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9; }
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
    }
  }

  [highway = 'living_street'][zoom >= 12] {
    line-width: 2.5;
    line-color: white;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 17] { line-width: 14.5; }
  }
}

#minor-roads-fill::links {
  [highway = 'motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 0.5;
      line-color: #809bc0;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 17] { line-width: 9; }
  }

  [highway = 'trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #a9dba9;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #ec989a;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #fed7a5;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 4.5;
      line-color: #ffffb3;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: 6; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }
}

#minor-roads-fill {

  /*
   * The construction rules for small roads are strange, since if construction is null its assumed that
   * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
   * string for non-small roads.
   */
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #9cc;
      b/line-width: 2;
      b/line-dasharray: 4,2;
      b/line-color: white;
      [zoom >= 13] {
        line-width: 4;
        b/line-width: 3.5;
        b/line-dasharray: 6,4;
      }
      [zoom >= 16] {
        line-width: 8;
        b/line-width: 7;
        b/line-dasharray: 8,6;
      }
      [construction = 'motorway'],
      [construction = 'motorway_link'] {
        line-color: #809bc0;
      }
      [construction = 'trunk'],
      [construction = 'trunk_link'] {
        line-color: #a9dba9;
      }
      [construction = 'primary'],
      [construction = 'primary_link'] {
        line-color: #ec989a;
      }
      [construction = 'secondary'],
      [construction = 'secondary_link'] {
        line-color: #fed7a5;
      }
      [construction = 'tertiary'],
      [construction = 'tertiary_link'] {
        line-color: #ffffb3;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'residential'],
      [construction = 'unclassified'],
      [construction = 'living_street'] {
        line-color: #aaa;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'service'] {
        line-color: #aaa;
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'cycleway'] {
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
        line-color: white;
        line-width: 3;
        line-opacity: 0.4;
        b/line-width: 1.2;
        b/line-color: #69f;
        b/line-dasharray: 2,6;
      }
    }
  }

  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #809bc0;
    }
    [zoom >= 13] {
      line-width: 5;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-cap: round;
      line-join: round;
      line-color: #a9dba9;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 11] { /* awooga prob should be 12? */
      line-width: 2.5;
      line-color: #ec989a;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #fed7a5;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'tertiary'],
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 10][zoom < 13] {
      line-width: 1;
      line-color: #bbb;
    }
  }

  [highway = 'road'][zoom >= 13] {
    line-width: 2;
    line-color: #ddd;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 2;
      line-color: #fff;
      line-cap: round;
      line-join: round;
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 6.5; }
      [zoom >= 16] { line-width: 9.4; }
      [zoom >= 17] { line-width: 13; }
    }
  }

  [highway = 'living_street'][zoom >= 12] {
    line-width: 1.5;
    line-color: #ccc;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 4.7; }
    [zoom >= 16] { line-width: 7.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'tertiary'][tunnel != 'yes'][zoom >= 13] {
    line-width: 4.5;
    line-color: #ffffb3;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 6; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'service'][service = 'INT-normal'][zoom >= 13] {
    line-width: 1;
    line-color: #bbbbbb;
    [zoom >= 14] {
      line-join: round;
      line-cap: round;
      line-width: 2;
      line-color: white;
    }
    [zoom >= 16] { line-width: 6; }
  }

  [highway = 'service'][service = 'INT-minor'][zoom >= 16] {
    line-width: 3;
    line-color: #fff;
    line-join: round;
    line-cap: round;
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 1.5;
    line-color: #ededed;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 5.5; }
    [zoom >= 16] { line-width: 8; }
  }

  [highway = 'platform'] {
    [zoom >= 16] {
      line-join: round;
      line-width: 6;
      line-color: grey;
      line-cap: round;
      b/line-width: 4;
      b/line-color: #bbbbbb;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [highway = 'steps'][zoom >= 13][zoom < 15] {
    line-width: 6;
    line-color: #fff;
    line-opacity: 0.4;
    b/line-width: 2;
    b/line-color: salmon;
    b/line-dasharray: 1,3;
    b/line-cap: round;
    b/line-join: round;
  }

  [highway = 'steps'][zoom >= 15] {
    line-width: 5.0;
    line-color: salmon;
    line-dasharray: 2,1;
  }

  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 3;
      line-color: #fff;
      line-cap: round;
      line-join: round;
      line-opacity: 0.4;
      b/line-color: green;
      b/line-width: 1.2;
      b/line-dasharray: 4,2;
    }
  }

  [highway = 'footway'],
  [highway = 'path'][foot = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 4;
      line-color: #fff;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 1.5;
      b/line-color: salmon;
      b/line-dasharray: 1,3;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [highway = 'cycleway'],
  [highway = 'path'][bicycle = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      line-opacity: 0.4;
      b/line-width: 1.2;
      b/line-dasharray: 1,3;
      b/line-color: blue;
      b/line-join: round;
      b/line-cap: round;
    }
  }

  /*
   * The above defininitions should override this when needed
   * given the specitivity precedence.
   */
  [highway = 'path'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 1.0;
      line-color: white;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 0.5;
      b/line-dasharray: 6,3;
      b/line-color: black;
      b/line-join: round;
      b/line-cap: round;
    }
  }

  [highway = 'byway'][zoom >= 13] {
    line-width: 4;
    line-color: white;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-dasharray: 3,4;
    b/line-color: #ffcc00;
    b/line-join: round;
    b/line-cap: round;
  }

  /* Todo re-unite this with the rest of the track definitions */
  [highway = 'track'][zoom >= 13][zoom < 14] {
    line-color: white;
    line-width: 2.5;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.2;
    b/line-color: #996600;
    b/line-dasharray: 3,4;
    b/line-cap: round;
    b/line-join: round;
  }

  [highway = 'unsurfaced'][zoom >= 13] {
    line-width: 3.5;
    line-color: #fff;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 2.5;
    b/line-color: #debd9c;
    b/line-dasharray: 2,4;
    b/line-cap: round;
    b/line-join: round;
    [zoom >= 14] {
      line-width: 5;
      b/line-width: 4;
      b/line-dasharray: 4,6;
    }
  }

  ::railway {
    [railway = 'rail'][tunnel = 'yes'][zoom >= 13],
    [railway = 'spur-siding-yard'][tunnel = 'yes'][zoom >= 13] {
      a/line-width: 3;
      b/line-width: 3;
      c/line-width: 3;
      d/line-width: 3;
      e/line-width: 3;
      f/line-width: 3;
      g/line-width: 3;
      a/line-color: #ffffff;
      b/line-color: #fdfdfd;
      c/line-color: #ececec;
      d/line-color: #cacaca;
      e/line-color: #afafaf;
      f/line-color: #a1a1a1;
      g/line-color: #9b9b9b;
      a/line-dasharray: 1,9;
      b/line-dasharray: 0,1,1,8;
      c/line-dasharray: 0,2,1,7;
      d/line-dasharray: 0,3,1,6;
      e/line-dasharray: 0,4,1,5;
      f/line-dasharray: 0,5,1,4;
      g/line-dasharray: 0,6,1,3;
      a/line-join: round;
      b/line-join: round;
      c/line-join: round;
      d/line-join: round;
      e/line-join: round;
      f/line-join: round;
      g/line-join: round;
      [railway = 'spur-siding-yard'] {
        a/line-width: 2;
        b/line-width: 2;
        c/line-width: 2;
        d/line-width: 2;
        e/line-width: 2;
        f/line-width: 2;
        g/line-width: 2;
      }
    }

    [railway = 'rail'][tunnel != 'yes'][zoom >= 13] {
      a/line-width: 3;
      a/line-color: #999999;
      a/line-join: round;
      b/line-width: 1;
      b/line-color: white;
      b/line-dasharray: 8,12;
      b/line-join: round;
      [zoom >= 14] {
        b/line-dasharray: 0,11,8,1;
      }
    }

    [railway = 'spur-siding-yard'][zoom >= 11] {
      a/line-width: 1;
      a/line-color: #aaa;
      a/line-join: round;
      [zoom >= 13][tunnel != 'yes'] {
        a/line-color: #999999;
        a/line-width: 2;
        b/line-width: 0.8;
        b/line-dasharray: 0,8,11,1;
        b/line-color: white;
        b/line-join: round;
      }
    }

    [railway = 'narrow_gauge'],
    [railway = 'funicular'] {
      [zoom >= 13] {
        a/line-width: 2;
        a/line-color: #666;
        [tunnel = 'yes'] {
          a/line-width: 5;
          a/line-dasharray: 5,3;
          b/line-color: #fff;
          b/line-width: 4;
          c/line-color: #aaa;
          c/line-width: 1.5;
        }
      }
    }

    [railway = 'miniature'][zoom >= 15] {
      a/line-width: 1.2;
      a/line-color: #999;
      b/line-width: 3;
      b/line-color: #999;
      b/line-dasharray: 1,10;
    }

    [railway = 'tram'][tunnel = 'yes'][zoom >= 13] {
      line-width: 1;
      line-dasharray: 5,3;
      line-color: #444;
      [zoom >= 15] { line-width: 2; }
    }

    [railway = 'light_rail'][zoom >= 13] {
      line-width: 2;
      line-color: #666;
      [tunnel = 'yes'] {
        line-dasharray: 5,3;
      }
    }

    [railway = 'subway'][zoom >= 12] {
      line-width: 2;
      line-color: #999;
      [tunnel = 'yes'] {
        line-dasharray: 5,3;
      }
    }

    [railway = 'disused'],
    [railway = 'abandoned'],
    [railway = 'construction'] { /* and not [highway] != '' <- todo */
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [railway = 'platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [railway = 'turntable'][zoom >= 16] {
      line-width: 1.5;
      line-color: #999;
    }
  }

  /* these are aeroway tags */
  [highway = 'runway'][zoom >= 11][zoom < 14] {
    line-width: 2;
    line-color: #bbc;
    [zoom >= 12] { line-width: 4; }
    [zoom >= 13] { line-width: 7; }
  }

  [highway = 'runway'][bridge = 'no'][zoom >= 14] {
    line-width: 18;
    line-color: #bbc;
  }

  [highway = 'taxiway'][zoom >= 11][zoom < 14] {
    line-width: 1;
    line-color: #bbc;
  }

  [highway = 'taxiway'][bridge = 'no'][zoom >= 14] {
    line-width: 4;
    line-color: #bbc;
    [zoom >= 15] {
      line-width: 6;
    }
  }
}

/* This is a good target for refactoring */
.access {
  [access = 'permissive'] {
    [highway = 'unclassified'],
    [highway = 'residential'],
    [highway = 'footway'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #cf9;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #cf9;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'destination'] {
    [highway = 'unclassified'],
    [highway = 'residential'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #c2e0ff;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #c2e0ff;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'private'],
  [access = 'no'] {
    [highway != 'service'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: #efa9a9;
        line-dasharray: 6,8;
        line-opacity: 0.5;
        line-join: round;
        line-cap: round;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #efa9a9;
      line-dasharray: 6,8;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      [zoom >= 16] { line-width: 6; }
    }
  }
}

#footbikecycle-tunnels {
  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: #fff;
      b/line-cap: round;
      b/line-join: round;
      c/line-width: 2;
      c/line-color: green;
      c/line-opacity: 0.5;
      c/line-dasharray: 4,2;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  [highway = 'footway'],
  [highway = 'path'][foot = 'designated'] {
    [zoom >= 13] {
      line-width: 5.5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3.5;
      b/line-color: #fff;
      b/line-join: round;
      b/line-cap: round;
      c/line-width: 2.5;
      c/line-color: salmon;
      c/line-dasharray: 1,3;
      c/line-opacity: 0.5;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  [highway = 'cycleway'],
  [highway = 'path'][bicycle = 'designated'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: grey;
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: white;
      b/line-join: round;
      b/line-cap: round;
      c/line-width: 2;
      c/line-color: blue;
      c/line-opacity: 0.5;
      c/line-dasharray: 1,3;
      c/line-join: round;
      c/line-cap: round;
    }
  }

  /*
  * The above defininitions should override this when needed
  * given the specitivity precedence.
  */
  [highway = 'path'][zoom >= 13] {
    line-width: 5.5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 1;
    b/line-color: white;
    b/line-opacity: 0.4;
    b/line-join: round;
    b/line-cap: round;
    c/line-width: 0.5;
    c/line-color: black;
    c/line-dasharray: 6,3;
    c/line-cap: round;
    c/line-join: round;
  }
}

#tracks-notunnel-nobridge {
  [zoom >= 14] {
    line-width: 3;
    line-color: white;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-color: #996600;
    b/line-dasharray: 3,4;
    b/line-cap: round;
    b/line-join: round;
    [tracktype = 'grade1'] {
      line-width: 3.5;
      b/line-width: 2;
      b/line-color: #b37700;
      b/line-opacity: 0.7;
      b/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
    }
    [tracktype = 'grade2'] {
      b/line-color: #a87000;
      b/line-dasharray: 9,4;
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade3'] {
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade4'] {
      b/line-width: 2;
      b/line-dasharray: 4,7,1,5;
      b/line-opacity: 0.8;
    }
    [tracktype = 'grade5'] {
      b/line-width: 2;
      b/line-dasharray: 1,5;
      b/line-opacity: 0.8;
    }
  }
}

#tracks-tunnels {
  [zoom >= 14] {
    line-width: 4.5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 3;
    b/line-color: white;
    b/line-cap: round;
    b/line-join: round;
    c/line-width: 1.5;
    c/line-color: #996600;
    c/line-dasharray: 3,4;
    c/line-opacity: 0.5;
    c/line-join: round;
    c/line-cap: round;
    [tracktype = 'grade1'] {
      line-width: 4;
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-color: #b37700;
      c/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
    }
    [tracktype = 'grade2'] {
      c/line-color: #a87000;
    }
    [tracktype = 'grade3'] {
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-dasharray: 100,0; /* yes, weird but true */
    }
    [tracktype = 'grade4'] {
      c/line-width: 2;
      c/line-dasharray: 4,7,1,5;
    }
    [tracktype = 'grade5'] {
      c/line-width: 2;
      c/line-dasharray: 1,5;
    }
  }
}

.bridges {
  ::bridges_casing {
    [highway = 'motorway'],
    [highway = 'motorway_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: #506077;
      }
      [zoom >= 13] {
        line-width: 6.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 17] { line-width: 12; }
    }

    [highway = 'trunk'],
    [highway = 'trunk_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: #477147;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [highway = 'primary'],
    [highway = 'primary_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: #8d4346;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [highway = 'secondary'],
    [highway = 'secondary_link'] {
      [zoom >= 13] {
        line-width: 10;
        line-color: black;
      }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
    }

    [highway = 'tertiary'],
    [highway = 'tertiary_link'] {
      [zoom >= 14] {
        line-width: 7.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [highway = 'residential'],
    [highway = 'unclassified'],
    [highway = 'road'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: black;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [highway = 'service'] {
      [zoom >= 14] {
        line-width: 3;
        line-color: black;
      }
      [zoom >= 16] { line-width: 8; }
    }

    [highway = 'pedestrian'] {
      [zoom >= 13] {
        line-width: 2.2;
        line-color: black;
      }
      [zoom >= 14] { line-width: 3.8; }
      [zoom >= 15] { line-width: 7; }
      [zoom >= 16] { line-width: 9.5; }
    }

    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 5;
      line-color: black;
      [zoom >= 14] { line-width: 6.5; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }
    }

    [highway = 'footway'],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: black;
      }
    }

    [highway = 'cycleway'],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }
    }

    [highway = 'path'][zoom >= 14] {
      line-width: 4;
      line-color: black;
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 5.5;
      line-color: black;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 4.5;
      line-color: black;
      [tracktype = 'grade1'] {
        line-width: 5;
      }
    }

    ::railway {
      [railway = 'subway'][zoom >= 14] {
        line-width: 5.5;
        line-color: black;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: #555;
        }
      }

      [railway = 'rail'][zoom >= 13] {
        line-width: 6.5;
        line-color: black;
        line-join: round;
      }

      [railway = 'INT-spur-siding-yard'][zoom >= 13] {
        line-width: 5.7;
        line-color: black;
        line-join: round;
      }

      [railway = 'disused'],
      [railway = 'abandoned'],
      [railway = 'construction'] { /* and not [highway] != '' */
        [zoom >= 13] {
          line-width: 6;
          line-color: black;
        }
      }
    }

    /* actually aeroway */
    [highway = 'runway'][zoom >= 14] {
      line-width: 19;
      line-color: black;
    }

    [highway = 'taxiway'][zoom >= 14] {
      line-width: 5;
      line-color: black;
      [zoom >= 15] { line-width: 7; }
    }
  }

  ::bridges-casing2 {
    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 5; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'footway'],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'cycleway'],
    [highway = 'path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'path'] {
      [zoom >= 14] {
        line-width: 2.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] { line-width: 3.5; }
    }

    ::railway {
      [railway = 'rail'][zoom >= 13] {
        line-width: 5;
        line-color: white;
        line-join: round;
      }

      [railway = 'INT-spur-siding-yard'][zoom >= 13] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }

      [railway = 'disused'],
      [railway = 'abandoned'],
      [railway = 'construction'] { /* and not [highway] != '' */
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
          line-cap: round;
        }
      }

      [railway = 'subway'][zoom >= 14] {
        line-width: 4;
        line-color: white;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
        }
      }
    }
  }

  ::bridges_fill {
    [highway = 'motorway'],
    [highway = 'motorway_link'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #809bc0;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 5.5; }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 17] { line-width: 10; }
    }

    [highway = 'trunk'],
    [highway = 'trunk_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: #a9dba9;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [highway = 'primary'],
    [highway = 'primary_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: #ec989a;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [highway = 'secondary'],
    [highway = 'secondary_link'] {
      [zoom >= 13] {
        line-width: 9;
        line-color: #fed7a5;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 10.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [highway = 'tertiary'],
    [highway = 'tertiary_link'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: #ffffb3;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [highway = 'road'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: #ddd;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [highway = 'residential'],
    [highway = 'unclassified'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 16] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [highway = 'service'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: white;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 16] { line-width: 6; }
    }

    [highway = 'pedestrian'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: #ededed;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 5.5; }
      [zoom >= 16] { line-width: 8; }
    }

    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 3;
      line-dasharray: 2,4;
      line-color: #debd9c;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 4; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: green;
        line-dasharray: 4,2;
      }
    }

    [highway = 'footway'],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: salmon;
        line-dasharray: 1,3;
        line-cap: round;
        line-join: round;
      }
    }

    [highway = 'cycleway'],
    [highway = 'path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: blue;
        line-dasharray: 1,3;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'path'][zoom >= 14] {
      line-width: 0.5;
      line-color: black;
      line-dasharray: 6,3;
      line-join: round;
      line-cap: round;
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 1.5;
      line-color: #ffcc00;
      line-dasharray: 3,4;
      line-cap: round;
      line-join: round;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 1.5;
      line-color: #996600;
      line-dasharray: 3,4;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] {
        line-width: 2;
        line-color: #b37700;
        line-dasharray: 100,0; /* i.e. none */
        line-opacity: 0.7;
      }
      [tracktype = 'grade2'] {
        line-color: #a87000;
        line-opacity: 0.8;
      }
      [tracktype = 'grade3'] {
        line-width: 2;
        line-opacity: 0.7;
        line-dasharray: 100,0; /* strange but true */
      }
      [tracktype = 'grade4'] {
        line-width: 2;
        line-dasharray: 4,7,1,5;
        line-opacity: 0.8;
      }
      [tracktype = 'grade5'] {
        line-width: 2;
        line-dasharray: 1,5;
        line-opacity: 0.8;
      }
    }

    ::railway {
      [railway = 'rail'][zoom >= 13] {
        line-width: 3;
        line-color: #999999;
        line-join: round;
        b/line-width: 1;
        b/line-color: white;
        b/line-dasharray: 8,12;
        b/line-join: round;
        [zoom >= 14] {
          b/line-dasharray: 0,11,8,1;
        }
      }

      [railway = 'INT-spur-siding-yard'][zoom >= 13] {
        line-width: 2;
        line-color: #999999;
        line-join: round;
        b/line-width: 0.8;
        b/line-color: white;
        b/line-dasharray: 0,8,11,1;
        b/line-join: round;
      }

      [railway = 'disused'],
      [railway = 'abandoned'],
      [railway = 'construction'] { /*  and not [highway] != '' */
        [zoom >= 13] {
          line-width: 2;
          line-color: grey;
          line-dasharray: 2,4;
          line-join: round;
        }
      }

      [railway = 'subway'][zoom >= 14] {
        line-width: 2;
        line-color: #999;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] {
          line-width: 2;
          line-color: #666;
        }
      }
    }

    /* these are aeroway tags */
    [highway = 'runway'][zoom >= 14] {
      line-width: 18;
      line-color: #bbc;
    }

    [highway = 'taxiway'][zoom >= 14] {
      line-width: 4;
      line-color: #bbc;
      [zoom >= 15] { line-width: 6; }
    }
  }
}

#roads {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.5;
      line-color: #809bc0;
      [zoom >= 7] { line-width: 1; }
      [zoom >= 9] { line-width: 1.4; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.4;
      line-color: #a9dba9;
      [zoom >= 7] {
        line-width: 1;
        line-color: #97d397;
      }
      [zoom >= 9] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 7][zoom < 12] {
      line-width: 0.5;
      line-color: #ec989a;
      [zoom >= 9] { line-width: 1.2; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 9][zoom < 12] {
      line-width: 1;
      line-color: #fecc8b;
      [zoom >= 11] { line-width: 2; }
    }
  }

  ::railway {
    [railway = 'rail'][zoom >= 6][zoom < 13] {
      line-width: 0.6;
      line-color: #aaa;
      [zoom >= 9] { line-width: 1; }
      [zoom >= 10] { line-width: 2; }
      [tunnel = 'yes'] {
        line-dasharray: 5,2;
      }
    }

    [railway = 'tram'],
    [railway = 'light_rail'],
    [railway = 'narrow_gauge'],
    [railway = 'funicular'] {
      [zoom >= 8][zoom < 13] {
        line-width: 1;
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa }
      }
    }

    [railway = 'preserved'][zoom >= 12] {
      line-width: 1.5;
      line-color: #aaa;
      line-join: round;
      [zoom >= 13] {
        line-width: 3;
        line-color: #999999;
        b/line-width: 1;
        b/line-color: white;
        b/line-dasharray: 0,1,8,1;
        b/line-join: round;
      }
    }

    [railway = 'INT-preserved-ssy'][zoom >= 12] {
      line-width: 1;
      line-color: #aaa;
      line-join: round;
      [zoom >= 13] {
        line-width: 2;
        line-color: #999999;
        b/line-width: 0.8;
        b/line-color: white;
        b/line-dasharray: 0,1,8,1;
        b/line-join: round;
      }
    }

    [railway = 'monorail'][zoom >= 14] {
      line-width: 4;
      line-color: #fff;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 3;
      b/line-color: #777;
      b/line-dasharray: 2,3;
      b/line-cap: round;
      b/line-join: round;
    }
  }
}

#trams {
  [railway = 'tram'][zoom >= 13] {
    line-color: #444;
    line-width: 1;
    [zoom >= 15] {
      line-width: 2;
      [bridge = 'yes'] {
        line-width: 5;
        line-color: black;
        b/line-width: 4;
        b/line-color: white;
        c/line-width: 2;
        c/line-color: #444;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads-text-ref-low-zoom {
  [highway = 'motorway'][length < 9] {
    [zoom >= 10][zoom < 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/mot_shield[length].png");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
      [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
    }
  }

  [highway = 'trunk'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/tru_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'primary'][zoom >= 11][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/pri_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'secondary'][zoom >= 12][zoom < 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/sec_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }
}

#roads-text-ref {
  [highway = 'motorway'][length < 9] {
    [zoom >= 13] {
      shield-name: "[ref]";
      shield-size: 10;
      shield-fill: #fff;
      shield-placement: line;
      shield-file: url("symbols/mot_shield[length].png");
      shield-spacing: 750;
      shield-min-distance: 30;
      shield-face-name: @bold-fonts;
      [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
      [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
    }
  }

  [highway = 'trunk'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/tru_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'primary'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/pri_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'secondary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/sec_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'tertiary'][bridge = 'no'][zoom >= 13] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/ter_shield[length].png");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @bold-fonts;
      text-min-distance: 18;
      text-halo-radius: 1;
      text-spacing: 750;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15][bridge = 'no'] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }
}

#roads-text-name {
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'tertiary'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 11;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-spacing: 300;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  /* Other roads */
  [zoom >= 15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  }
  [zoom >= 17] {
      text-size: 11;
  }
}

#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#barriers_area {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}

.directions {
  [zoom >= 16] {
    [oneway = 'yes'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      a/line-clip: false;
      b/line-width: 2;
      b/line-dasharray: 0,12,9,153;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      b/line-clip: false;
      c/line-width: 3;
      c/line-dasharray: 0,18,2,154;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      c/line-clip: false;
      d/line-width: 4;
      d/line-dasharray: 0,18,1,155;
      d/line-color: #6c70d5;
      d/line-join: bevel;
      d/line-clip: false;
    }
    [oneway = '-1'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      a/line-clip: false;
      b/line-width: 2;
      b/line-dasharray: 0,13,9,152;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      b/line-clip: false;
      c/line-width: 3;
      c/line-dasharray: 0,14,2,158;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      c/line-clip: false;
      d/line-width: 4;
      d/line-dasharray: 0,15,1,158;
      d/line-color: #6c70d5;
      d/line-join: bevel;
      d/line-clip: false;
    }
  }
}

#misc-boundaries {
  [zoom >= 7] {
    [zoom < 13] {
      polygon-opacity: 0.05;
      polygon-fill: green;
    }
    line-color: green;
    line-width: 1.5;
    line-dasharray: 4,2;
    line-opacity: 0.15;
    [zoom >= 10] {
      line-width: 3;
      line-dasharray: 6,2;
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}

#theme-park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}

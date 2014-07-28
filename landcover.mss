// --- Parks, woods, other green things ---

@forest: #a0cf85;
@grass: #cfeca8; // also meadow, common, garden, village_green, conservation
@golf_course: #b5e3b5;
@natural: #c6e4b4; // also grassland
@park: #b6fdb6; // also recreation_ground
@wood: #aed1a0;
@vineyard: #abdf96;

// --- sports ---

@stadium: #3c9; // also sports_centre
@track: #74dcba;
@pitch: #8ad3af;

// --- "base" landuses ---

@residential: #E1E1E1;      // Lch(89,0,0)
@residential-line: #B9B9B9; // Lch(75,0,0)
@retail: #FFD6D1;           // Lch(89,16,30)
@retail-line: #D99C95;      // Lch(70,25,30)
@commercial: #F2DAD9;       // Lch(89,8.5,25)
@commercial-line: #D1B2B0;  // Lch(75,12,25)
@industrial: #EBDBE8;       // Lch(89,9,330)
@industrial-line: #C6B3C3;  // Lch(75,11,330)
@railway: @industrial;
@railway-line: @industrial-line;
@farmland: #EDDDC9;         // Lch(89,12,80) (Also used for farm)
@farmland-line: #C8B69E;    // Lch(75,15,80)

@farmyard: #EFD6B5;         // Lch(87,20,80)
@farmyard-line: #D1B48C;    // Lch(75,25,80)

// --- Other ----

@aerodrome: #ccc;
@allotments: #e5c7ab;
@apron: #e9d1ff;
@attraction: #f2caea;
@barracks: #ff8f8f;
@campsite: #ccff99; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@construction: #9d9d6c;
@danger_area: pink;
@desert: #e3b57a;
@field: #660;
@garages: #996;
@heath: #d6d99f;
@parking: #f7efb7;
@playground: #ccfff1;
@power: #bbb;
@rest_area: #efc8c8; // also services
@sand: #ffdf88;
@school: #f0f0d8; // also university, college, hospital, kindergarten

#landcover {
 [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: @water-color;
    line-color: saturate(darken(@water-color, 40%), 30%);
    line-width: 0.5;
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: @playground;
    line-color: saturate(darken(@playground, 60%), 30%);
    line-width: 0.3;
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 13] {
      polygon-fill: @campsite;
      polygon-opacity: 0.5;
      line-color: saturate(darken(@campsite, 60%), 30%);
      line-width: 0.3;
    }
  }

  [feature = 'tourism_attraction'][zoom >= 10] {
    polygon-fill: @attraction;
  }

  [feature = 'landuse_quarry'][zoom >= 11] {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 10][zoom < 13] {
      polygon-fill: @vineyard;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
    }
  }

  [feature = 'landuse_orchard'][zoom >= 10] {
    polygon-pattern-file: url('symbols/orchard.png');
  }

  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @cemetery;
    }
    [zoom >= 14] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/cemetery_jewish.18.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }
    }
  }

  [feature = 'landuse_residential'][zoom >= 10] {
    polygon-fill: @residential;
    [zoom >= 16] {
      line-width: .5;
      line-color: @residential-line;
      [name != ''] {
        line-width: 0.7;
      }

    }
  }

  [feature = 'landuse_garages'][zoom >= 12] {
    polygon-fill: @garages;
    polygon-opacity: 0.2;
  }

  [feature = 'military_barracks'][zoom >= 10] {
    polygon-fill: @barracks;
  }

  [feature = 'landuse_field'] {
    [zoom >= 10] {
      polygon-fill: @field;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: saturate(darken(@field, 40%), 20%);
      }
    }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 9][zoom < 11] {
      polygon-fill: @danger_area;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'landuse_grass'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: @park;
      polygon-opacity: 0.6;
    }
  }

  [feature = 'tourism_zoo'][zoom >= 10] {
    polygon-pattern-file: url('symbols/zoo.png');
  }

  [feature = 'leisure_common'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_garden'][zoom >= 10] {
    polygon-fill: @grass;
  }

  [feature = 'leisure_golf_course'][zoom >= 10] {
    polygon-fill: @golf_course;
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: @allotments;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
    }
  }

  [feature = 'landuse_forest'] {
    [zoom >= 8] {
      polygon-fill: @forest;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/forest.png');
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 9] {
    polygon-fill: @farmyard;
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @farmyard-line;
        [name != ''] {
          line-width: 0.7;
        }
      }
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'] {
    [zoom >= 9] {
      polygon-fill: @farmland;
      [zoom >= 16] {
        line-width: .5;
        line-color: @farmland-line;
      }
    }
  }

  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_conservation'] {
    [zoom >= 10] {
      polygon-fill: @grass;
    }
  }

  [feature = 'landuse_village_green'][zoom >= 11] {
    polygon-fill: @grass;
  }

  [feature = 'landuse_retail'][zoom >= 10] {
    polygon-fill: @retail;
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @retail-line;
      [name != ''] {
        line-width: 0.7;
      }
    }
  }

  [feature = 'landuse_industrial'][zoom >= 10] {
    polygon-fill: @industrial;
    [zoom >= 16] {
      line-width: .5;
      line-color: @industrial-line;
      [name != ''] {
        line-width: 0.7;
      }
    }
  }

  [feature = 'landuse_railway'][zoom >= 10] {
    polygon-fill: @railway;
    [zoom >= 16][name != ''] {
      line-width: 0.7;
      line-color: @railway-line;
    }
  }

  [feature = 'power_station'][zoom >= 10],
  [feature = 'power_generator'][zoom >= 10],
  [feature = 'power_sub_station'][zoom >= 13],
  [feature = 'power_substation'][zoom >= 13] {
      polygon-fill: @power;
      [zoom >= 12] {
        line-width: 0.4;
        line-color: darken(@power, 40%);
      }
  }

  [feature = 'landuse_commercial'][zoom >= 10] {
    polygon-fill: @commercial;
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @commercial-line;
      [name != ''] {
        line-width: 0.7;
      }

    }
  }

  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: @construction;
      polygon-opacity: 0.7;
    }
  }

  [feature = 'natural_wood'] {
    [zoom >= 8] {
      polygon-fill: @wood;
    }
  }

  [feature = 'natural_desert'][zoom >= 8] {
    polygon-fill: @desert;
  }

  [feature = 'natural_sand'][zoom >= 10] {
    polygon-fill: @sand;
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: @heath;
  }

  [feature = 'natural_grassland'][zoom >= 10] {
    polygon-fill: #c6e4b4;
  }

  [feature = 'natural_scrub'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #b5e3b5;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    }
  }

  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_hospital'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 10] {
      polygon-fill: @school;
      [zoom >= 12] {
        line-width: 0.3;
        line-color: brown;
      }
    }
  }

  [feature = 'amenity_parking'][zoom >= 10] {
    polygon-fill: @parking;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: saturate(darken(@parking, 40%), 20%);
    }
  }

  [feature = 'aeroway_apron'][zoom >= 12] {
    polygon-fill: @apron;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 12] {
    polygon-fill: @aerodrome;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: saturate(darken(@aerodrome, 40%), 20%);
  }

  [feature = 'natural_beach'][zoom >= 13] {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 14] {
      polygon-fill: @rest_area;
    }
  }

  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
    }
  }

  [feature = 'leisure_track'][zoom >= 10] {
    polygon-fill: @track;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@track, 40%), 20%);
    }
  }

  [feature = 'leisure_pitch'][zoom >= 10] {
    polygon-fill: @pitch;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@pitch, 40%), 20%);
    }
  }
}

/* man_made=cutline */
#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @land-color;
    [zoom >= 16] {
      line-width: 6;
    }
  }
}

#landuse-overlay {
  [landuse = 'military'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/military_red_hatch.png');
    polygon-pattern-alignment: global;
    line-color: #f55;
    line-width: 3;
    line-opacity: 0.329;
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

#area-barriers {
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

#tree-row {
  [natural = 'tree_row'][zoom >= 16] {
    line-pattern-file: url('symbols/tree_row.png');
    [zoom >= 17] {
      line-pattern-file: url('symbols/tree_row2.png');
    }
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

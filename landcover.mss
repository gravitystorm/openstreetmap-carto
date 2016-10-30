// --- Parks, woods, other green things ---

@grass: #cdebb0; // also meadow, common, garden, village_green
@scrub: #b5e3b5;
@forest: #add19e;       // Lch(80,30,135)
@forest-text: #46673b;  // Lch(40,30,135)
@park: #c8facc;         // Lch(94,30,145) also recreation_ground
@orchard: #aedfa3;

// --- Reliefs

@ridge-text:          #7A2F18;
@valley-text:         #305040;
@mountain_range-text: #C03A01;
@massif-text:         #C03A01;
@cliff-text:          #999;
@arete-text:          #800000;
@couloir-text:        #0080C0;
@dale-text:           #008000;
@gorge-text:          #800040;

// --- "base" landuses ---

@residential: #e0dfdf;      // Lch(89,0,0)
@residential-line: #B9B9B9; // Lch(75,0,0)
@retail: #FFD6D1;           // Lch(89,16,30)
@retail-line: #D99C95;      // Lch(70,25,30)
@commercial: #F2DAD9;       // Lch(89,8.5,25)
@commercial-line: #D1B2B0;  // Lch(75,12,25)
@industrial: #EBDBE8;       // Lch(89,9,330)
@industrial-line: #C6B3C3;  // Lch(75,11,330)
@railway: @industrial;
@railway-line: @industrial-line;
@farmland: #fbecd7;         // Lch(94,12,80) (Also used for farm)
@farmland-line: #d6c4ab;    // Lch(80,15,80)

@farmyard: #f5dcba;         // Lch(89,20,80)
@farmyard-line: #D1B48C;    // Lch(75,25,80)

// --- Other ----

@aerodrome: #e9e7e2;
@allotments: #eecfb3;       // Lch(85,19,70)
@apron: #e9d1ff;
@bare_ground: #eee5dc;
@campsite: #def6c0; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@construction: #c7c7b4; // also brownfield
@danger_area: pink;
@garages: #dfddce;
@heath: #d6d99f;
@mud: rgba(203,177,154,0.3); // produces #e6dcd1 over @land
@parking: #f7efb7;
@place_of_worship: #cdccc9;
@place_of_worship_outline: #111;
@playground: lighten(@park, 5%);
@power: darken(@industrial, 5%);
@power-line: darken(@industrial-line, 5%);
@rest_area: #efc8c8; // also services
@sand: #f5e9c6;
@societal_amenities: #f0f0d8;
@station: #d4aaaa;
@tourism: #734a08;
@quarry: #c5c3c3;
@military: #f55;
@beach: #fff1ba;

// --- sports ---

@pitch: #80d7b5;
@track: @pitch;
@stadium: @societal_amenities; // also sports_centre
@golf_course: #b5e3b5;

#landcover-low-zoom[zoom < 10],
#landcover[zoom >= 10] {

  ::first {
    [feature = 'wetland_mud'],
    [feature = 'wetland_tidalflat'] {
      [zoom >= 9] {
        polygon-fill: @mud;
        [way_pixels >= 4]  { polygon-gamma: 0.75; }
        [way_pixels >= 64] { polygon-gamma: 0.3;  }
      }
    }
  }

  [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: @water-color;
    line-color: saturate(darken(@water-color, 40%), 30%);
    line-width: 0.5;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: @playground;
    line-color: darken(@playground, 60%);
    line-width: 0.3;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 10] {
      polygon-fill: @campsite;
      line-color: saturate(darken(@campsite, 60%), 30%);
      line-width: 0.3;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_quarry'][zoom >= 10] {
    polygon-fill: @quarry;
    polygon-pattern-file: url('symbols/quarry.png');
    line-width: 0.5;
    line-color: grey;
    [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
    [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 10] {
      polygon-fill: @orchard;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/vineyard.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_orchard'] {
    [zoom >= 10] {
      polygon-fill: @orchard;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/orchard.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 10] {
      polygon-fill: @cemetery;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/grave_yard_jewish.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard_christian.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }
      [religion = 'jewish'],
      [religion = 'christian'],
      [religion = 'INT-generic'] {
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }
  }

  [feature = 'amenity_place_of_worship'][zoom >= 13] {
    polygon-fill: @place_of_worship;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @place_of_worship_outline;
      line-width: 0.3;
      line-clip: false;
    }
  }

  [feature = 'amenity_prison'][zoom >= 10][way_pixels > 75] {
    polygon-pattern-file: url('symbols/grey_vertical_hatch.png');
    polygon-pattern-alignment: global;
    line-color: #888;
    line-width: 3;
    line-opacity: 0.329;
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
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'landuse_garages'][zoom >= 13] {
    polygon-fill: @garages;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 9][zoom < 11] {
      polygon-fill: @danger_area;
      polygon-opacity: 0.3;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: @park;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'leisure_dog_park'] {
    [zoom >= 10] {
      polygon-fill: @playground;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 16] {
      polygon-pattern-file: url('symbols/dog_park.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'leisure_golf_course'][zoom >= 10],
  [feature = 'leisure_miniature_golf'][zoom >= 15] {
    polygon-fill: @golf_course;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10] {
      polygon-fill: @allotments;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_forest'],
  [feature = 'natural_wood'] {
    [zoom >= 8] {
      polygon-fill: @forest;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 10] {
    polygon-fill: @farmyard;
      [zoom >= 16] {
        line-width: 0.5;
        line-color: @farmyard-line;
        [name != ''] {
          line-width: 0.7;
        }
      }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'],
  [feature = 'landuse_greenhouse_horticulture'] {
    [zoom >= 10] {
      polygon-fill: @farmland;
      [zoom >= 16] {
        line-width: .5;
        line-color: @farmland-line;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'natural_grassland'],
  [feature = 'landuse_grass'],
  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_village_green'],
  [feature = 'leisure_common'],
  [feature = 'leisure_garden'] {
    [zoom >= 10] {
      polygon-fill: @grass;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_retail'][zoom >= 10] {
    polygon-fill: @retail;
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @retail-line;
      [name != ''] {
        line-width: 0.7;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
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
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'landuse_railway'][zoom >= 10] {
    polygon-fill: @railway;
    [zoom >= 16][name != ''] {
      line-width: 0.7;
      line-color: @railway-line;
    }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'power_station'][zoom >= 10],
  [feature = 'power_generator'][zoom >= 10],
  [feature = 'power_sub_station'][zoom >= 13],
  [feature = 'power_substation'][zoom >= 13] {
    polygon-fill: @industrial;
    [zoom >= 15] {
      polygon-fill: @power;
    }
    [zoom >= 16] {
      line-width: 0.5;
      line-color: @power-line;
      [name != ''] {
        line-width: 0.7;
      }
    }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
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
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'landuse_brownfield'],
  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: @construction;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'landuse_landfill'] {
    [zoom >= 10] {
      polygon-fill: #b6b592;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'natural_bare_rock'][zoom >= 9] {
    polygon-fill: @bare_ground;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/rock_overlay.png');
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

  [feature = 'natural_scree'],
  [feature = 'natural_shingle'] {
    [zoom >= 9] {
      polygon-fill: @bare_ground;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 13] {
        polygon-pattern-file: url('symbols/scree_overlay.png');
        [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
        [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
      }
    }
  }

  [feature = 'natural_sand'][zoom >= 9] {
    polygon-fill: @sand;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: @heath;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'natural_scrub'] {
    [zoom >= 10] {
      polygon-fill: @scrub;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }
 
  [feature = 'wetland_swamp'][zoom >= 8] {
    polygon-fill: @forest;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'wetland_bog'],
  [feature = 'wetland_string_bog'] {
    [zoom >= 10] {
      polygon-fill: @heath;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'wetland_wet_meadow'],
  [feature = 'wetland_marsh'] {
    [zoom >= 10] {
      polygon-fill: @grass;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'amenity_hospital'],
  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 10] {
      polygon-fill: @residential;
      [zoom >= 12] {
        polygon-fill: @societal_amenities;
        [zoom >= 13] {
          line-width: 0.3;
          line-color: brown;
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'amenity_parking'][zoom >= 10],
  [feature = 'amenity_bicycle_parking'][zoom >= 10],
  [feature = 'amenity_motorcycle_parking'][zoom >= 10] {
    polygon-fill: @parking;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: saturate(darken(@parking, 40%), 20%);
    }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'aeroway_apron'][zoom >= 10] {
    polygon-fill: @apron;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'aeroway_aerodrome'][zoom >= 10] {
    polygon-fill: @aerodrome;
    line-width: 0.2;
    line-color: saturate(darken(@aerodrome, 40%), 20%);
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'natural_beach'][zoom >= 10],
  [feature = 'natural_shoal'][zoom >= 10] {
    polygon-fill: @beach;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 10] {
      polygon-fill: @rest_area;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'railway_station'][zoom >= 10] {
    polygon-fill: @station;
  }

  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'leisure_track'][zoom >= 10] {
    polygon-fill: @track;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@track, 30%), 20%);
    }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'leisure_pitch'][zoom >= 10] {
    polygon-fill: @pitch;
    [zoom >= 15] {
      line-width: 0.5;
      line-color: saturate(darken(@pitch, 30%), 20%);
    }
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
}

/* man_made=cutline */
#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: @grass;
    [zoom >= 16] {
      line-width: 6;
      [zoom >= 18] {
        line-width: 12;
      }
    }
  }
}

#landcover-area-symbols {
  [int_wetland != null][zoom >= 10] {
    polygon-pattern-file: url('symbols/wetland.png');
    polygon-pattern-alignment: global;
  }
  [natural = 'reef'][zoom >= 10] {
    polygon-pattern-file: url('symbols/reef.png');
    polygon-pattern-alignment: global;
  }
  [zoom >= 14] {
    [int_wetland = 'marsh'],
    [int_wetland = 'saltmarsh'],
    [int_wetland = 'wet_meadow'],
    [int_wetland = 'fen'] {
      polygon-pattern-file: url('symbols/wetland_marsh.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'reedbed'] {
      polygon-pattern-file: url('symbols/wetland_reed.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'mangrove'] {
      polygon-pattern-file: url('symbols/wetland_mangrove.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'swamp'] {
      polygon-pattern-file: url('symbols/wetland_swamp.png');
      polygon-pattern-alignment: global;
    }
    [int_wetland = 'bog'],
    [int_wetland = 'string_bog'] {
      polygon-pattern-file: url('symbols/wetland_bog.png');
      polygon-pattern-alignment: global;
    }
    [natural = 'beach'],
    [natural = 'shoal'] {
      [surface = 'sand'] {
        polygon-pattern-file: url('symbols/beach.png');
        polygon-pattern-alignment: global;
      }
      [surface = 'gravel'],
      [surface = 'fine_gravel'],
      [surface = 'pebbles'],
      [surface = 'pebblestone'],
      [surface = 'shingle'],
      [surface = 'stones'],
      [surface = 'shells'] {
        polygon-pattern-file: url('symbols/beach_coarse.png');
        polygon-pattern-alignment: global;
      }
    }
  }
  //Also landuse = forest, converted in the SQL
  [natural = 'wood'][zoom >= 13]::wood {
    polygon-pattern-file: url('symbols/forest.png'); // Lch(55,30,135)
    polygon-pattern-alignment: global;
    opacity: 0.4; // The entire layer has opacity to handle overlapping forests
  }
}

#landuse-overlay {
  [landuse = 'military'][zoom >= 7][way_pixels > 900],
  [landuse = 'military'][zoom >= 8][way_pixels > 100],
  [landuse = 'military'][zoom >= 10][way_pixels > 75] {
    polygon-pattern-file: url('symbols/military_red_hatch.png');
    polygon-pattern-alignment: global;
    line-color: @military;
    line-width: 3;
    line-opacity: 0.329;
  }
}

#relief-symbol {
  [natural = 'arete'][zoom >= 12] {
    line-pattern-smooth: 0.15;
    line-pattern-file: url('symbols/arete_small.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/arete_medium.png');
    }
    [zoom >= 16] {
      line-pattern-file: url('symbols/arete_large.png');
    }
  }
  [natural = 'ridge'][zoom >= 12] {
    line-pattern-smooth: 0.15;
    line-pattern-file: url('symbols/ridge_small.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/ridge_medium.png');
    }
    [zoom >= 16] {
      line-pattern-file: url('symbols/ridge_large.png');
    }
  }
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/embankment.png');
  }
}

#area-barriers {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [feature = 'barrier_hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [feature = 'barrier_embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [feature = 'barrier_hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
  [feature = 'historic_citywalls'],
  [feature = 'barrier_city_wall'] {
    [zoom >= 15] {
      line-width: 1.5;
      line-color: lighten(#444, 30%);
    }

    [zoom >= 17] {
      line-width: 3;
      barrier/line-width: 0.4;
      barrier/line-color: #444;
    }
  }
}

#tourism-boundary {
  [tourism = 'zoo'][zoom >= 10][way_pixels >= 20],
  [tourism = 'theme_park'][zoom >= 10][way_pixels >= 20] {
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: @tourism;
    a/line-opacity: 0.5;
    a/line-join: round;
    a/line-cap: round;
    [zoom >= 17],
    [way_pixels >= 60] {
      b/line-width: 4;
      b/line-offset: -2;
      b/line-color: @tourism;
      b/line-opacity: 0.3;
      b/line-join: round;
      b/line-cap: round;    
    }
    [zoom >= 17] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

#text-point[zoom >= 15],
#text-line {
  [feature = 'natural_cliff'][zoom >= 11],
  [feature = 'man_made_embankment'][zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #999;
    text-size: 10;
    text-face-name: @book-fonts;
    text-dy: 8;
    text-vertical-alignment: middle;
    text-spacing: 400;
    #text-line {
      text-placement: line;
    }
    #text-point {
      text-placement: point;
      text-dy: 8;
      text-size: 10;
    }
  }
  [feature = 'natural_dale'][zoom >= 13],
  [feature = 'natural_gorge'][zoom >= 14],
  [feature = 'natural_couloir'][zoom >= 14],
  [feature = 'natural_ridge'][zoom >= 8]::foreground,
  [feature = 'natural_arete'][zoom >= 8]::foreground,
  [feature = 'natural_massif'][zoom >= 15]#text-point, // node visibility given to mappers at high zoom, to help debugging tags to be changed to polylines
  [feature = 'natural_mountain_range'][zoom >= 15]#text-point, // node visibility given to mappers at high zoom, to help debugging tags to be changed to polylines
  [feature = 'natural_valley'][zoom >= 8]::foreground {
    [feature = 'natural_dale']    { text-fill: @dale-text; }
    [feature = 'natural_gorge']   { text-fill: @gorge-text; }
    [feature = 'natural_couloir'] { text-fill: @couloir-text; }
    [feature = 'natural_ridge']   { text-fill: @ridge-text; }
    [feature = 'natural_arete']   { text-fill: @arete-text; }
    [feature = 'natural_valley']  { text-fill: @valley-text; }
    [feature = 'natural_massif'] {
      text-fill: @massif-text;
      text-transform: uppercase;
    }
    [feature = 'natural_mountain_range'] {
      text-fill: @mountain_range-text;
      text-transform: uppercase;
    }
    // general settings
    text-halo-radius: 2;
    text-halo-fill: rgba(255,255,255,0.6);
    text-opacity: 1;
    [zoom >= 10] {
      text-opacity: 0.7;
    }
    text-dx: 8;
    text-dy: 8;
    text-spacing: 760;
    text-face-name: @oblique-fonts;
    text-wrap-width: 2;
    text-name: "[name]";
    [zoom >= 10] {
      text-size: 10;
      text-opacity: 0.4;
    }
    [zoom >= 13] {
      text-size: 13;
      text-character-spacing: 5;
      text-opacity: 0.6;
    }
    [zoom >= 14] {
      text-size: 12;
      text-character-spacing: 3;
    }
    [zoom >= 15] {
      text-size: 16;
      text-dx: 15;
      text-dy: 15;
      text-character-spacing: 6;
    }
    [zoom >= 16] {
      text-size: 18;
      text-character-spacing: 12;
    }
    #text-line {
      text-max-char-angle-delta: 30;
      text-placement: line;
      text-placement-type: simple;
      [zoom < 15] {
        text-placements: "N,S,E,W,NE,SE,NW,SW,18,16,14,12,10,9,8";
      }
      [way_length > 60] {
        text-dx: 11;
        text-dy: 11;
        text-size: 11;
        text-character-spacing: 3;
        text-wrap-width: 100;
        text-opacity: 0.5;
      }
      [zoom = 10][way_length > 125] {
        text-character-spacing: 2;
        text-size: 13;
      }
      [zoom = 11][way_length > 250] {
        text-size: 13;
        text-character-spacing: 6;
        text-opacity: 0.6;
      }
      [zoom = 12][way_length > 500] {
        text-size: 14;
        text-character-spacing: 7;
        text-opacity: 0.6;
        text-transform: uppercase;
      }
      [zoom = 13][way_length > 1000] {
        text-size: 15;
        text-character-spacing: 10;
        text-opacity: 0.6;
        text-max-char-angle-delta: 10;
        text-transform: uppercase;
      }
      [zoom = 14][way_length > 2000] {
        text-size: 20;
        text-character-spacing: 10;
        text-opacity: 0.5;
        text-max-char-angle-delta: 10;
        text-transform: uppercase;
        text-placement-type: dummy;
      }
      [zoom >= 15][way_length > 4000] {
        text-size: 25;
        text-character-spacing: 20;
        text-opacity: 0.5;
        text-max-char-angle-delta: 10;
        text-transform: uppercase;
        text-placement-type: dummy;
      }
      [zoom < 16][name=~'^.{14,}$'] { // improve probability for long names (>=14 characters) to be shown
        text-max-char-angle-delta: 30;
        text-transform: none;
      }
    }
    [feature = 'natural_dale'],
    [feature = 'natural_gorge'],
    [feature = 'natural_couloir'],
    [feature = 'natural_arete'],
    [feature = 'natural_ridge'] {
      [zoom >= 10] { text-size: 10; }
      [zoom >= 11] { text-size: 12; }
      [zoom >= 12] { text-size: 12; }
      [zoom >= 13] { text-size: 12; }
      [zoom >= 14] { text-size: 12; }
      [zoom >= 15] { text-size: 15; }
      [zoom >= 16] { text-size: 18; }
    }
    #text-point { // nodes are only shown for debugging purpose, with fixed rendering
      text-placement: point;
      text-character-spacing: 0;
      text-size: 10;
    }
  }
}

#landcover-low-zoom[zoom < 10]::foreground,
#amenity-points-poly[zoom >= 10] {
  [feature = 'natural_dale'][zoom >= 14],
  [feature = 'natural_gorge'][zoom >= 15],
  [feature = 'natural_couloir'][zoom >= 15],
  [feature = 'natural_arete'][zoom >= 15],
  [feature = 'natural_ridge'][zoom >= 15],
  [feature = 'natural_massif'][zoom >= 8],
  [feature = 'natural_mountain_range'][zoom >= 8][zoom < 13],
  [feature = 'natural_valley'] {
    text-halo-radius: 2.5;
    text-halo-fill: rgba(255,255,255,0.6);
    text-vertical-alignment: middle;
    text-opacity: 1;
    text-spacing: 760;
    text-face-name: @oblique-fonts;
    text-wrap-width: 2;
    text-placement: interior;
    text-placement-type: simple;
    text-size: 8;
    [zoom >= 9] { text-size: 9; }
    [zoom < 11] { text-placements: "N,S,E,W,NE,SE,NW,SW,10,9,8,7"; }
    [zoom >= 10] {
      text-size: 10;
      text-opacity: 0.7;
      [way_pixels > 4000]               { text-size: 12; }
      [way_pixels > 20000][zoom >= 10]  { text-size: 14; }
      [way_pixels > 60000][zoom >= 11]  { text-size: 17; }
      [way_pixels > 200000][zoom >= 12] { text-size: 21; }
      [way_pixels > 500000][zoom >= 13] { text-size: 25; }
    }
    text-name: "[name]";
    [feature = 'natural_dale']    { text-fill: @dale-text; }
    [feature = 'natural_gorge']   { text-fill: @gorge-text; }
    [feature = 'natural_couloir'] { text-fill: @couloir-text; }
    [feature = 'natural_ridge']   { text-fill: @ridge-text; }
    [feature = 'natural_arete']   { text-fill: @arete-text; }
    [feature = 'natural_massif'] {
      text-fill: @massif-text;
      text-transform: uppercase;
      [zoom >= 9] {
        text-character-spacing: 3;
      }
    }
    [feature = 'natural_mountain_range'] {
      text-fill: @mountain_range-text;
      text-transform: uppercase;
      [zoom >= 9] { text-character-spacing: 3; }
    }
    [feature = 'natural_valley']  { text-fill: @valley-text; }
  }
}

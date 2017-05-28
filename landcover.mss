// --- Parks, woods, other green things ---

@grass: #cdebb0; // also meadow, common, garden, village_green
@scrub: #b5e3b5;
@forest: #add19e;       // Lch(80,30,135)
@forest-text: #46673b;  // Lch(40,30,135)
@park: #c8facc;         // Lch(94,30,145) also recreation_ground
@orchard: #aedfa3; // also vineyard, plant_nursery

// --- "Base" landuses ---

@residential: #e0dfdf;      // Lch(89,0,0)
@residential-line: #b9b9b9; // Lch(75,0,0)
@retail: #ffd6d1;           // Lch(89,16,30)
@retail-line: #d99c95;      // Lch(70,25,30)
@commercial: #f2dad9;       // Lch(89,8.5,25)
@commercial-line: #d1b2b0;  // Lch(75,12,25)
@industrial: #ebdbe8;       // Lch(89,9,330) (Also used for railway)
@industrial-line: #c6b3c3;  // Lch(75,11,330) (Also used for railway-line)
@farmland: #fbecd7;         // Lch(94,12,80)
@farmland-line: #d6c4ab;    // Lch(80,15,80)
@farmyard: #f5dcba;         // Lch(89,20,80)
@farmyard-line: #d1b48c;    // Lch(75,25,80)

// --- Transport ----

@aerodrome: #e9e7e2;
@apron: #e9d1ff;
@garages: #dfddce;
@parking: #f7efb7;
@railway: @industrial;
@railway-line: @industrial-line;
@rest_area: #efc8c8; // also services
@station: #d4aaaa;

// --- Other ----

@allotments: #eecfb3;       // Lch(85,19,70)
@bare_ground: #eee5dc;
@campsite: #def6c0; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@construction: #c7c7b4; // also brownfield
@danger_area: pink;
@heath: #d6d99f;
@mud: rgba(203,177,154,0.3); // produces #e6dcd1 over @land
@place_of_worship: #cdccc9;
@place_of_worship_outline: #111;
@playground: lighten(@park, 5%);
@power: darken(@industrial, 5%);
@power-line: darken(@industrial-line, 5%);
@sand: #f5e9c6;
@societal_amenities: #f0f0d8;
@tourism: #734a08;
@quarry: #c5c3c3;
@military: #f55;
@beach: #fff1ba;

// --- Sports ---

@pitch: #aae0cb; // also track
@track: @pitch;
@stadium: @societal_amenities; // also fitness_centre and sports_centre
@golf_course: #b5e3b5;

// --- Text ---

@landcover-font-size: 10;
@landcover-font-size-big: 12;
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size: 25;
@landcover-wrap-width-size-big: 35;
@landcover-wrap-width-size-bigger: 45;
@landcover-face-name: @oblique-fonts;

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

  [feature = 'landuse_quarry'][zoom >= 10] {
    polygon-fill: @quarry;
    polygon-pattern-file: url('symbols/quarry.png');
    [zoom >= 13] {
      line-width: 0.5;
      line-color: grey;
    }
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

  [feature = 'landuse_plant_nursery'] {
    [zoom >= 10] {
      polygon-fill: @orchard;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/plant_nursery.png');
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

  [feature = 'natural_scrub'][zoom >= 10] {
    polygon-fill: @scrub;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
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
  [feature = 'wetland_fen'],
  [feature = 'wetland_marsh'] {
    [zoom >= 10] {
      polygon-fill: @grass;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'amenity_hospital'],
  [feature = 'amenity_clinic'],
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
          line-color: darken(@societal_amenities, 35%);
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

  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'] {
    [zoom >= 10] {
      polygon-fill: @stadium;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
      [zoom >= 13] {
        line-width: 0.3;
        line-color: darken(@stadium, 35%);
      }
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

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 10] {
      polygon-fill: @campsite;
      [zoom >= 13] {
        line-color: saturate(darken(@campsite, 60%), 30%);
        line-width: 0.3;
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
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
    [int_wetland = 'wet_meadow'] {
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
    [int_wetland = 'fen'],
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
    [natural = 'scrub'] {
      polygon-pattern-file: url('symbols/scrub.png');
      polygon-pattern-alignment: global;
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

#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.svg');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.svg');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/embankment.svg');
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

#text-line {
  [feature = 'natural_cliff'][zoom >= 15],
  [feature = 'man_made_embankment'][zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #999;
    text-size: 10;
    text-face-name: @book-fonts;
    text-placement: line;
    text-dy: 8;
    text-vertical-alignment: middle;
    text-spacing: 400;
  }
}

#trees[zoom >= 16] {
  ::canopy {
    opacity: 0.3;
    [natural = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 17] { line-width: 5; }
      [zoom >= 18] { line-width: 10; }
      [zoom >= 19] { line-width: 15; }
      [zoom >= 20] { line-width: 30; }
    }
    [natural = 'tree'] {
      marker-fill: green;
      marker-allow-overlap: true;
      marker-line-width: 0;
      marker-width: 2.5;
      marker-height: 2.5;
      marker-ignore-placement: true;
      [zoom >= 17] {
        marker-width: 5;
        marker-height: 5;
      }
      [zoom >= 18] {
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 19] {
        marker-width: 15;
        marker-height: 15;
      }
      [zoom >= 20] {
        marker-width: 30;
        marker-height: 30;
      }
    }
  }
  [natural = 'tree']::trunk {
    [zoom >= 18] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;
    }
  }
}

.text-low-zoom[zoom < 10],
.text[zoom >= 10] {
  [feature = 'landuse_military'],
  [feature = 'natural_wood'],
  [feature = 'landuse_forest'],
  [feature = 'boundary_national_park'],
  [feature = 'leisure_nature_reserve'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17] {  
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'landuse_military'] {
        text-fill: darken(@military, 40%);
      }
      [feature = 'natural_wood'],
      [feature = 'landuse_forest'] {
        text-fill: @forest-text;
      }
      [feature = 'boundary_national_park'],
      [feature = 'leisure_nature_reserve'] {
        text-fill: darken(@park, 70%);
      }
    }
  }

  [feature = 'military_danger_area'][is_building = 'no'] {
    [zoom >= 9][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: darken(@danger_area, 40%);
      text-face-name: @bold-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'landuse_garages'][is_building = 'no'] {
    [zoom >= 13][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: darken(@garages, 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_wetland'],
  [feature = 'natural_marsh'],
  [feature = 'natural_mud'],
  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'],
  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_village_green'],
  [feature = 'leisure_common'],
  [feature = 'leisure_garden'],
  [feature = 'landuse_quarry'],
  [feature = 'landuse_vineyard'],
  [feature = 'landuse_orchard'],
  [feature = 'landuse_plant_nursery'],
  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'],
  [feature = 'landuse_residential'],
  [feature = 'landuse_meadow'],
  [feature = 'natural_grassland'],
  [feature = 'landuse_grass'],
  [feature = 'landuse_allotments'],
  [feature = 'landuse_farmyard'],
  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'],
  [feature = 'landuse_greenhouse_horticulture'],
  [feature = 'shop_mall'],
  [feature = 'landuse_retail'],
  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'],
  [feature = 'landuse_commercial'],
  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_theme_park'],
  [feature = 'tourism_zoo'],
  [feature = 'tourism_attraction'],
  [feature = 'amenity_kindergarten'],
  [feature = 'amenity_school'],
  [feature = 'amenity_college'],
  [feature = 'amenity_university'],
  [feature = 'natural_heath'],
  [feature = 'natural_scrub'],
  [feature = 'natural_beach'],
  [feature = 'natural_shoal'],
  [feature = 'natural_reef'],
  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'],
  [feature = 'leisure_track'],
  [feature = 'leisure_dog_park'],
  [feature = 'leisure_playground'],
  [feature = 'leisure_pitch'],
  [feature = 'leisure_water_park'] {
    [zoom >= 10][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'],
    [zoom >= 10][way_pixels > 3000][feature = 'shop_mall'],
    [zoom >= 17][feature = 'shop_mall'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'natural_reef'],
      [feature = 'natural_wetland'],
      [feature = 'natural_marsh'],
      [feature = 'natural_mud'] {
        text-fill: @wetland-text;
      }
      [feature = 'leisure_park'],
      [feature = 'leisure_recreation_ground'],
      [feature = 'landuse_recreation_ground'],
      [feature = 'landuse_village_green'],
      [feature = 'leisure_common'],
      [feature = 'leisure_garden'],
      [feature = 'leisure_water_park'],
      [feature = 'leisure_playground'] {
        text-fill: darken(@park, 60%);
        [feature = 'leisure_playground'][access != ''][access != 'permissive'][access != 'yes'] {
          text-fill: darken(@park, 50%);
        }
      }
      [feature = 'landuse_quarry'] {
        text-fill: darken(@quarry, 60%);
      }
      [feature = 'landuse_vineyard'],
      [feature = 'landuse_orchard'],
      [feature = 'landuse_plant_nursery'] {
        text-fill: darken(@orchard, 50%);
      }
      [feature = 'landuse_cemetery'],
      [feature = 'amenity_grave_yard'] {
        text-fill: darken(@cemetery, 50%);
        text-halo-radius: @standard-halo-radius * 1.5; /* extra halo needed to overpower the cemetery polygon pattern */
      }
      [feature = 'landuse_residential'] {
        text-fill: darken(@residential, 50%);
      }
      [feature = 'landuse_meadow'],
      [feature = 'natural_grassland'],
      [feature = 'landuse_grass'] {
        text-fill: darken(@grass, 50%);
      }
      [feature = 'landuse_allotments'] {
        text-fill: darken(@allotments, 50%);
      }
      [feature = 'landuse_farmyard'] {
        text-fill: darken(@farmyard, 50%);
      }
      [feature = 'landuse_farm'],
      [feature = 'landuse_farmland'],
      [feature = 'landuse_greenhouse_horticulture'] {
        text-fill: darken(@farmland, 50%);
      }
      [feature = 'shop_mall'],
      [feature = 'landuse_retail'] {
        text-fill: darken(@retail, 50%);
      }
      [feature = 'landuse_industrial'],
      [feature = 'landuse_railway'] {
        text-fill: darken(@industrial, 60%);
      }
      [feature = 'landuse_commercial'] {
        text-fill: darken(@commercial, 60%);
      }
      [feature = 'landuse_brownfield'],
      [feature = 'landuse_landfill'],
      [feature = 'landuse_construction'] {
        text-fill: darken(@construction, 50%);
      }
      [feature = 'tourism_caravan_site'] {
        text-fill: darken(@campsite, 50%);
        text-dy: 15;
      }
      [feature = 'tourism_theme_park'],
      [feature = 'tourism_zoo'] {
        text-fill: @tourism;
        text-face-name: @bold-fonts; /*rendered bold to improve visibility since theme parks tend to have crowded backgrounds*/
      }
      [feature = 'tourism_attraction'] {
        text-fill: #660033;
        text-face-name: @standard-font;
      }
      [feature = 'amenity_kindergarten'],
      [feature = 'amenity_school'],
      [feature = 'amenity_college'],
      [feature = 'amenity_university'] {
        text-fill: darken(@societal_amenities, 70%);
      }
      [feature = 'natural_heath'] {
        text-fill: darken(@heath, 40%);
      }
      [feature = 'natural_scrub'] {
        text-fill: darken(@scrub, 60%);
      }
      [feature = 'natural_beach'],
      [feature = 'natural_shoal'] {
        text-fill: darken(@beach, 60%);
      }
      [feature = 'leisure_fitness_centre'],
      [feature = 'leisure_sports_centre'],
      [feature = 'leisure_stadium'] {
        text-fill: darken(@stadium, 70%);
      }
      [feature = 'leisure_dog_park'] {
        text-fill: darken(@park, 60%);
        text-halo-radius: @standard-halo-radius * 1.5; /* Extra halo needed to stand out from paw pattern. */
        text-halo-fill: @standard-halo-fill;
      }
      [feature = 'leisure_track'] {
        text-fill: darken(@track, 40%);
      }
      [feature = 'leisure_pitch'] {
        text-fill: darken(@pitch, 40%);
      }
    }
  }

  [feature = 'natural_scree'],
  [feature = 'natural_shingle'],
  [feature = 'natural_bare_rock'],
  [feature = 'natural_sand'] {
    [zoom >= 9][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'natural_scree'],
      [feature = 'natural_shingle'],
      [feature = 'natural_bare_rock'] {
        text-fill: darken(@bare_ground, 50%);
      }
      [feature = 'natural_sand'] {
        text-fill: darken(@sand, 50%);
      }
    }
  }

  [feature = 'aeroway_apron'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: darken(@apron, 60%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'highway_services'][is_building = 'no'],
  [feature = 'highway_rest_area'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: darken(@rest_area, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_bay'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @water-text;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'leisure_marina'][zoom >= 15] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_glacier'][is_building = 'no'] {
    [zoom >= 8][way_pixels > 10000],
    [zoom >= 10][way_pixels > 750],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_tree'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-text-size;
    text-fill: green;
    text-dy: 7;
    [zoom >= 18] { text-dy: 8; }
    [zoom >= 19] { text-dy: 11; }
    [zoom >= 20] { text-dy: 18; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }

  [feature = 'power_plant'][is_building = 'no'][zoom >= 10],
  [feature = 'power_generator'][is_building = 'no'][zoom >= 10],
  [feature = 'power_station'][is_building = 'no'][zoom >= 10],
  [feature = 'power_sub_station'][is_building = 'no'][zoom >= 13],
  [feature = 'power_substation'][is_building = 'no'][zoom >= 13] {
    [way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: darken(@power, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'leisure_swimming_pool'][is_building = 'no'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }
}

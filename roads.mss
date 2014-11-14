/* For the main linear features, such as roads and railways. */

@motorway-fill: #89a4cb;
@trunk-fill: #94d494;
@trunk-fill-alternative: #97d397;
@primary-fill: #dd9f9f;
@secondary-fill: #f9d6aa;
@tertiary-fill: #f8f8ba;
@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: #ccc;
@pedestrian-fill: #ededed;
@raceway-fill: pink;
@road-fill: #ddd;
@path-fill: black;
@footway-fill: salmon;
@steps-fill: @footway-fill;
@cycleway-fill: blue;
@bridleway-fill: green;
@track-fill: #996600;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@default-casing: white;
@motorway-casing: #7788a1;
@trunk-casing: #7eae7e;
@primary-casing: #c57b7e;
@secondary-casing: #cca16a;
@tertiary-casing: #c6c68a;
@residential-casing: #bbb;
@service-casing: @residential-casing;
@living-street-casing: @residential-casing;
@pedestrian-casing: @residential-casing;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@residential-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 25%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@living-street-tunnel-fill: lighten(@living-street-fill, 10%);

@motorway-width-z12:              3.5;
@motorway-link-width-z12:         1.5;
@trunk-width-z12:                 3.5;
@primary-width-z12:               3.5;
@secondary-width-z12:             3;
@tertiary-width-z12:              3;

@motorway-width-z13:              7;
@motorway-link-width-z13:         4.5;
@trunk-width-z13:                 7;
@primary-width-z13:               7;
@secondary-width-z13:             7;
@tertiary-width-z13:              5;
@residential-width-z13:           3;
@living-street-width-z13:         2;
@pedestrian-width-z13:            2;
@bridleway-width-z13:             0.3;
@footway-width-z13:               0.7;
@cycleway-width-z13:              0.7;
@path-width-z13:                  0.2;
@track-width-z13:                 0.5;
@track-grade1-width-z13:          0.5;
@track-grade2-width-z13:          0.5;
@steps-width-z13:                 0.7;

@tertiary-width-z14:              7.5;
@residential-width-z14:           4.5;
@living-street-width-z14:         4;
@pedestrian-width-z14:            4;
@service-width-z14:               2.5;

@motorway-width-z15:             12.8;
@motorway-link-width-z15:         7.8;
@trunk-width-z15:                12.8;
@primary-width-z15:              12.8;
@secondary-width-z15:            12.8;
@tertiary-width-z15:             11.2;
@residential-width-z15:           8.3;
@living-street-width-z15:         6;
@pedestrian-width-z15:            6;
@bridleway-width-z15:             1.2;
@footway-width-z15:               1.5;
@cycleway-width-z15:              1.2;
@path-width-z15:                  0.5;
@track-width-z15:                 1.5;
@track-grade1-width-z15:          0.75;
@track-grade2-width-z15:          0.75;
@steps-width-z15:                 4;

@residential-width-z16:          11.2;
@living-street-width-z16:         9;
@pedestrian-width-z16:            9;
@service-width-z16:               6;
@minor-service-width-z16:         4;

@motorway-width-z17:             18;
@motorway-link-width-z17:        11.5;
@trunk-width-z17:                18;
@primary-width-z17:              18;
@secondary-width-z17:            18;
@tertiary-width-z17:             15.5;
@residential-width-z17:          15.5;
@living-street-width-z17:        14;
@pedestrian-width-z17:           14;
@service-width-z17:               7;

@casing-width-z12:                0.5;
@casing-width-z13:                0.5;
@residential-casing-width-z13:    0.5;
@casing-width-z14:                0.5;
@casing-width-z15:                0.7;
@casing-width-z16:                0.7;
@casing-width-z17:                1;

@bridge-casing-width-z12:         0.5;
@bridge-casing-width-z13:         0.5;
@bridge-casing-width-z14:         0.5;
@bridge-casing-width-z15:         0.75;
@bridge-casing-width-z16:         0.75;
@bridge-casing-width-z17:         0.75;

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

.roads-casing, .bridges-casing, .tunnels-casing {
  ::casing {
    [zoom >= 12] {
      [feature = 'highway_motorway'] {
        line-width: @motorway-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17; }
        }
        line-color: @motorway-casing;
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-color: @trunk-casing;
        line-width: @trunk-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-color: @primary-casing;
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-color: @secondary-casing;
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 12] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_road'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-casing;
        [service = 'INT-normal'] {
          line-width: @service-width-z14;
          [zoom >= 16] { line-width: @service-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16;
        }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing { line-dasharray: 4,2; }
        .bridges-casing {
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-color: @pedestrian-casing;
        line-width: @pedestrian-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-color: @living-street-casing;
        line-width: @living-street-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17; }
        .roads-casing {
          line-cap: round;
          line-join: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
      }
    }

    [feature = 'highway_steps'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_path'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @path-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @path-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_track'] {
      .bridges-casing {
        [zoom >= 13][access != 'no'] {
          line-color: @bridge-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
        }
      }
    }

    [feature = 'railway_tram'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4;
          [zoom >= 15] {
            line-width: 5;
          }
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6.5;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_runway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 19;
          line-color: black;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5;
          line-color: black;
          line-join: round;
          [zoom >= 15] { line-width: 7; }
        }
      }
    }
  }

  ::bridges_background {
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
          line-color: @bridleway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          line-color: @footway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          line-color: @cycleway-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_steps'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * @paths-background-width; }
          line-color: @steps-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_path'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @path-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @path-width-z15 + 2 * @paths-background-width; }
          line-color: @path-casing;
          line-join: round;
        }
      }
    }

    [feature = 'highway_track'] {
      /* We don't set opacity here, so it's 1.0. Aside from that, it's basically a copy of roads-fill::background in the track part of ::fill */
      .bridges-casing {
        [zoom >= 13][access != 'no'] {
          line-color: @track-casing;
          line-join: round;
          line-width: @track-width-z13 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }
        }
        [zoom >= 15] {
          line-width: @track-width-z15 + 2 * @paths-background-width;
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
          }
        }
      }
    }

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 14],
    [feature = 'railway_monorail'][zoom >= 14] {
      .bridges-casing {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_tram'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 3;
          [zoom >= 15] {
            line-width: 4;
          }
          line-color: white;
        }
      }
    }

    [feature = 'railway_subway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }
  }
}

.roads-fill,.bridges-fill,.tunnels-fill {
  ::fill {
    /*
     * The construction rules for small roads are strange, since if construction is null its assumed that
     * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
     * string for non-small roads.
     *
     * Also note that these rules are quite sensitive to re-ordering, since the instances end up swapping round
     * (and then the dashes appear below the fills). See
     * https://github.com/gravitystorm/openstreetmap-carto/issues/23
     * https://github.com/mapbox/carto/issues/235
     * https://github.com/mapbox/carto/issues/237
     */
    [feature = 'highway_proposed'],
    [feature = 'highway_construction'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #9cc;

        [construction = 'motorway'],
        [construction = 'motorway_link'] {
          line-color: @motorway-fill;
        }
        [construction = 'trunk'],
        [construction = 'trunk_link'] {
          line-color: @trunk-fill;
        }
        [construction = 'primary'],
        [construction = 'primary_link'] {
          line-color: @primary-fill;
        }
        [construction = 'secondary'],
        [construction = 'secondary_link'] {
          line-color: @secondary-fill;
        }
        [construction = 'tertiary'],
        [construction = 'tertiary_link'] {
          line-color: @tertiary-fill;
        }
        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'living_street'] {
          line-color: @residential-construction;
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
        }
        [construction = 'service'] {
          line-color: @service-construction;
          [zoom < 14] {
            line-width: 0;
            b/line-width: 0;
          }
        }
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

    [feature = 'highway_motorway'] {
      [zoom >= 12] {
        line-width: @motorway-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @casing-width-z17; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12 - 2 * @casing-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @casing-width-z17; }
        }
        .roads-fill, .bridges-fill {
          line-color: @motorway-fill;
        }
        .tunnels-fill {
          line-color: @motorway-tunnel-fill;
        }
        .bridges-fill {
          line-width: @motorway-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @bridge-casing-width-z17; }
          [link = 'yes'] {
            line-width: @motorway-link-width-z12 - 2 * @bridge-casing-width-z12;
            [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @bridge-casing-width-z13; }
            [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @bridge-casing-width-z15; }
            [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @bridge-casing-width-z17; }
          }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-width: @trunk-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @trunk-fill;
        }
        .tunnels-fill {
          line-color: @trunk-tunnel-fill;
        }
        .bridges-fill {
          line-width: @trunk-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-width: @primary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @primary-fill;
        }
        .tunnels-fill {
          line-color: @primary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @primary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @primary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @primary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @primary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-width: @secondary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @secondary-fill;
        }
        .tunnels-fill {
          line-color: @secondary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @secondary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 12] {
        line-width: @tertiary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @tertiary-fill;
        }
        .tunnels-fill {
          line-color: @tertiary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @tertiary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-width: @residential-width-z13 - 2 * @residential-casing-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @residential-fill;
        }
        .tunnels-fill {
          line-color: @residential-tunnel-fill;
        }
        .bridges-fill {
          line-width: @residential-width-z13 - 2 * @bridge-casing-width-z13;
          [zoom >= 14] { line-width: @residential-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @residential-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @residential-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @residential-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_tertiary'][zoom >= 10][zoom < 12],
    [feature = 'highway_residential'][zoom >= 10][zoom < 13],
    [feature = 'highway_unclassified'][zoom >= 10][zoom < 13],
    [feature = 'highway_road'][zoom >= 10][zoom < 13],
    [feature = 'highway_living_street'][zoom >= 12][zoom < 13] {
      line-width: 1;
      line-color: @residential-casing;
    }

    [feature = 'highway_road'] {
      [zoom >= 13] {
        .roads-fill, .bridges-fill {
          line-color: @road-fill;
        }
        .tunnels-fill {
          line-color: @residential-tunnel-fill;
        }
        .roads-fill {
          line-width: 2;
          [zoom >= 14] { line-width: 3; }
          [zoom >= 15] { line-width: 6.5; }
          [zoom >= 16] { line-width: 9.4; }
          [zoom >= 17] { line-width: 13; }
        }
        .bridges-fill {
          line-width: 3.5;
          [zoom >= 14] { line-width: 7.5; }
          [zoom >= 15] { line-width: 9.5; }
          [zoom >= 17] { line-width: 14; }
        }
        .tunnels-fill {
          line-width: 2;
          [zoom >= 14] { line-width: 3.5; }
          [zoom >= 15] { line-width: 9.5; }
          [zoom >= 17] { line-width: 14; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-width: @living-street-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @casing-width-z17; }
        .roads-fill, .bridges-fill {
          line-color: @living-street-fill;
        }
        .tunnels-fill {
          line-color: @living-street-tunnel-fill;
        }
        .bridges-fill {
          line-width: @living-street-width-z13 - 2 * @casing-width-z13;
          [zoom >= 14] { line-width: @living-street-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @living-street-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @living-street-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @living-street-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 13][service = 'INT-normal'] {
        line-width: 1;
        line-color: @residential-casing;
      }
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-fill;
        [service = 'INT-normal'] {
          line-width: @service-width-z14 - 2 * @casing-width-z14;
          [zoom >= 16] { line-width: @service-width-z16 - 2 * @casing-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17 - 2 * @casing-width-z17; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
        }
        line-join: round;
        line-cap: round;
        .tunnels-fill {
          line-color: darken(white, 5%);
        }
        .bridges-fill {
          [service = 'INT-normal'] {
            line-width: @service-width-z14 - 2 * @bridge-casing-width-z14;
            [zoom >= 16] { line-width: @service-width-z16 - 2 * @bridge-casing-width-z16; }
            [zoom >= 17] { line-width: @service-width-z17 - 2 * @bridge-casing-width-z17; }
          }
          [service = 'INT-minor'] {
            line-width: @minor-service-width-z16 - 2 * @bridge-casing-width-z16;
          }
        }
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: @living-street-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @casing-width-z17; }
        line-color: @pedestrian-fill;
        .bridges-fill {
          line-width: @pedestrian-width-z13 - 2 * @casing-width-z13;
          [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @bridge-casing-width-z17; }
        }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_raceway'] {
      [zoom >= 12] {
        line-color: @raceway-fill;
        line-width: 1.2;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 4; }
      [zoom >= 15] { line-width: 7; }
    }

    [feature = 'highway_platform'] {
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

    [feature = 'highway_steps'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-color: @steps-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @steps-width-z15 + 2 * @paths-background-width; }
          .roads-fill { background/line-opacity: 0.4; }
        }
        line/line-color: @steps-fill;
        line/line-dasharray: 2,1;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
        line/line-width: @steps-width-z13;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-color: @bridleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
          .roads-fill { background/line-opacity: 0.4; }
        }
        line/line-color: @bridleway-fill;
        line/line-dasharray: 4,2;
        line/line-width: @bridleway-width-z13;
        [zoom >= 15] { line/line-width: @bridleway-width-z15; }
        .tunnels-fill {
          line/line-join: round;
          line/line-cap: round;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-color: @footway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @footway-width-z15 + 2 * @paths-background-width; }
          .roads-fill { background/line-opacity: 0.4; }
        }
        line/line-color: @footway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @footway-width-z13;
        [zoom >= 15] { line/line-width:  @footway-width-z15; }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-color: @cycleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          .roads-fill { background/line-opacity: 0.4; }
        }
        line/line-color: @cycleway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @cycleway-width-z13;
        [zoom >= 15] { line/line-width: @cycleway-width-z15; }
      }
    }

    /*
    * The above defininitions should override this when needed
    * given the specitivity precedence.
    */
    [feature = 'highway_path'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-width: @path-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { tunnelcasing/line-width: @path-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
        }
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-color: @path-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @path-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { background/line-width: @path-width-z15 + 2 * @paths-background-width; }
          .roads-fill { background/line-opacity: 0.4; }
        }
        line/line-color: @path-fill;
        line/line-dasharray: 6,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @path-width-z13;
        [zoom >= 15] { line/line-width: @path-width-z15; }
      }
    }

    [feature = 'highway_track'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .tunnels-fill {
          tunnelcasing/line-color: @tunnel-casing;
          tunnelcasing/line-dasharray: 4,2;
          tunnelcasing/line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [tracktype = 'grade1'] {
            tunnelcasing/line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [tracktype = 'grade2'] {
            tunnelcasing/line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [zoom >= 15]{
            tunnelcasing/line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            [tracktype = 'grade1'] {
              tunnelcasing/line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
            [tracktype = 'grade2'] {
              tunnelcasing/line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
          }
        }

        /* The white casing that you mainly see against forests and other dark features */
        .roads-fill[zoom >= 15],
        .tunnels-fill[zoom >= 13] {
          background/line-opacity: 0.4;
          background/line-color: @track-casing;
          background/line-join: round;
          background/line-cap: round;
          background/line-width: @track-width-z13 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
          [tracktype = 'grade1'] {
            background/line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            background/line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
          }

          [zoom >= 15] {
            background/line-width: @track-width-z15 + 2 * @paths-background-width;
            [tracktype = 'grade1'] {
              background/line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
            }
            [tracktype = 'grade2'] {
              background/line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
            }
          }
        }

        /* Set the properties of the brown inside */
        line/line-color: @track-fill;
        line/line-dasharray: 5,4,2,4;
        line/line-cap: round;
        line/line-join: round;
        line/line-opacity: 0.8;
        line/line-clip:false;

        line/line-width: @track-width-z13;

        [tracktype = 'grade1'] {
          line/line-dasharray: 100,0;
        }
        [tracktype = 'grade2'] {
          line/line-dasharray: 8.8,3.2;
        }
        [tracktype = 'grade3'] {
          line/line-dasharray: 5.6,4.0;
        }
        [tracktype = 'grade4'] {
          line/line-dasharray: 3.2,4.8;
        }
        [tracktype = 'grade5'] {
          line/line-dasharray: 1.6,6.4;
        }

        [zoom >= 15] {
          line/line-width: @track-width-z15;
          [tracktype = 'grade1'] {
            line/line-dasharray: 100,0;
          }
          [tracktype = 'grade2'] {
            line/line-dasharray: 11,4;
          }
          [tracktype = 'grade3'] {
            line/line-dasharray: 7,5;
          }
          [tracktype = 'grade4'] {
            line/line-dasharray: 4,6;
          }
          [tracktype = 'grade5'] {
            line/line-dasharray: 2,8;
          }
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_INT-spur-siding-yard'] {
      [zoom >= 13] {
        .roads-fill, .bridges-fill {
          dark/line-color: #999999;
          [feature = 'railway_rail']                               { dark/line-width: 3; }
          [feature = 'railway_INT-spur-siding-yard']               { dark/line-width: 2; }
          [feature = 'railway_rail']                               { dark/line-join: round; }
          [feature = 'railway_INT-spur-siding-yard'] .bridges-fill { dark/line-join: round; }
          light/line-color: white;
          [feature = 'railway_rail']                               { light/line-width: 1; }
          [feature = 'railway_INT-spur-siding-yard']               { light/line-width: 0.8; }
          [feature = 'railway_rail']                               { light/line-dasharray: 8,12; }
          [feature = 'railway_INT-spur-siding-yard']               { light/line-dasharray: 0,8,11,1; }
          light/line-join: round;
          [feature = 'railway_rail'][zoom >= 14]                   { light/line-dasharray: 0,11,8,1; }
        }
        .tunnels-fill {
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
          [feature = 'railway_INT-spur-siding-yard'] {
            a/line-width: 2;
            b/line-width: 2;
            c/line-width: 2;
            d/line-width: 2;
            e/line-width: 2;
            f/line-width: 2;
            g/line-width: 2;
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 13] {
        line-width: 2;
        line-color: #666;
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'] {
      [zoom >= 13] {
        line-color: #444;
        line-width: 1;
        [zoom >= 15] {
          line-width: 2;
        }
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
      .bridges-fill {
        [zoom >= 14] {
          line-width: 2;
          line-color: #999;
        }
      }
    }

    [feature = 'railway_preserved'] {
      [zoom >= 12] {
        dark/line-width: 1.5;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 3;
          dark/line-color: #999999;
          light/line-width: 1;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }

    [feature = 'railway_disused'],
    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_platform'] {
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

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
      }
    }

    [feature = 'aeroway_runway'] {
      [zoom >= 11][zoom < 14] {
        line-width: 2;
        line-color: @runway-fill;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 7; }
      }
      [zoom >= 14] {
        line-width: 18;
        line-color: @runway-fill;
      }
    }

    [feature = 'aeroway_taxiway'] {
      [zoom >= 11][zoom < 14] {
        line-width: 1;
        line-color: @taxiway-fill;
      }
      [zoom >= 14] {
        line-width: 4;
        line-color: @taxiway-fill;
        [zoom >= 15] { line-width: 6; }
      }
    }
  }
}

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-casing;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-casing;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-casing;
    marker-width: 14;
    marker-height: 14;
    [zoom >= 16] {
      marker-width: 18;
      marker-height: 18;
    }
    [zoom >= 17] {
      marker-width: 24;
      marker-height: 24;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-casing;
    [int_tc_service = 'INT-normal'] {
      marker-width: 14;
      marker-height: 14;
      [zoom >= 17] {
        marker-width: 16;
        marker-height: 16;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 12;
      marker-height: 12;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#turning-circle-fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-fill;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8;
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-fill: @residential-fill;
      marker-width: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      marker-height: (@residential-width-z15 - 2 * @casing-width-z15) * 1.8;
      [zoom >= 16] {
        marker-width: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
        marker-height: (@residential-width-z16 - 2 * @casing-width-z16) * 1.8;
      }
      [zoom >= 17] {
        marker-width: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
        marker-height: (@residential-width-z17 - 2 * @casing-width-z17) * 1.8;
      }
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-fill: @living-street-fill;
    marker-width: 12;
    marker-height: 12;
    [zoom >= 16] {
      marker-width: 16;
      marker-height: 16;
    }
    [zoom >= 17] {
      marker-width: 22;
      marker-height: 22;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-fill: @service-fill;
    [int_tc_service = 'INT-normal'] {
      marker-width: 12;
      marker-height: 12;
      [zoom >= 17] {
        marker-width: 14;
        marker-height: 14;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 10;
      marker-height: 10;
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }
}

#highway-area-casing {
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_service'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    line-color: @track-fill;
    line-width: 1;
    line-dasharray: 5,4,2,4;
    line-cap: round;
    line-join: round;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      line-color: grey;
      line-width: 2;
      line-cap: round;
      line-join: round;
    }
  }
}

#highway-area-fill {
  [feature = 'highway_living_street'][zoom >= 14] {
    polygon-fill: #ccc;
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_footway'],
  [feature = 'highway_cycleway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      polygon-fill: #ededed;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #cdbea0;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [feature = 'aeroway_runway'][zoom >= 11] {
    polygon-fill: @runway-fill;
  }

  [feature = 'aeroway_taxiway'][zoom >= 13] {
    polygon-fill: @taxiway-fill;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    polygon-fill: @helipad-fill;
  }
}

#junctions {
  [highway = 'motorway_junction'] {
    [zoom >= 11] {
      ref/text-name: "[ref]";
      ref/text-size: 10;
      ref/text-fill: #6666ff;
      ref/text-min-distance: 2;
      ref/text-face-name: @oblique-fonts;
      ref/text-halo-radius: 1.5;
      [zoom >= 12] {
        name/text-name: "[name]";
        name/text-size: 9;
        name/text-fill: #6666ff;
        name/text-dy: -9;
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

  [junction = 'yes'],
  [highway = 'traffic_signals'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 30;
      text-min-distance: 2;
      [zoom >= 14] {
        text-size: 9;
      }
      [zoom >= 15] {
        text-size: 10;
      }
      [zoom >= 17] {
        text-size: 11;
        /* Offset name on traffic_signals on zoomlevels where they are displayed
        in order not to hide the text */
        [highway = 'traffic_signals'] {
          text-dy: 13;
        }
      }
    }
  }
}

.access::fill {
  [access = 'destination'] {
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_road'],
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-cap: round;
        access/line-join: round;
        access/line-opacity: 0.5;
      }
    }
    [feature = 'highway_service'][service = 'INT-normal'][zoom >= 15],
    [feature = 'highway_service'][zoom >= 16] {
      access/line-width: 3;
      access/line-color: @destination-marking;
      access/line-dasharray: 6,8;
      access/line-cap: round;
      access/line-join: round;
      access/line-opacity: 0.5;
      [zoom >= 16] { access/line-width: 6; }
    }
  }
  [access = 'no'] {
    [feature = 'highway_motorway'],
    [feature = 'highway_trunk'],
    [feature = 'highway_primary'],
    [feature = 'highway_secondary'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_residential'],
    [feature = 'highway_road'],
    [feature = 'highway_living_street'],
    [feature = 'highway_track'],
    [feature = 'highway_path'],
    [feature = 'highway_footway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_bridleway'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
    [feature = 'highway_service'][service = 'INT-normal'][zoom >= 15],
    [feature = 'highway_service'][zoom >= 16] {
      access/line-width: 3;
      access/line-color: @private-marking;
      access/line-dasharray: 6,8;
      access/line-opacity: 0.5;
      access/line-join: round;
      access/line-cap: round;
      [zoom >= 16] { access/line-width: 6; }
    }
  }
}

#roads-low-zoom {
  [feature = 'highway_motorway'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.5;
      line-color: @motorway-fill;
      [zoom >= 7] { line-width: 1; }
      [zoom >= 9] { line-width: 1.4; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_trunk'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.4;
      line-color: @trunk-fill;
      [zoom >= 7] {
        line-width: 1;
        line-color: @trunk-fill-alternative;
      }
      [zoom >= 9] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_primary'] {
    [zoom >= 7][zoom < 12] {
      line-width: 0.5;
      line-color: @primary-fill;
      [zoom >= 9] { line-width: 1.2; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_secondary'] {
    [zoom >= 9][zoom < 12] {
      line-width: 1;
      line-color: @secondary-fill;
      [zoom >= 11] { line-width: 2; }
    }
  }

  [feature = 'railway_rail'] {
    [zoom >= 6][zoom < 13] {
      line-width: 0.6;
      line-color: #aaa;
      [zoom >= 9] { line-width: 1; }
      [zoom >= 10] { line-width: 2; }
      .tunnels-casing {
        line-dasharray: 5,2;
      }
    }
  }

  [feature = 'railway_INT-spur-siding-yard'] {
    [zoom >= 11] {
      line-width: 1;
      line-color: #aaa;
      line-join: round;
    }
  }

  [feature = 'railway_tram'],
  [feature = 'railway_light_rail'],
  [feature = 'railway_funicular'],
  [feature = 'railway_narrow_gauge'] {
    [zoom >= 8][zoom < 13] {
      line-width: 1;
      line-color: #ccc;
      [zoom >= 10] { line-color: #aaa }
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
  [highway = 'motorway'][zoom >= 10][zoom < 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'trunk'][zoom >= 11][zoom < 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'primary'][zoom >= 11][zoom < 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/primary_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'secondary'][zoom >= 12][zoom < 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/secondary_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }
}

#roads-text-ref {
  [highway = 'motorway'][zoom >= 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'trunk'][zoom >= 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'primary'][zoom >= 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/primary_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'secondary'][zoom >= 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/secondary_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'tertiary'][zoom >= 13] {
    shield-name: "[refs]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/shields/tertiary_[width]x[height].svg");
    shield-spacing: 750;
    shield-min-distance: 30;
    shield-face-name: @bold-fonts;
    shield-clip: false;
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @bold-fonts;
      text-min-distance: 18;
      text-halo-radius: 1;
      text-spacing: 750;
      text-clip: false;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }
}

#roads-text-name {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      [tunnel = 'no'] {
        text-halo-radius: 1;
        [highway = 'motorway'] { text-halo-fill: @motorway-fill; }
        [highway = 'trunk'] { text-halo-fill: @trunk-fill; }
        [highway = 'primary'] { text-halo-fill: @primary-fill; }
      }
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: @secondary-fill; 
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: @tertiary-fill;
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
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-halo-fill: @residential-fill;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
  }

  [highway = 'raceway'],
  [highway = 'service'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      [highway = 'raceway'] { text-halo-fill: @raceway-fill; }
      [highway = 'service'] { text-halo-fill: @service-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }

  [highway = 'living_street'],
  [highway = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      [highway = 'living_street'] { text-halo-fill: @living-street-fill; }
      [highway = 'pedestrian'] { text-halo-fill: @pedestrian-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
}

#roads-area-text-name {
  [way_pixels > 3000] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-face-name: @book-fonts;
      text-placement: interior;
      text-wrap-width: 30;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
}

#paths-text-name {
  [highway = 'track'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 8;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.8);
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-dy: 5;
    }
    [zoom >= 16] {
      text-size: 9;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }

  [highway = 'bridleway'],
  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'path'],
  [highway = 'steps'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 9;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.8);
      text-spacing: 200;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-dy: 7;
    }
    [zoom >= 17] {
      text-size: 11;
      text-dy: 9;
    }
  }
}

.directions::directions {
  [zoom >= 16] {
    [oneway = 'yes'] {
      dira/line-width: 1;
      dira/line-dasharray: 0,12,10,152;
      dira/line-color: #6c70d5;
      dira/line-join: bevel;
      dira/line-clip: false;
      dirb/line-width: 2;
      dirb/line-dasharray: 0,12,9,153;
      dirb/line-color: #6c70d5;
      dirb/line-join: bevel;
      dirb/line-clip: false;
      dirc/line-width: 3;
      dirc/line-dasharray: 0,18,2,154;
      dirc/line-color: #6c70d5;
      dirc/line-join: bevel;
      dirc/line-clip: false;
      dird/line-width: 4;
      dird/line-dasharray: 0,18,1,155;
      dird/line-color: #6c70d5;
      dird/line-join: bevel;
      dird/line-clip: false;
    }
    [oneway = '-1'] {
      dira/line-width: 1;
      dira/line-dasharray: 0,12,10,152;
      dira/line-color: #6c70d5;
      dira/line-join: bevel;
      dira/line-clip: false;
      dirb/line-width: 2;
      dirb/line-dasharray: 0,13,9,152;
      dirb/line-color: #6c70d5;
      dirb/line-join: bevel;
      dirb/line-clip: false;
      dirc/line-width: 3;
      dirc/line-dasharray: 0,14,2,158;
      dirc/line-color: #6c70d5;
      dirc/line-join: bevel;
      dirc/line-clip: false;
      dird/line-width: 4;
      dird/line-dasharray: 0,15,1,158;
      dird/line-color: #6c70d5;
      dird/line-join: bevel;
      dird/line-clip: false;
    }
  }
}

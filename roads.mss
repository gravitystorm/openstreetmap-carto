/* For the main linear features, such as roads and railways. */

//road colors for major roads were generated with scripts/generate_road_colors.py
@motorway-fill: #e892a2; // Lch(70,35,10), error 0.5
@trunk-fill: #f9b29c; // Lch(79,33,42), error 0.7
@primary-fill: #fcd6a4; // Lch(88,31,74), error 1.7
@secondary-fill: #f7fabf; // Lch(97,29,106), error 1.7
@tertiary-fill: #ffffff;
@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: #ededed;
@pedestrian-fill: #dddde8;
@raceway-fill: pink;
@road-fill: #ddd;
@footway-fill: salmon;
@steps-fill: @footway-fill;
@cycleway-fill: blue;
@bridleway-fill: green;
@track-fill: #996600;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@motorway-low-zoom: #e66e89; // Lch(62,50,10), error 0.7
@trunk-low-zoom: #fa9476; // Lch(72,50,42), error 0.8
@primary-low-zoom: #f8c171; // Lch(82,50,74), error 2.1
@secondary-low-zoom: #e6ef89; // Lch(92,50,106), error 2.2

@default-casing: white;
@motorway-casing: #dc2a67; // Lch(50,70,10), error 1.1
@trunk-casing: #c84e2f; // Lch(50,65,42), error 0.7
@primary-casing: #a06b00; // Lch(50,60,74), error 1.6
@secondary-casing: #707d05; // Lch(50,55,106), error 1.9
@tertiary-casing: #8f8f8f;
@residential-casing: #bbb;
@road-casing: @residential-casing;
@service-casing: @residential-casing;
@living-street-casing: @residential-casing;
@pedestrian-casing: #999;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@motorway-low-zoom-casing: #c24e6b; // Lch(50,50,10), error 0.8
@trunk-low-zoom-casing: #cf6649; // Lch(56,55,42), error 0.9
@primary-low-zoom-casing: #c38a27; // Lch(62,60,74), error 2.1
@secondary-low-zoom-casing: #9eae23; // Lch(68,65,106), error 2.3

@unimportant-road: @residential-casing;

@residential-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;
@private-marking-for-red: #C26363;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 10%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@living-street-tunnel-fill: lighten(@living-street-fill, 10%);

@motorway-width-z5:               0.5;
@trunk-width-z5:                  0.4;

@motorway-width-z7:               0.8;
@trunk-width-z7:                  0.6;

@motorway-width-z8:               1;
@trunk-width-z8:                  1;
@primary-width-z8:                1;

@motorway-width-z9:               1.4;
@trunk-width-z9:                  1.4;
@primary-width-z9:                1.4;
@secondary-width-z9:              1;

@motorway-width-z10:              1.9;
@trunk-width-z10:                 1.9;
@primary-width-z10:               1.8;
@secondary-width-z10:             1;

@motorway-width-z11:              2.0;
@trunk-width-z11:                 1.9;
@primary-width-z11:               1.8;
@secondary-width-z11:             1;

@motorway-width-z12:              3.5;
@motorway-link-width-z12:         1.5;
@trunk-width-z12:                 3.5;
@primary-width-z12:               3.5;
@secondary-width-z12:             3.5;
@tertiary-width-z12:              2.5;

@motorway-width-z13:              6;
@motorway-link-width-z13:         4;
@trunk-width-z13:                 6;
@primary-width-z13:               5;
@secondary-width-z13:             5;
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

@secondary-width-z14:             5;
@tertiary-width-z14:              5;
@residential-width-z14:           3;
@living-street-width-z14:         3;
@pedestrian-width-z14:            3;
@road-width-z14:                  2;
@service-width-z14:               2;

@motorway-width-z15:             10;
@motorway-link-width-z15:         7.8;
@trunk-width-z15:                10;
@primary-width-z15:              10;
@secondary-width-z15:             9;
@tertiary-width-z15:              9;
@residential-width-z15:           5;
@living-street-width-z15:         5;
@pedestrian-width-z15:            5;
@bridleway-width-z15:             1.2;
@footway-width-z15:               1;
@cycleway-width-z15:              0.9;
@path-width-z15:                  0.5;
@track-width-z15:                 1.5;
@track-grade1-width-z15:          0.75;
@track-grade2-width-z15:          0.75;
@steps-width-z15:                 3;

@secondary-width-z16:            10;
@tertiary-width-z16:             10;
@residential-width-z16:           6;
@living-street-width-z16:         6;
@pedestrian-width-z16:            6;
@road-width-z16:                  3.5;
@service-width-z16:               3.5;
@minor-service-width-z16:         2;
@footway-width-z16:               1.3;
@cycleway-width-z16:              0.9;

@motorway-width-z17:             18;
@motorway-link-width-z17:        12;
@trunk-width-z17:                18;
@primary-width-z17:              18;
@secondary-width-z17:            18;
@tertiary-width-z17:             18;
@residential-width-z17:          12;
@living-street-width-z17:        12;
@pedestrian-width-z17:           12;
@road-width-z17:                  7;
@service-width-z17:               7;
@minor-service-width-z17:         3.5;

@motorway-width-z18:             23;
@motorway-link-width-z18:        14;
@trunk-width-z18:                23;
@primary-width-z18:              23;
@secondary-width-z18:            23;
@tertiary-width-z18:             23;
@residential-width-z18:          14;
@living-street-width-z18:        14;
@pedestrian-width-z18:           14;
@road-width-z18:                  9;
@service-width-z18:               9;
@minor-service-width-z18:         5;

@motorway-width-z19:             33;
@motorway-link-width-z19:        20;
@trunk-width-z19:                33;
@primary-width-z19:              32;
@secondary-width-z19:            32;
@tertiary-width-z19:             32;
@residential-width-z19:          21;
@living-street-width-z19:        21;
@pedestrian-width-z19:           21;
@road-width-z19:                 13;
@service-width-z19:              13;
@minor-service-width-z19:         7;

@footway-width-z18:               1.3;
@cycleway-width-z18:              1;

@footway-width-z19:               1.6;
@cycleway-width-z19:              1.3;


@major-casing-width-z11:          0.3;

@casing-width-z12:                0.1;
@secondary-casing-width-z12:      0.3;
@major-casing-width-z12:          0.5;

@casing-width-z13:                0.5;
@residential-casing-width-z13:    0.5;
@secondary-casing-width-z13:      0.35;
@major-casing-width-z13:          0.5;

@casing-width-z14:                0.55;
@secondary-casing-width-z14:      0.35;
@major-casing-width-z14:          0.6;

@casing-width-z15:                0.6;
@secondary-casing-width-z15:      0.7;
@major-casing-width-z15:          0.7;

@casing-width-z16:                0.6;
@secondary-casing-width-z16:      0.7;
@major-casing-width-z16:          0.7;

@casing-width-z17:                0.8;
@secondary-casing-width-z17:      1;
@major-casing-width-z17:          1;

@casing-width-z18:                0.8;
@secondary-casing-width-z18:      1;
@major-casing-width-z18:          1;

@casing-width-z19:                0.8;
@secondary-casing-width-z19:      1;
@major-casing-width-z19:          1;

@bridge-casing-width-z12:         0.1;
@major-bridge-casing-width-z12:   0.5;
@bridge-casing-width-z13:         0.5;
@major-bridge-casing-width-z13:   0.5;
@bridge-casing-width-z14:         0.5;
@major-bridge-casing-width-z14:   0.6;
@bridge-casing-width-z15:         0.75;
@major-bridge-casing-width-z15:   0.75;
@bridge-casing-width-z16:         0.75;
@major-bridge-casing-width-z16:   0.75;
@bridge-casing-width-z17:         0.8;
@major-bridge-casing-width-z17:   1;
@bridge-casing-width-z18:         0.8;
@major-bridge-casing-width-z18:   1;
@bridge-casing-width-z19:         0.8;
@major-bridge-casing-width-z19:   1;

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

@junction-text-color:             #960000;
@halo-color-for-minor-road: white;

@motorway-oneway-arrow-color:     darken(@motorway-casing, 25%);
@trunk-oneway-arrow-color:        darken(@trunk-casing, 25%);
@primary-oneway-arrow-color:      darken(@primary-casing, 15%);
@secondary-oneway-arrow-color:    darken(@secondary-casing, 10%);
@tertiary-oneway-arrow-color:     darken(@tertiary-casing, 30%);
@residential-oneway-arrow-color:  darken(@residential-casing, 40%);
@living-street-oneway-arrow-color: darken(@residential-casing, 30%);
@pedestrian-oneway-arrow-color:   darken(@pedestrian-casing, 25%);
@raceway-oneway-arrow-color:      darken(@raceway-fill, 50%);
@footway-oneway-arrow-color:      darken(@footway-fill, 35%);
@steps-oneway-arrow-color:        darken(@steps-fill, 35%);
@cycleway-oneway-arrow-color:     darken(@cycleway-fill, 25%);
@track-oneway-arrow-color:        darken(@track-fill, 15%);
@bridleway-oneway-arrow-color:    darken(@track-fill, 10%);

@shield-size: 9;
@shield-size-z16: 10;
@shield-size-z18: 11;
@shield-spacing: 760;
@shield-min-distance: 40;
@shield-font: @book-fonts;
@shield-clip: false;

@shield-motorway-fill: #620728; // Lch(20,40,10), error 0.5
@shield-trunk-fill: #5d1b0b; // Lch(21,40,42), error 0.5
@shield-primary-fill: #4c2e00; // Lch(22,40,74), error 2.9
@shield-secondary-fill: #323b00; // Lch(23,40,106), error 3.4
@shield-tertiary-fill: #3b3b3b; // Lch(25,0,0), error 0.1

.roads-casing, .bridges-casing, .tunnels-casing {
  ::casing {
    [zoom = 9][feature = 'highway_secondary'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.2;
      line-opacity: 0.4;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings - are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }
    [zoom = 10][feature = 'highway_secondary'],
    [zoom = 11][feature = 'highway_secondary'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.7;
      line-opacity: 0.4;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings - are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }
    [zoom = 10][feature = 'highway_tertiary'],
    [zoom = 11][feature = 'highway_tertiary'],
    [zoom = 12][feature = 'highway_unclassified'] {
      line-color: @halo-color-for-minor-road;
      line-width: 2.2;
      line-opacity: 0.3;
      line-join: round;
      //Missing line-cap: round; is intentional. It would cause rendering glow multiple times in some places - what as result of partial transparency would cause differences in rendering
      //Also, bridges - including bridge casings are rendered on top of roads. Enabling line-cap: round would result in glow from bridges rendered on top of road around bridges.
    }

    [zoom >= 12] {
      [feature = 'highway_motorway'] {
        line-width: @motorway-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19; }
        }
        line-color: @motorway-low-zoom-casing;
        [zoom >= 13] {
          line-color: @motorway-casing;
        }
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
        line-color: @trunk-low-zoom-casing;
        [zoom >= 13] {
          line-color: @trunk-casing;
        }
        line-width: @trunk-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19; }
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
        line-color: @primary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @primary-casing;
        }
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19; }
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
        line-color: @secondary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @secondary-casing;
        }
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 14] { line-width: @secondary-width-z14; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 16] { line-width: @secondary-width-z16; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        [zoom >= 18] { line-width: @secondary-width-z18; }
        [zoom >= 19] { line-width: @secondary-width-z19; }
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
        [zoom >= 16] { line-width: @tertiary-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19; }
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
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19; }
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

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-color: @road-casing;
        line-width: @road-width-z14;
        [zoom >= 16] { line-width: @road-width-z16; }
        [zoom >= 17] { line-width: @road-width-z17; }
        [zoom >= 18] { line-width: @road-width-z18; }
        [zoom >= 19] { line-width: @road-width-z19; }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
        .bridges-casing {
          line-color: @bridge-casing;
          line-join: round;
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
          [zoom >= 18] { line-width: @service-width-z18; }
          [zoom >= 19] { line-width: @service-width-z19; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16;
          [zoom >= 17] { line-width: @minor-service-width-z17; }
          [zoom >= 18] { line-width: @minor-service-width-z18; }
          [zoom >= 19] { line-width: @minor-service-width-z19; }
        }
        .roads-casing {
          line-join: round;
          line-cap: round;
        }
        .tunnels-casing {
          line-dasharray: 4,2;
        }
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
        [zoom >= 18] { line-width: @pedestrian-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19; }
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
        [zoom >= 18] { line-width: @living-street-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19; }
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @steps-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @bridleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
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
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          }
          [zoom >= 15]{
            line-width: @track-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            [tracktype = 'grade1'] {
              line-width: @track-grade1-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
            [tracktype = 'grade2'] {
              line-width: @track-grade2-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
            }
          }
        }
      }
    }


    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 4;
          [zoom >= 15] {
            line-width: 5;
          }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
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
          line-color: @bridge-casing;
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
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_runway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 13;
          [zoom >= 15] { line-width: 19; }
          [zoom >= 16] { line-width: 25; }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'aeroway_taxiway'] {
      .bridges-casing {
        [zoom >= 14] {
          line-width: 5;
          line-color: @bridge-casing;
          line-join: round;
          [zoom >= 15] { line-width: 7; }
        }
      }
    }
  }

  ::bridges_and_tunnels_background {
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @bridleway-casing;
          line-cap: round;
          line-join: round;
          line-width: @bridleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @bridleway-width-z15 + 2 * @paths-background-width; }
        }
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      .bridges-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * @paths-background-width; }
          line-color: @footway-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @footway-casing;
          line-cap: round;
          line-join: round;
          line-width: @footway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * @paths-background-width; }
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
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * @paths-background-width; }
          line-color: @cycleway-casing;
          line-join: round;
        }
      }
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @cycleway-casing;
          line-cap: round;
          line-join: round;
          line-width: @cycleway-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * @paths-background-width; }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * @paths-background-width; }
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @steps-casing;
          line-cap: round;
          line-join: round;
          line-width: @steps-width-z13 + 2 * @paths-background-width;
          [zoom >= 15] { line-width: @steps-width-z15 + 2 * @paths-background-width; }
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
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-color: @track-casing;
          line-join: round;
          line-cap: round;
          line-width: @track-width-z13 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * @paths-background-width;
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
    }

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 13],
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

    [feature = 'railway_disused'][zoom >= 15],
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

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
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

/* Data on z<10 comes from osm_planet_roads, data on z>=10 comes from
osm_planet_line. This is for performance reasons: osm_planet_roads contains less
data, and is thus faster. Chosen is for zoom level 10 as cut-off, because
tertiary is rendered from z10 and is not included in osm_planet_roads. */

#roads-low-zoom[zoom < 10],
.roads-fill[zoom >= 10],
.bridges-fill[zoom >= 10],
.tunnels-fill[zoom >= 10] {
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
        [construction = 'tertiary_link'],
        [construction = 'residential'],
        [construction = 'unclassified'],
        [construction = 'living_street'] {
          line-color: @residential-construction;
          [zoom < 13] {
            line-width: 0;
            b/line-width: 0;
          }
          [zoom >= 13][zoom < 14] {
            line-width: 3;
            b/line-width: 2;
            b/line-dasharray: 5,3;
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
        [construction = 'footway'],
        [construction = 'cycleway'],
        [construction = 'bridleway'],
        [construction = 'path'],
        [construction = 'track'] {
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
      [zoom >= 5] {
        line-color: @motorway-low-zoom;
        line-width: @motorway-width-z5;
      }
      [zoom >= 7] { line-width: @motorway-width-z7; }
      [zoom >= 8] { line-width: @motorway-width-z8; }
      [zoom >= 9] { line-width: @motorway-width-z9; }
      [zoom >= 10] { line-width: @motorway-width-z10; }
      [zoom >= 11] { line-width: @motorway-width-z11; }
      [zoom >= 12] {
        line-color: @motorway-fill;
        line-width: @motorway-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19 - 2 * @major-casing-width-z19; }
        [link = 'yes'] {
          line-width: @motorway-link-width-z12 - 2 * @casing-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19 - 2 * @casing-width-z19; }
        }
        .tunnels-fill {
          line-color: @motorway-tunnel-fill;
        }
        .bridges-fill {
          line-width: @motorway-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @motorway-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @motorway-width-z19 - 2 * @major-bridge-casing-width-z19; }
          [link = 'yes'] {
            line-width: @motorway-link-width-z12 - 2 * @bridge-casing-width-z12;
            [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @bridge-casing-width-z13; }
            [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @bridge-casing-width-z15; }
            [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @motorway-link-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @motorway-link-width-z19 - 2 * @bridge-casing-width-z19; }
          }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 5] {
        line-width: @trunk-width-z5;
        line-color: @trunk-low-zoom;
      }
      [zoom >= 7] { line-width: @trunk-width-z7; }
      [zoom >= 8] { line-width: @trunk-width-z8; }
      [zoom >= 9] { line-width: @trunk-width-z9; }
      [zoom >= 10] { line-width: @trunk-width-z10; }
      [zoom >= 11] { line-width: @trunk-width-z11; }
      [zoom >= 12] {
        line-color: @trunk-fill;
        line-width: @trunk-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19 - 2 * @major-casing-width-z19; }
        .tunnels-fill {
          line-color: @trunk-tunnel-fill;
        }
        .bridges-fill {
          line-width: @trunk-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @trunk-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @trunk-width-z19 - 2 * @major-bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 8] {
        line-width: @primary-width-z8;
        line-color: @primary-low-zoom;
      }
      [zoom >= 9] { line-width: @primary-width-z9; }
      [zoom >= 10] { line-width: @primary-width-z10; }
      [zoom >= 11] { line-width: @primary-width-z11; }
      [zoom >= 12] {
        line-color: @primary-fill;
        line-width: @primary-width-z12 - 2 * @major-casing-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19 - 2 * @major-casing-width-z19; }
        .tunnels-fill {
          line-color: @primary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @primary-width-z12 - 2 * @major-bridge-casing-width-z12;
          [zoom >= 13] { line-width: @primary-width-z13 - 2 * @major-bridge-casing-width-z13; }
          [zoom >= 15] { line-width: @primary-width-z15 - 2 * @major-bridge-casing-width-z15; }
          [zoom >= 17] { line-width: @primary-width-z17 - 2 * @major-bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @primary-width-z18 - 2 * @major-bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @primary-width-z19 - 2 * @major-bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 9] {
        line-color: @unimportant-road;
        line-width: @secondary-width-z9;
      }
      [zoom >=10] {
        line-color: @unimportant-road;
        line-width: @secondary-width-z10;
      }
      [zoom >= 11] { line-width: @secondary-width-z11; }
      [zoom >= 12] { 
        line-color: @secondary-fill;
        line-width: @secondary-width-z12 - 2 * @secondary-casing-width-z12;
        line-cap: round;
        line-join: round;
        [zoom >= 13] {
          [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @secondary-casing-width-z13; }
          [zoom >= 14] { line-width: @secondary-width-z14 - 2 * @secondary-casing-width-z14; }
          [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @secondary-casing-width-z15; }
          [zoom >= 16] { line-width: @secondary-width-z16 - 2 * @secondary-casing-width-z16; }
          [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @secondary-casing-width-z17; }
          [zoom >= 18] { line-width: @secondary-width-z18 - 2 * @secondary-casing-width-z18; }
          [zoom >= 19] { line-width: @secondary-width-z19 - 2 * @secondary-casing-width-z19; }
          .tunnels-fill {
            line-color: @secondary-tunnel-fill;
          }
          .bridges-fill {
            line-width: @secondary-width-z12 - 2 * @bridge-casing-width-z12;
            [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @major-bridge-casing-width-z13; }
            [zoom >= 14] { line-width: @secondary-width-z14 - 2 * @major-bridge-casing-width-z14; }
            [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @major-bridge-casing-width-z15; }
            [zoom >= 16] { line-width: @secondary-width-z16 - 2 * @major-bridge-casing-width-z16; }
            [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @major-bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @secondary-width-z18 - 2 * @major-bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @secondary-width-z19 - 2 * @major-bridge-casing-width-z19; }
          }
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 10] {
        line-color: @unimportant-road;
        line-width: 0.55;
      }
      [zoom >= 12] {
        line-color: @tertiary-fill;
        line-width: @tertiary-width-z12 - 2 * @casing-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @tertiary-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19 - 2 * @casing-width-z19; }
        .tunnels-fill {
          line-color: @tertiary-tunnel-fill;
        }
        .bridges-fill {
          line-width: @tertiary-width-z12 - 2 * @bridge-casing-width-z12;
          [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @bridge-casing-width-z13; }
          [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @tertiary-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @tertiary-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @tertiary-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom = 12][feature = 'highway_residential'] {
        line-color: @unimportant-road;
        line-width: 0.4;
      }
      [zoom = 12][feature = 'highway_unclassified'] {
        line-color: @unimportant-road;
        line-width: 1;
      }
      [zoom >= 13] {
        line-width: @residential-width-z13 - 2 * @residential-casing-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19 - 2 * @casing-width-z19; }
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
          [zoom >= 18] { line-width: @residential-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @residential-width-z19 - 2 * @bridge-casing-width-z19; }
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
        [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @casing-width-z19; }
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
          [zoom >= 18] { line-width: @living-street-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @living-street-width-z19 - 2 * @bridge-casing-width-z19; }
        }
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 10] {
        line-width: 1;
        line-color: @unimportant-road;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] {
        line-width: @road-width-z14 - 2 * @casing-width-z14;
        [zoom >= 16] { line-width: @road-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @road-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @road-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @road-width-z19 - 2 * @casing-width-z19; }
        .roads-fill {
          line-color: @road-fill;
        }
        .bridges-fill {
          line-width: @road-width-z14 - 2 * @bridge-casing-width-z14;
          [zoom >= 16] { line-width: @road-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @road-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @road-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @road-width-z19 - 2 * @bridge-casing-width-z19; }
          line-color: @road-fill;
        }
        .tunnels-fill {
          line-color: @road-fill;
        }
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 13][service = 'INT-normal'] {
        line-width: 1;
        line-color: @unimportant-road;
      }
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-fill;
        [service = 'INT-normal'] {
          line-width: @service-width-z14 - 2 * @casing-width-z14;
          [zoom >= 16] { line-width: @service-width-z16 - 2 * @casing-width-z16; }
          [zoom >= 17] { line-width: @service-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @service-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @service-width-z19 - 2 * @casing-width-z19; }
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
          [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @casing-width-z19; }
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
            [zoom >= 18] { line-width: @service-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @service-width-z19 - 2 * @bridge-casing-width-z19; }
          }
          [service = 'INT-minor'] {
            line-width: @minor-service-width-z16 - 2 * @bridge-casing-width-z16;
            [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @bridge-casing-width-z17; }
            [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @bridge-casing-width-z18; }
            [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @bridge-casing-width-z19; }
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
        [zoom >= 18] { line-width: @pedestrian-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19 - 2 * @casing-width-z19; }
        line-color: @pedestrian-fill;
        .bridges-fill {
          line-width: @pedestrian-width-z13 - 2 * @casing-width-z13;
          [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @bridge-casing-width-z14; }
          [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @bridge-casing-width-z15; }
          [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @bridge-casing-width-z16; }
          [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @bridge-casing-width-z17; }
          [zoom >= 18] { line-width: @pedestrian-width-z18 - 2 * @bridge-casing-width-z18; }
          [zoom >= 19] { line-width: @pedestrian-width-z19 - 2 * @bridge-casing-width-z19; }
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
      [zoom >= 13] { line-width: 2; }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 6; }
      [zoom >= 18] { line-width: 8; }
      [zoom >= 19] { line-width: 12; }
      [zoom >= 20] { line-width: 24; }
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
        .roads-fill[zoom >= 15] {
          background/line-color: @steps-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @steps-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
        }
        line/line-color: @steps-fill;
        line/line-dasharray: 2,1;
        line/line-width: @steps-width-z13;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @bridleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @bridleway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
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
    [feature = 'highway_path'][bicycle != 'designated'][horse != 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @footway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [zoom >= 16] {
            background/line-width: @footway-width-z16 + 2 * @paths-background-width;
          }
          [zoom >= 18] {
            background/line-width: @footway-width-z18 + 2 * @paths-background-width;
          }
          [zoom >= 19] {
            background/line-width: @footway-width-z19 + 2 * @paths-background-width;
          }
        }
        line/line-color: @footway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @footway-width-z13;
        [zoom >= 15][int_surface = 'paved'] {
          line/line-dasharray: 2,3.5;
          line/line-width: @footway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 3,3.5;
            line/line-width: @footway-width-z16;
          }
          [zoom >= 17] {
            line/line-dasharray: 3,3;
          }
          [zoom >= 18] {
            line/line-width: @footway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @footway-width-z19;
          }
        }
        [zoom >= 15][int_surface = null] {
          line/line-color: @footway-fill;
          line/line-dasharray: 1,3,2,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: @footway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 1,4,2,3;
            line/line-width: @footway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @footway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @footway-width-z19;
          }
        }
        [zoom >= 15][int_surface = 'unpaved'] {
          line/line-color: @footway-fill;
          line/line-dasharray: 1,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: @footway-width-z15;
          [zoom >= 16] {
            line/line-width: @footway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @footway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @footway-width-z19;
          }
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        .roads-fill[zoom >= 15] {
          background/line-color: @cycleway-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @cycleway-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [zoom >= 16] {
            background/line-width: @cycleway-width-z16 + 2 * @paths-background-width;
          }
          [zoom >= 18] {
            background/line-width: @cycleway-width-z18 + 2 * @paths-background-width;
          }
          [zoom >= 19] {
            background/line-width: @cycleway-width-z19 + 2 * @paths-background-width;
          }
        }
        line/line-color: @cycleway-fill;
        line/line-dasharray: 1,3;
        line/line-join: round;
        line/line-cap: round;
        line/line-width: @cycleway-width-z13;
        [zoom >= 15][int_surface = 'paved'] {
          line/line-dasharray: 2,3.5;
          line/line-width: @cycleway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 3,3.5;
            line/line-width: @cycleway-width-z16;
          }
          [zoom >= 17] {
            line/line-dasharray: 3,3;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @cycleway-width-z19;
          }
        }
        [zoom >= 15][int_surface = null] {
          line/line-color: @cycleway-fill;
          line/line-dasharray: 1,3,2,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width: @cycleway-width-z15;
          [zoom >= 16] {
            line/line-dasharray: 1,4,2,3;
            line/line-width: @cycleway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width: @cycleway-width-z19;
          }
        }
        [zoom >= 15][int_surface = 'unpaved'] {
          line/line-color: @cycleway-fill;
          line/line-dasharray: 1,4;
          line/line-join: round;
          line/line-cap: round;
          line/line-width:  @cycleway-width-z15;
          [zoom >= 16] {
            line/line-width:  @cycleway-width-z16;
          }
          [zoom >= 18] {
            line/line-width: @cycleway-width-z18;
          }
          [zoom >= 19] {
            line/line-width:  @cycleway-width-z19;
          }
        }
      }
    }

    [feature = 'highway_track'] {
      [zoom >= 13][access != 'no'],
      [zoom >= 15] {
        /* The white casing that you mainly see against forests and other dark features */
        .roads-fill[zoom >= 15] {
          background/line-opacity: 0.4;
          background/line-color: @track-casing;
          background/line-join: round;
          background/line-cap: round;
          background/line-width: @track-width-z15 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
          [tracktype = 'grade1'] {
            background/line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            background/line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
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

    [feature = 'railway_rail'][zoom >= 7],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      [zoom < 13] {
        line-color: #787878;
        line-width: 0.5;
        [zoom >= 8] { line-width: 0.8; }
        [zoom >= 12] { line-width: 0.9; }
        line-join: round;
        .roads_low_zoom[int_tunnel = 'yes'], .tunnels-fill {
          line-dasharray: 5,2;
        }
      }
      [zoom >= 13] {
        .roads-fill, .bridges-fill {
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
          [feature = 'railway_rail'] {
            dark/line-color: #787878;
            dark/line-width: 3;
            light/line-width: 1;
            light/line-dasharray: 8,8;
            [zoom >= 15] {
              light/line-dasharray: 0,8,8,1;
            }
            [zoom >= 19] {
              dark/line-width: 4;
              light/line-width: 2;
            }
          }
          [feature = 'railway_INT-spur-siding-yard'] {
            dark/line-width: 2;
            dark/line-color: #aaa;
            light/line-width: 0.8;
            light/line-dasharray: 0,8,8,1;
          }
        }
        .tunnels-fill {
          line-color: #787878;
          line-width: 2.8;
          line-dasharray: 6,4;
          line-clip: false;
          [feature = 'railway_INT-spur-siding-yard'] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 3,3;
          }
          [feature = 'railway_rail'][zoom >= 19] {
            line-dasharray: 8,6;
            line-width: 3.8;
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa; }
        [zoom >= 13] { line-color: #666; }
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
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

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [zoom >= 12] {
        line-color: #6E6E6E;
        line-width: 0.75;
        [zoom >= 13] {
          line-color: #444;
        }
        [zoom >= 14] {
          line-width: 1;
        }
        [zoom >= 15] {
          line-width: 1.5;
          [feature = 'railway_tram-service'] {
            line-width: 0.5;
          }
        }
        [zoom >= 17] {
          line-width: 2;
          [feature = 'railway_tram-service'] {
            line-width: 1;
          }
        }
        [zoom >= 18] {
          [feature = 'railway_tram-service'] {
            line-width: 1.5;
          }
        }
        [zoom >= 19] {
          [feature = 'railway_tram-service'] {
            line-width: 2;
          }
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

    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
        [zoom >= 14] {
          line-dasharray: 2,3;
        }
        [zoom >= 15] {
          line-width: 3;
          line-dasharray: 3,3;
        }
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 15] {
        line-color: #aaa;
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
      [zoom >= 11] {
        line-color: @runway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }

    [feature = 'aeroway_taxiway'] {
      [zoom >= 11] {
        line-color: @taxiway-fill;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
      }
    }
  }
}

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-fill: @tertiary-casing;
    marker-width: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    marker-height: (@tertiary-width-z15 - 2 * @casing-width-z15) * 1.8 + 2 * @casing-width-z15;
    [zoom >= 16] {
      marker-width: (@tertiary-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
      marker-height: (@tertiary-width-z16 - 2 * @casing-width-z16) * 1.8 + 2 * @casing-width-z16;
    }
    [zoom >= 17] {
      marker-width: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
      marker-height: (@tertiary-width-z17 - 2 * @casing-width-z17) * 1.8 + 2 * @casing-width-z17;
    }
    [zoom >= 18] {
      marker-width: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
      marker-height: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
    }
    [zoom >= 19] {
      marker-width: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
      marker-height: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
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
      [zoom >= 18] {
        marker-width: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
        marker-height: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8 + 2 * @casing-width-z18;
      }
      [zoom >= 19] {
        marker-width: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
        marker-height: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8 + 2 * @casing-width-z19;
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
    [zoom >= 18] {
      marker-width: 27;
      marker-height: 27;
    }
    [zoom >= 19] {
      marker-width: 38;
      marker-height: 38;
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
      [zoom >= 18] {
        marker-width: 20;
        marker-height: 20;
      }
      [zoom >= 19] {
        marker-width: 30;
        marker-height: 30;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 12;
      marker-height: 12;
      [zoom >= 19] {
        marker-width: 16;
        marker-height: 16;
      }
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
    [zoom >= 18] {
      marker-width: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8;
      marker-height: (@tertiary-width-z18 - 2 * @casing-width-z18) * 1.8;
    }
    [zoom >= 19] {
      marker-width: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8;
      marker-height: (@tertiary-width-z19 - 2 * @casing-width-z19) * 1.8;
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
      [zoom >= 18] {
        marker-width: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8;
        marker-height: (@residential-width-z18 - 2 * @casing-width-z18) * 1.8;
      }
      [zoom >= 19] {
        marker-width: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8;
        marker-height: (@residential-width-z19 - 2 * @casing-width-z19) * 1.8;
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
    [zoom >= 18] {
      marker-width: 25;
      marker-height: 25;
    }
    [zoom >= 19] {
      marker-width: 36;
      marker-height: 36;
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
      [zoom >= 18] {
        marker-width: 18;
        marker-height: 18;
      }
      [zoom >= 19] {
        marker-width: 28;
        marker-height: 28;
      }
    }
    [int_tc_service = 'INT-minor'] {
      marker-width: 10;
      marker-height: 10;
      [zoom >= 19] {
        marker-width: 14;
        marker-height: 14;
      }
    }
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
  }

  [int_tc_type = 'track'][zoom >= 15] {
    marker-fill: @track-fill;
    marker-width: 6;
    marker-height: 6;
    [zoom >= 17] {
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
    polygon-fill: @living-street-fill;
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
      polygon-fill: @pedestrian-fill;
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
      ref/text-fill: @junction-text-color;
      ref/text-min-distance: 2;
      ref/text-face-name: @oblique-fonts;
      ref/text-halo-radius: 1.5;
      [zoom >= 12] {
        name/text-name: "[name]";
        name/text-size: 9;
        name/text-fill: @junction-text-color;
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
      text-halo-fill: rgba(255,255,255,0.6);
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
          text-dy: 14;
        }
      }
    }
  }
}

#bridge-text  {
  [man_made = 'bridge'] {
    [zoom >= 12][way_pixels > 62.5] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-min-distance: 2;
      text-wrap-width: 30;
      [way_pixels > 250] {
        text-size: 9;
      }
      [way_pixels > 1000] {
        text-size: 11;
        text-halo-radius: 1.5;
      }
      [way_pixels > 4000] {
        text-size: 12;
      }
      [way_pixels > 16000] {
        text-size: 13;
        text-halo-radius: 2;
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
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-width: 3;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [zoom >= 16] { access/line-width: 6; }
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom >= 16] {
        access/line-width: 2.5;
        access/line-color: @destination-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }
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
    [feature = 'highway_living_street'] {
      [zoom >= 15] {
        access/line-width: 6;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [feature = 'highway_motorway'],
        [feature = 'highway_trunk'],
        [feature = 'highway_primary'] {
          access/line-color: @private-marking-for-red;
        }
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_track'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-width: 3;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
        [zoom >= 16] { access/line-width: 6; }
      }
    }
    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_bridleway'],
    [feature = 'highway_steps'] {
      [zoom >= 15] {
        access/line-width: 5;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
      }    
    }

    [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
      [zoom >= 15] {
        access/line-width: 2.5;
        access/line-color: @private-marking;
        access/line-dasharray: 6,8;
        access/line-opacity: 0.5;
        access/line-join: round;
        access/line-cap: round;
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

#roads-text-ref-low-zoom[zoom < 13] {
  [highway = 'motorway'][zoom >= 10],
  [highway = 'trunk'][zoom >= 11],
  [highway = 'primary'][zoom >= 11],
  [highway = 'secondary'][zoom >= 12] {
    shield-name: "[refs]";
    shield-size: @shield-size;
    shield-placement: line;
    shield-spacing: @shield-spacing;
    shield-min-distance: @shield-min-distance;
    shield-face-name: @shield-font;
    shield-clip: @shield-clip;

    [highway = 'motorway'] {
      shield-fill: @shield-motorway-fill;
      shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    }

    [highway = 'trunk'] {
      shield-fill: @shield-trunk-fill;
      shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    }

    [highway = 'primary'] {
      shield-fill: @shield-primary-fill;
      shield-file: url("symbols/shields/primary_[width]x[height].svg");
    }

    [highway = 'secondary'] {
      shield-fill: @shield-secondary-fill;
      shield-file: url("symbols/shields/secondary_[width]x[height].svg");
    }
  }
}

#roads-text-ref {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'],
  [highway = 'secondary'],
  [highway = 'tertiary'] {
    [zoom >= 13] {
      shield-name: "[refs]";
      shield-size: @shield-size;

      [zoom >= 16] {
        shield-size: @shield-size-z16;
      }
      [zoom >= 18] {
        shield-size: @shield-size-z18;
      }

      shield-placement: line;
      shield-spacing: @shield-spacing;
      shield-min-distance: @shield-min-distance;
      shield-face-name: @shield-font;
      shield-clip: @shield-clip;

      [highway = 'motorway'] {
        shield-fill: @shield-motorway-fill;
        shield-file: url("symbols/shields/motorway_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z18.svg");
        }
      }
      [highway = 'trunk'] {
        shield-fill: @shield-trunk-fill;
        shield-file: url("symbols/shields/trunk_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z18.svg");
        }
      }
      [highway = 'primary'] {
        shield-fill: @shield-primary-fill;
        shield-file: url("symbols/shields/primary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'secondary'] {
        shield-fill: @shield-secondary-fill;
        shield-file: url("symbols/shields/secondary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'tertiary'] {
        shield-fill: @shield-tertiary-fill;
        shield-file: url("symbols/shields/tertiary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/tertiary_[width]x[height]_z18.svg");
        }
      }
    }
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15] {
      text-name: "[refs]";
      text-size: 8;

      [zoom >= 16] {
        text-size: 9;
      }
      [zoom >= 18] {
        text-size: 10;
      }

      text-fill: #000;
      text-face-name: @book-fonts;
      text-min-distance: 40;
      text-halo-radius: 2;
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 760;
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
      text-halo-fill: rgba(255,255,255,0.6);
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
    [zoom >= 19] {
      text-size: 12;
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
    [zoom >= 19] {
      text-size: 12;
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
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'construction'] {
    [int_construction_minor = 'no'][zoom >= 13],
    [int_construction_minor = 'yes'][zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-face-name: @book-fonts;
      [zoom >= 17] {
        text-size: 11;
      }
      [zoom >= 19] {
        text-size: 12;
      }
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
    [zoom >= 19] {
      text-size: 12;
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
    [zoom >= 19] {
      text-size: 12;
    }
  }
}

#roads-area-text-name {
  [way_pixels > 3000],
  [zoom >= 17] {
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
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
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
      text-halo-fill: rgba(255,255,255,0.6);
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-vertical-alignment: middle;
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
    // intentionally omitting highway_platform, highway_construction
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'],
    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'],
    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'],
    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'],
    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'],
    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_living_street'],
    [feature = 'highway_road'],
    [feature = 'highway_service'],
    [feature = 'highway_pedestrian'],
    [feature = 'highway_raceway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_steps'],
    [feature = 'highway_track'],
    [feature = 'highway_bridleway'] {
      [oneway = 'yes'],
      [oneway = '-1'] {
        marker-placement: line;
        marker-spacing: 180;
        marker-max-error: 0.5;

        marker-file: url('symbols/oneway.svg');
        [oneway = '-1'] {
          marker-file: url('symbols/oneway-reverse.svg');
        }

        [feature = 'highway_motorway'],
        [feature = 'highway_motorway_link'] {
          marker-fill: @motorway-oneway-arrow-color;
        }
        [feature = 'highway_trunk'],
        [feature = 'highway_trunk_link'] {
          marker-fill: @trunk-oneway-arrow-color;
        }
        [feature = 'highway_primary'],
        [feature = 'highway_primary_link'] {
          marker-fill: @primary-oneway-arrow-color;
        }
        [feature = 'highway_secondary'],
        [feature = 'highway_secondary_link'] {
          marker-fill: @secondary-oneway-arrow-color;
        }
        [feature = 'highway_tertiary'],
        [feature = 'highway_tertiary_link'] {
          marker-fill: @tertiary-oneway-arrow-color;
        }
        [feature = 'highway_residential'],
        [feature = 'highway_unclassified'],
        [feature = 'highway_road'],
        [feature = 'highway_service'] {
          marker-fill: @residential-oneway-arrow-color;
        }
        [feature = 'highway_living_street'] {
          marker-fill: @living-street-oneway-arrow-color;
        }
        [feature = 'highway_pedestrian'] {
          marker-fill: @pedestrian-oneway-arrow-color;
        }
        [feature = 'highway_raceway'] {
          marker-fill: @raceway-oneway-arrow-color;
        }
        [feature = 'highway_footway'],
        [feature = 'highway_path'] {
          marker-fill: @footway-oneway-arrow-color;
        }
        [feature = 'highway_steps'] {
          marker-fill: @steps-oneway-arrow-color;
        }
        [feature = 'highway_cycleway'] {
          marker-fill: @cycleway-oneway-arrow-color;
        }
        [feature = 'highway_track'] {
          marker-fill: @track-oneway-arrow-color;
        }
        [feature = 'highway_bridleway'] {
          marker-fill: @bridleway-oneway-arrow-color;
        }
      }
    }
  }
}

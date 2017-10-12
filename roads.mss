/* For the main linear features, such as roads and railways. */

@tertiary-fill: #ffffff;
@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: #ededed;
@pedestrian-fill: #dddde8;
@raceway-fill: pink;
@road-fill: #ddd;
@footway-fill: salmon;
@footway-fill-noaccess: #bbbbbb;
@steps-fill: @footway-fill;
@steps-fill-noaccess: #bbbbbb;
@cycleway-fill: blue;
@cycleway-fill-noaccess: #9999ff;
@bridleway-fill: green;
@bridleway-fill-noaccess: #aaddaa;
@track-fill: #996600;
@track-fill-noaccess: #e2c5bb;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;
@access-marking: #eaeaea;
@access-marking-living-street: #cccccc;

@default-casing: white;
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

@tertiary-shield: #3b3b3b;

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
@secondary-width-z10:             1.1;
@tertiary-width-z10:              0.7;

@motorway-width-z11:              2.0;
@trunk-width-z11:                 1.9;
@primary-width-z11:               1.8;
@secondary-width-z11:             1.1;
@tertiary-width-z11:              0.7;

@motorway-width-z12:              3.5;
@motorway-link-width-z12:         1.5;
@trunk-width-z12:                 3.5;
@primary-width-z12:               3.5;
@secondary-width-z12:             3.5;
@tertiary-width-z12:              2.5;
@residential-width-z12:           0.5;
@unclassified-width-z12:          0.8;

@motorway-width-z13:              6;
@motorway-link-width-z13:         4;
@trunk-width-z13:                 6;
@primary-width-z13:               5;
@secondary-width-z13:             5;
@tertiary-width-z13:              4;
@residential-width-z13:           2.5;
@service-width-z13:               0.8;
@living-street-width-z13:         2;
@pedestrian-width-z13:            2;
@bridleway-width-z13:             0.3;
@footway-width-z13:               0.7;
@cycleway-width-z13:              0.7;
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

@motorway-width-z18:             21;
@motorway-link-width-z18:        13;
@trunk-width-z18:                21;
@primary-width-z18:              21;
@secondary-width-z18:            21;
@tertiary-width-z18:             21;
@residential-width-z18:          13;
@living-street-width-z18:        13;
@pedestrian-width-z18:           13;
@road-width-z18:                  8.5;
@service-width-z18:               8.5;
@minor-service-width-z18:         4.75;

@motorway-width-z19:             27;
@motorway-link-width-z19:        16;
@trunk-width-z19:                27;
@primary-width-z19:              27;
@secondary-width-z19:            27;
@tertiary-width-z19:             27;
@residential-width-z19:          17;
@living-street-width-z19:        17;
@pedestrian-width-z19:           17;
@road-width-z19:                 11;
@service-width-z19:              11;
@minor-service-width-z19:         5.5;

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
@halo-color-for-minor-road:       white;
@lowzoom-halo-color:              white;
@lowzoom-halo-width:              1;

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

// Shield’s line wrap is based on OpenStreetMap data and not on line-wrap-width,
// but lines are typically rather short, so we use narrow line spacing.
@shield-size: 10;
@shield-line-spacing: -1.50; // -0.15 em
@shield-size-z16: 11;
@shield-line-spacing-z16: -1.65; // -0.15 em
@shield-size-z18: 12;
@shield-line-spacing-z18: -1.80; // -0.15 em
@shield-spacing: 760;
@shield-min-distance: 40;
@shield-font: @book-fonts;
@shield-clip: false;

[zoom < 13].roads-casing,
[zoom < 13].bridges-casing,
[zoom < 13].tunnels-casing {
  ::casing {
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
      .tunnels-casing {
        [zoom >= 14][access != 'no'],
        [zoom >= 15] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      .tunnels-casing {
        [zoom >= 13][access != 'no'],
        [zoom >= 15] {
          line-width: @cycleway-width-z13 + 2 * (@paths-background-width + @paths-tunnel-casing-width);
          [zoom >= 15] { line-width: @cycleway-width-z15 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 16] { line-width: @cycleway-width-z16 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 18] { line-width: @cycleway-width-z18 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          [zoom >= 19] { line-width: @cycleway-width-z19 + 2 * (@paths-background-width + @paths-tunnel-casing-width); }
          line-color: @tunnel-casing;
          line-dasharray: 4,2;
        }
      }
    }

    [feature = 'highway_track'] {
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

    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

  }

  ::bridges_and_tunnels_background {
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
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

    [feature = 'railway_construction'],
    [feature = 'railway_miniature'][zoom >= 15] {
      .bridges-casing {
        [zoom >= 13] {
          line-width: 6;
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
.roads-fill[zoom >= 10][zoom < 13],
.bridges-fill[zoom >= 10][zoom < 13],
.tunnels-fill[zoom >= 10][zoom < 13] {

  ::halo {
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
    [feature = 'highway_motorway'][link != 'yes'][zoom >= 8][zoom < 12],
    [feature = 'highway_motorway'][link = 'yes'][zoom >= 10][zoom < 12],
    [feature = 'highway_trunk'][link != 'yes'][zoom >= 8][zoom < 12],
    [feature = 'highway_trunk'][link = 'yes'][zoom >= 10][zoom < 12],
    [feature = 'highway_primary'][link != 'yes'][zoom >= 8][zoom < 12],
    [feature = 'highway_primary'][link = 'yes'][zoom >= 10][zoom < 12],
    [feature = 'highway_secondary'][zoom >= 11][zoom < 12] {
      [feature = 'highway_motorway'] {
        [zoom >= 8] { line-width: @motorway-width-z8 + 2 * @lowzoom-halo-width; }
        [zoom >= 9] { line-width: @motorway-width-z9 + 2 * @lowzoom-halo-width; }
        [zoom >= 10] { line-width: @motorway-width-z10 + 2 * @lowzoom-halo-width; }
        [zoom >= 11] { line-width: @motorway-width-z11 + 2 * @lowzoom-halo-width; }
      }
      [feature = 'highway_trunk'] {
        [zoom >= 8] { line-width: @trunk-width-z8 + 2 * @lowzoom-halo-width; }
        [zoom >= 9] { line-width: @trunk-width-z9 + 2 * @lowzoom-halo-width; }
        [zoom >= 10] { line-width: @trunk-width-z10 + 2 * @lowzoom-halo-width; }
        [zoom >= 11] { line-width: @trunk-width-z11 + 2 * @lowzoom-halo-width; }
      }
      [feature = 'highway_primary'] {
        [zoom >= 8] { line-width: @primary-width-z8 + 2 * @lowzoom-halo-width; }
        [zoom >= 9] { line-width: @primary-width-z9 + 2 * @lowzoom-halo-width; }
        [zoom >= 10] { line-width: @primary-width-z10 + 2 * @lowzoom-halo-width; }
        [zoom >= 11] { line-width: @primary-width-z11 + 2 * @lowzoom-halo-width; }
      }
      line-color: @lowzoom-halo-color;
      line-opacity: .4;
    }
  }

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

    [feature = 'railway_rail'][zoom >= 7],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      [zoom >= 13] {
        .tunnels-fill {
          line-color: #787878;
          line-clip: false;
          [feature = 'railway_INT-spur-siding-yard'] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 3,3;
            [zoom >= 18] {
              line-width: 2.7;
            }
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [zoom >= 12] {
        .tunnels-fill {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        .tunnels-fill {
          line-dasharray: 5,3;
        }
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

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
      }
    }
  }
}

#highway-area-casing {
  [feature = 'highway_track'][zoom >= 14] {
    line-color: @track-fill;
    line-width: 1;
    line-dasharray: 5,4,2,4;
    line-cap: round;
    line-join: round;
  }

}

#highway-area-fill {

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #cdbea0;
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
      text-name: "[ref]";
      text-size: 10;
      text-fill: @junction-text-color;
      text-min-distance: 2;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-wrap-character: ";";
      text-wrap-width: 2; // effectively break after every wrap character
      text-line-spacing: -1.5; // -0.15 em
      [zoom >= 12] {
        ["name" != null]["ref" = null] {
          text-name: "[name]";
        }
        ["name" != null]["ref" != null] {
          text-name: [name] + "\n" + [ref];
        }
      }
      [zoom >= 15] {
        text-size: 11;
        text-line-spacing: -1.65; // -0.15 em
      }
    }
  }

  [junction = 'yes'],
  [highway = 'traffic_signals'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 30;  // 3.0 em
      text-line-spacing: -1.5; // -0.15 em
      text-min-distance: 2;
      [zoom >= 17] {
        text-size: 11;
        text-line-spacing: -1.65; // -0.15 em
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
      text-size: 10;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.2; // -0.15 em
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-min-distance: 2;
      text-wrap-width: 30;
      text-placement: interior;
      [way_pixels > 250] {
        text-size: 11;
        text-wrap-width: 33; // 3 em
        text-line-spacing: -1.35; // -0.15 em
      }
      [way_pixels > 1000] {
        text-size: 12;
        text-wrap-width: 36; // 3 em
        text-line-spacing: -1.65; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.5;
      }
      [way_pixels > 4000] {
        text-size: 13;
        text-wrap-width: 39; // 3 em
        text-line-spacing: -1.80; // -0.15 em
      }
      [way_pixels > 16000] {
        text-size: 14;
        text-wrap-width: 42; // 3 em
        text-line-spacing: -1.95; // -0.15 em
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
        access/line-color: @access-marking;
        [feature = 'highway_living_street'] {
          access/line-color: @access-marking-living-street;
        }
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 3;
        access/line-dasharray: 0.1,9;
        [zoom >= 17] {
          access/line-width: 6;
          access/line-dasharray: 0.1,12;
        }
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-color: @access-marking;
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 2;
        access/line-dasharray: 0.1,4;
        [zoom >= 17] {
          access/line-width: 4;
          access/line-dasharray: 0.1,9;
        }
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'] {
      [zoom >= 16] {
        access/line-color: @access-marking;
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 1;
        access/line-dasharray: 0.1,4;
        [zoom >= 17] {
          access/line-width: 2;
        }
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
        access/line-color: @access-marking;
        [feature = 'highway_living_street'] {
          access/line-color: @access-marking-living-street;
        }
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 2;
        access/line-dasharray: 6,6;
        [zoom >= 17] {
          access/line-width: 6;
          access/line-dasharray: 10,12;
        }
      }
    }
    [feature = 'highway_road'],
    [feature = 'highway_service'][service = 'INT-normal'] {
      [zoom >= 15] {
        access/line-color: @access-marking;
        access/line-join: round;
        access/line-cap: round;
        access/line-width: 2;
        access/line-dasharray: 6,8;
        [zoom >= 17] {
          access/line-width: 3;
          access/line-dasharray: 8,10;
        }
      }
    }
    [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
      access/line-color: @access-marking;
      access/line-join: round;
      access/line-cap: round;
      access/line-width: 1;
      access/line-dasharray: 6,8;
      [zoom >= 17] {
        access/line-width: 2;
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

#aeroways {
  [aeroway = 'runway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: @runway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }
  [aeroway = 'taxiway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 4 + 2*@secondary-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 6 + 2*@secondary-casing-width-z15; }
        [zoom >= 16] { line-width: 8 + 2*@secondary-casing-width-z16; }
        [zoom >= 17] { line-width: 8 + 2*@secondary-casing-width-z17; }
        [zoom >= 18] { line-width: 8 + 2*@secondary-casing-width-z18; }
      }
      ::fill {
        line-color: @taxiway-fill ;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
      }
    }
  }
}

#roads-text-ref-low-zoom[zoom < 13] {
  [highway = 'motorway'][zoom >= 10],
  [highway = 'trunk'][zoom >= 11],
  [highway = 'primary'][zoom >= 11],
  [highway = 'secondary'][zoom >= 12] {
    shield-name: "[refs]";
    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-placement: line;
    shield-spacing: @shield-spacing;
    shield-min-distance: @shield-min-distance;
    shield-face-name: @shield-font;
    shield-clip: @shield-clip;

    [highway = 'motorway'] {
      shield-fill: @motorway-shield;
      shield-file: url("symbols/shields/motorway_[width]x[height].svg");
    }

    [highway = 'trunk'] {
      shield-fill: @trunk-shield;
      shield-file: url("symbols/shields/trunk_[width]x[height].svg");
    }

    [highway = 'primary'] {
      shield-fill: @primary-shield;
      shield-file: url("symbols/shields/primary_[width]x[height].svg");
    }

    [highway = 'secondary'] {
      shield-fill: @secondary-shield;
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
      shield-line-spacing: @shield-line-spacing;

      [zoom >= 16] {
        shield-size: @shield-size-z16;
        shield-line-spacing: @shield-line-spacing-z16;
      }
      [zoom >= 18] {
        shield-size: @shield-size-z18;
        shield-line-spacing: @shield-line-spacing-z18;
      }

      shield-placement: line;
      shield-spacing: @shield-spacing;
      shield-min-distance: @shield-min-distance;
      shield-face-name: @shield-font;
      shield-clip: @shield-clip;

      [highway = 'motorway'] {
        shield-fill: @motorway-shield;
        shield-file: url("symbols/shields/motorway_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/motorway_[width]x[height]_z18.svg");
        }
      }
      [highway = 'trunk'] {
        shield-fill: @trunk-shield;
        shield-file: url("symbols/shields/trunk_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/trunk_[width]x[height]_z18.svg");
        }
      }
      [highway = 'primary'] {
        shield-fill: @primary-shield;
        shield-file: url("symbols/shields/primary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/primary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'secondary'] {
        shield-fill: @secondary-shield;
        shield-file: url("symbols/shields/secondary_[width]x[height].svg");

        [zoom >= 16] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z16.svg");
        }
        [zoom >= 18] {
          shield-file: url("symbols/shields/secondary_[width]x[height]_z18.svg");
        }
      }
      [highway = 'tertiary'] {
        shield-fill: @tertiary-shield;
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
      text-halo-fill: @standard-halo-fill;
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
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
  }
}

#roads-text-name {
  [highway = 'motorway'],
  [highway = 'trunk'],
  [highway = 'primary'],
  [highway = 'construction'][construction = 'motorway'],
  [highway = 'construction'][construction = 'trunk'],
  [highway = 'construction'][construction = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      [tunnel = 'no'] {
        text-halo-radius: @standard-halo-radius;
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
  [highway = 'secondary'],
  [highway = 'construction'][construction = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
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
  [highway = 'construction'][construction = 'tertiary'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @tertiary-fill;
    }
    [zoom >= 17] {
      text-size: 11;
    }
    [zoom >= 19] {
      text-size: 12;
    }
  }
  [highway = 'construction'][construction = null][zoom >= 16] {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-spacing: 300;
    text-clip: false;
    text-placement: line;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-face-name: @book-fonts;

    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
    [zoom >= 19] {
      text-size: 12;
      text-spacing: 400;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'],
  [highway = 'construction'][construction = 'residential'],
  [highway = 'construction'][construction = 'unclassified'],
  [highway = 'construction'][construction = 'road'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
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
  [highway = 'service'],
  [highway = 'construction'][construction = 'raceway'],
  [highway = 'construction'][construction = 'service'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
      [highway = 'raceway'] { text-halo-fill: @raceway-fill; }
      [highway = 'service'] { text-halo-fill: @service-fill; }
      text-face-name: @book-fonts;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }

  [highway = 'living_street'],
  [highway = 'pedestrian'],
  [highway = 'construction'][construction = 'living_street'],
  [highway = 'construction'][construction = 'pedestrian'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: @standard-halo-radius;
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
    text-name: "[name]";
    text-size: 11;
    text-face-name: @book-fonts;
    text-placement: interior;
    text-wrap-width: 30; // 2.7 em
    text-line-spacing: -1.7; // -0.15 em
  }
}

#paths-text-name {
  [highway = 'track'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-fill: #222;
      text-size: 8;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
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
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
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
    [highway = 'motorway'],
    [highway = 'motorway_link'],
    [highway = 'trunk'],
    [highway = 'trunk_link'],
    [highway = 'primary'],
    [highway = 'primary_link'],
    [highway = 'secondary'],
    [highway = 'secondary_link'],
    [highway = 'tertiary'],
    [highway = 'tertiary_link'],
    [highway = 'residential'],
    [highway = 'unclassified'],
    [highway = 'living_street'],
    [highway = 'road'],
    [highway = 'service'],
    [highway = 'pedestrian'],
    [highway = 'raceway'],
    [highway = 'cycleway'],
    [highway = 'footway'],
    [highway = 'path'],
    [highway = 'steps'],
    [highway = 'track'],
    [highway = 'bridleway'] {
      [oneway = 'yes'],
      [oneway = '-1'] {
        marker-placement: line;
        marker-spacing: 180;
        marker-max-error: 0.5;

        marker-file: url('symbols/oneway.svg');
        [oneway = '-1'] {
          marker-file: url('symbols/oneway-reverse.svg');
        }

        [highway = 'motorway'],
        [highway = 'motorway_link'] {
          marker-fill: @motorway-oneway-arrow-color;
        }
        [highway = 'trunk'],
        [highway = 'trunk_link'] {
          marker-fill: @trunk-oneway-arrow-color;
        }
        [highway = 'primary'],
        [highway = 'primary_link'] {
          marker-fill: @primary-oneway-arrow-color;
        }
        [highway = 'secondary'],
        [highway = 'secondary_link'] {
          marker-fill: @secondary-oneway-arrow-color;
        }
        [highway = 'tertiary'],
        [highway = 'tertiary_link'] {
          marker-fill: @tertiary-oneway-arrow-color;
        }
        [highway = 'residential'],
        [highway = 'unclassified'],
        [highway = 'road'],
        [highway = 'service'] {
          marker-fill: @residential-oneway-arrow-color;
        }
        [highway = 'living_street'] {
          marker-fill: @living-street-oneway-arrow-color;
        }
        [highway = 'pedestrian'] {
          marker-fill: @pedestrian-oneway-arrow-color;
        }
        [highway = 'raceway'] {
          marker-fill: @raceway-oneway-arrow-color;
        }
        [highway = 'footway'],
        [highway = 'path'] {
          marker-fill: @footway-oneway-arrow-color;
          [horse = 'designated'] {
            marker-fill: @bridleway-oneway-arrow-color;
          }
          [bicycle = 'designated'] {
            marker-fill: @cycleway-oneway-arrow-color;
          }
        }
        [highway = 'steps'] {
          marker-fill: @steps-oneway-arrow-color;
        }
        [highway = 'cycleway'] {
          marker-fill: @cycleway-oneway-arrow-color;
        }
        [highway = 'track'] {
          marker-fill: @track-oneway-arrow-color;
        }
        [highway = 'bridleway'] {
          marker-fill: @bridleway-oneway-arrow-color;
        }
      }
    }
  }
}
#railways-text-name {
  /* Mostly started from z17. */
  [railway = 'rail'],
  [railway = 'subway'],
  [railway = 'narrow_gauge'],
  [railway = 'light_rail'],
  [railway = 'preserved'],
  [railway = 'funicular'],
  [railway = 'monorail'],
  [railway = 'tram'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #666666;
      text-size: 10;
      text-dy: 6;
      text-spacing: 900;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
    [zoom >= 19] {
      text-size: 11;
      text-dy: 7;
    }
  }
  [railway = 'rail'] {
    /* Render highspeed rails from z11,
       other main routes at z14. */
    [highspeed = 'yes'] {
      [zoom >= 11] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 3;
        text-spacing: 300;
        text-clip: false;
        text-placement: line;
        text-min-distance: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 13] {
        text-dy: 6;
      }
      [zoom >= 14] {
        text-spacing: 600;
      }
      [zoom >= 17] {
        text-size: 11;
        text-dy: 7;
      }
      [zoom >= 19] {
        text-size: 12;
        text-dy: 8;
      }
    }
    [highspeed != 'yes'][usage = 'main'] {
      [zoom >= 14] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 6;
        text-spacing: 300;
        text-clip: false;
        text-placement: line;
        text-min-distance: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 17] {
        text-spacing: 600;
        text-size: 11;
        text-dy: 7;
      }
      [zoom >= 19] {
        text-size: 12;
        text-dy: 8;
      }
    }
  }
  /* Other minor railway styles. For service rails, see:
     https://github.com/gravitystorm/openstreetmap-carto/pull/2687 */
  [railway = 'preserved'],
  [railway = 'miniature'],
  [railway = 'disused'],
  [railway = 'construction'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #666666;
      text-size: 10;
      text-dy: 6;
      text-spacing: 900;
      text-clip: false;
      text-placement: line;
      text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
    }
    [zoom >= 19] {
      text-size: 11;
      text-dy: 7;
    }
  }
}

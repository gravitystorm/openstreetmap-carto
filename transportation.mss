/* For the main linear features, such as roads and railways. */

#transportation {
  [railway = 'rail'] {
    ::casing {
      [bridge = true][zoom >= 13] {
        line-width: 6.5;
        [service = true] {
          line-width: 5.7;
        }
        line-color: @bridge-casing;
        line-join: round;
      }
    }
    ::fill {
      [bridge = true][zoom >= 13] {
        line-width: 5;
        [service = true] {
          line-width: 4;
        }
        line-color: white;
        line-join: round;

      }
    }
    ::rw-line {
      [zoom < 13][service != true] {
        line-color: #787878;
        line-width: 0.5;
        [zoom >= 8] { line-width: 0.8; }
        [zoom >= 12] { line-width: 0.9; }
        line-join: round;
        [tunnel = true] {
          line-dasharray: 5,2;
        }
      }
      [zoom >= 13] {
        [tunnel != true] {
          dark/line-color: #707070;
          dark/line-width: 3;
          light/line-width: 1;
          light/line-dasharray: 8,8;
          [zoom >= 15] {
            light/line-dasharray: 0,8,8,1;
          }
          [zoom >= 18] {
            dark/line-width: 4;
            light/line-width: 2;
          }
          [service = true] {
            dark/line-width: 2;
            dark/line-color: #aaa;
            light/line-width: 0.8;
            light/line-dasharray: 0,8,8,1;
            [zoom >= 18] {
              dark/line-width: 3;
              light/line-width: 1;
            }
          }
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
        }
        [tunnel = true] {
          line-color: #787878;
          line-width: 2.8;
          line-dasharray: 6,4;
          [zoom >= 18] {
            line-dasharray: 8,6;
            line-width: 3.8;
          }
          [tunnel = true] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 3,3;
            [zoom >= 18] {
              line-width: 2.7;
            }
          }
          line-clip: false;
        }
      }
    }
  }

  [railway = 'tram'] {
    ::casing {
      [bridge = true][zoom >= 13][service != true],
      [bridge = true][zoom >= 15] {
        line-width: 4; // TODO: Check these existing sizes make sense
        [service = true] {
          line-width: 5;
        }
        line-color: @bridge-casing;
        line-join: round;
      }
    }
    ::fill {
      [bridge = true][zoom >= 13][service != true], // TODO: is expressing it this way resulting in too many combinations?
      [bridge = true][zoom >= 15] {
        line-width: 5;
        [service = true] {
          line-width: 4;
        }
        line-color: white;
        line-join: round;
      }
    }
    ::rw-line {
      [zoom >= 12][service != true],
      [zoom >= 15] {
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
        }
        [zoom >= 17] {
          line-width: 2;
        }
        [zoom >= 15][service = true] {
          line-width: 0.5;
          [zoom >= 17] {
            line-width: 1;
          }
          [zoom >= 18] {
            line-width: 1.5;
          }
          [zoom >= 19] {
            line-width: 2;
          }
        }
      }
    }
  }

  [railway = 'subway'] {
    ::casing {
      [bridge = true][zoom >= 14] {
        line-width: 5.5;
        line-color: @bridge-casing;
        line-join: round;
      }
    }
    ::fill {
      [bridge = true][zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
      }
    }
    ::rw-line {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
      }
    }
  }
  [highway = 'motorway'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @motorway-low-zoom-casing;
        [zoom >= 13] { line-color: @motorway-casing; }
        line-width: @motorway-width-z12;
        [zoom >= 13] { line-width: @motorway-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19; }
        [bridge = true][zoom >= 13] {
          line-color: @bridge-casing;
        }
        [link = true] {
          line-width: @motorway-link-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19; }
        }
        line-join: round;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 5] { // TODO: exclude link until z10
        line-color: @motorway-low-zoom;
        [zoom >= 12] { line-color: @motorway-fill; }

        line-width: @motorway-width-z5;
        [zoom >= 7] { line-width: @motorway-width-z7; }
        [zoom >= 8] { line-width: @motorway-width-z8; }
        [zoom >= 9] { line-width: @motorway-width-z9; }
        [zoom >= 10] { line-width: @motorway-width-z10; }
        [zoom >= 11] { line-width: @motorway-width-z11; }
        [zoom >= 12] { line-width: @motorway-width-z12 - 2 * @major-casing-width-z12; }
        [zoom >= 13] { line-width: @motorway-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @motorway-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @motorway-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @motorway-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @motorway-width-z19 - 2 * @major-casing-width-z19; }
        [link = true] {
          line-width: @motorway-link-width-z12 - 2 * @casing-width-z12;
          [zoom >= 13] { line-width: @motorway-link-width-z13 - 2 * @casing-width-z13; }
          [zoom >= 15] { line-width: @motorway-link-width-z15 - 2 * @casing-width-z15; }
          [zoom >= 17] { line-width: @motorway-link-width-z17 - 2 * @casing-width-z17; }
          [zoom >= 18] { line-width: @motorway-link-width-z18 - 2 * @casing-width-z18; }
          [zoom >= 19] { line-width: @motorway-link-width-z19 - 2 * @casing-width-z19; }
        }
        line-cap: round;
        line-join: round;
      }
    }
  }

  [highway = 'trunk'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @trunk-low-zoom-casing;
        [zoom >= 13] { line-color: @trunk-casing; }
        line-width: @trunk-width-z12;
        [zoom >= 15] { line-width: @trunk-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19; }
        [bridge = true][zoom >= 13] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 5] {
        line-color: @trunk-low-zoom;
        [zoom >= 12] { line-color: @trunk-fill; }
        line-width: @trunk-width-z5;
        [zoom >= 7] { line-width: @trunk-width-z7; }
        [zoom >= 8] { line-width: @trunk-width-z8; }
        [zoom >= 9] { line-width: @trunk-width-z9; }
        [zoom >= 10] { line-width: @trunk-width-z10; }
        [zoom >= 11] { line-width: @trunk-width-z11; }
        [zoom >= 12] { line-width: @trunk-width-z12 - 2 * @major-casing-width-z12; }
        [zoom >= 13] { line-width: @trunk-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @trunk-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @trunk-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @trunk-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @trunk-width-z19 - 2 * @major-casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
    }
  }

  [highway = 'primary'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @primary-low-zoom-casing;
        [zoom >= 13] { line-color: @primary-casing; }
        line-width: @primary-width-z12;
        [zoom >= 13] { line-width: @primary-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19; }
        [bridge = true][zoom >= 13] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 8] {
        line-color: @primary-low-zoom;
        [zoom >= 12] { line-color: @primary-fill; }

        line-width: @primary-width-z8;
        [zoom >= 9] { line-width: @primary-width-z9; }
        [zoom >= 10] { line-width: @primary-width-z10; }
        [zoom >= 11] { line-width: @primary-width-z11; }
        [zoom >= 12] { line-width: @primary-width-z12 - 2 * @major-casing-width-z12; }
        [zoom >= 13] { line-width: @primary-width-z13 - 2 * @major-casing-width-z13; }
        [zoom >= 15] { line-width: @primary-width-z15 - 2 * @major-casing-width-z15; }
        [zoom >= 17] { line-width: @primary-width-z17 - 2 * @major-casing-width-z17; }
        [zoom >= 18] { line-width: @primary-width-z18 - 2 * @major-casing-width-z18; }
        [zoom >= 19] { line-width: @primary-width-z19 - 2 * @major-casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
    }
  }

  [highway = 'secondary'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @secondary-low-zoom-casing;
        [zoom >= 13] { line-color: @secondary-casing; }
        line-width: @secondary-width-z12;
        [zoom >= 13] { line-width: @secondary-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17; }
        [zoom >= 18] { line-width: @secondary-width-z18; }
        [zoom >= 19] { line-width: @secondary-width-z19; }
        [bridge = true][zoom >= 13] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 9] {
        line-color: @unimportant-road;
        [zoom >= 12] { line-color: @secondary-fill; }
        line-width: @secondary-width-z9;
        [zoom >= 10] { line-width: @secondary-width-z10; }
        [zoom >= 11] { line-width: @secondary-width-z11; }
        [zoom >= 12] { line-width: @secondary-width-z12 - 2 * @secondary-casing-width-z12; }
        [zoom >= 13] { line-width: @secondary-width-z13 - 2 * @secondary-casing-width-z13; }
        [zoom >= 15] { line-width: @secondary-width-z15 - 2 * @secondary-casing-width-z15; }
        [zoom >= 17] { line-width: @secondary-width-z17 - 2 * @secondary-casing-width-z17; }
        [zoom >= 18] { line-width: @secondary-width-z18 - 2 * @secondary-casing-width-z18; }
        [zoom >= 19] { line-width: @secondary-width-z19 - 2 * @secondary-casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
    }
  }

  [highway = 'tertiary'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width-z12;
        [zoom >= 13] { line-width: @tertiary-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15; }
        [zoom >= 16] { line-width: @tertiary-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19; }
          [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @tertiary-casing;
        marker-width: @tertiary-width-z15 * 1.6 + 2 * @casing-width-z15;
        marker-height: @tertiary-width-z15 * 1.6 + 2 * @casing-width-z15;
        [zoom >= 16] {
          marker-width: @tertiary-width-z16 * 1.6 + 2 * @casing-width-z16;
          marker-height: @tertiary-width-z16 * 1.6 + 2 * @casing-width-z16;
        }
        [zoom >= 17] {
          marker-width: @tertiary-width-z17 * 1.6 + 2 * @casing-width-z17;
          marker-height: @tertiary-width-z17 * 1.6 + 2 * @casing-width-z17;
        }
        [zoom >= 18] {
          marker-width: @tertiary-width-z18 * 1.6 + 2 * @casing-width-z18;
          marker-height: @tertiary-width-z18 * 1.6 + 2 * @casing-width-z18;
        }
        [zoom >= 19] {
          marker-width: @tertiary-width-z19 * 1.6 + 2 * @casing-width-z19;
          marker-height: @tertiary-width-z19 * 1.6 + 2 * @casing-width-z19;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @residential-fill;
        marker-width: @residential-width-z15 * 1.6;
        marker-height: @residential-width-z15 * 1.6;
        [zoom >= 16] {
          marker-width: @residential-width-z16 * 1.6;
          marker-height: @residential-width-z16 * 1.6;
        }
        [zoom >= 17] {
          marker-width: @residential-width-z17 * 1.6;
          marker-height: @residential-width-z17 * 1.6;
        }
        [zoom >= 18] {
          marker-width: @residential-width-z18 * 1.6;
          marker-height: @residential-width-z18 * 1.6;
        }
        [zoom >= 19] {
          marker-width: @residential-width-z19 * 1.6;
          marker-height: @residential-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 10] {
        line-color: @unimportant-road;
        [zoom >= 12] { line-color: @tertiary-fill; }
        line-width: @tertiary-width-z10;
        line-width: @tertiary-width-z11;
        [zoom >= 12] { line-width: @tertiary-width-z12 - 2 * @casing-width-z12; }
        [zoom >= 13] { line-width: @tertiary-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 14] { line-width: @tertiary-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @tertiary-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @tertiary-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @tertiary-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @tertiary-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @tertiary-width-z19 - 2 * @casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @residential-fill;
        marker-width: @residential-width-z15 * 1.6;
        marker-height: @residential-width-z15 * 1.6;
        [zoom >= 16] {
          marker-width: @residential-width-z16 * 1.6;
          marker-height: @residential-width-z16 * 1.6;
        }
        [zoom >= 17] {
          marker-width: @residential-width-z17 * 1.6;
          marker-height: @residential-width-z17 * 1.6;
        }
        [zoom >= 18] {
          marker-width: @residential-width-z18 * 1.6;
          marker-height: @residential-width-z18 * 1.6;
        }
        [zoom >= 19] {
          marker-width: @residential-width-z19 * 1.6;
          marker-height: @residential-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
  }

  [highway = 'residential'],
  [highway = 'unclassified'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width-z13;
        [zoom >= 14] { line-width: @residential-width-z14; }
        [zoom >= 15] { line-width: @residential-width-z15; }
        [zoom >= 16] { line-width: @residential-width-z16; }
        [zoom >= 17] { line-width: @residential-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19; }
        [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: @residential-casing;
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @residential-casing;
        marker-width: @residential-width-z15 * 1.6 + 2 * @casing-width-z15;
        marker-height: @residential-width-z15 * 1.6 + 2 * @casing-width-z15;
        [zoom >= 16] {
          marker-width: @residential-width-z16 * 1.6 + 2 * @casing-width-z16;
          marker-height: @residential-width-z16 * 1.6 + 2 * @casing-width-z16;
        }
        [zoom >= 17] {
          marker-width: @residential-width-z17 * 1.6 + 2 * @casing-width-z17;
          marker-height: @residential-width-z17 * 1.6 + 2 * @casing-width-z17;
        }
        [zoom >= 18] {
          marker-width: @residential-width-z18 * 1.6 + 2 * @casing-width-z18;
          marker-height: @residential-width-z18 * 1.6 + 2 * @casing-width-z18;
        }
        [zoom >= 19] {
          marker-width: @residential-width-z19 * 1.6 + 2 * @casing-width-z19;
          marker-height: @residential-width-z19 * 1.6 + 2 * @casing-width-z19;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @unimportant-road;
        [zoom >= 13] { line-color: @residential-fill; }
        line-width: @residential-width-z12;
        [zoom >= 13] { line-width: @residential-width-z13 - 2 * @casing-width-z13; }
        [zoom >= 15] { line-width: @residential-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 17] { line-width: @residential-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @residential-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @residential-width-z19 - 2 * @casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: @residential-fill;
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @residential-fill;
        marker-width: @residential-width-z15 * 1.6;
        marker-height: @residential-width-z15 * 1.6;
        [zoom >= 16] {
          marker-width: @residential-width-z16 * 1.6;
          marker-height: @residential-width-z16 * 1.6;
        }
        [zoom >= 17] {
          marker-width: @residential-width-z17 * 1.6;
          marker-height: @residential-width-z17 * 1.6;
        }
        [zoom >= 18] {
          marker-width: @residential-width-z18 * 1.6;
          marker-height: @residential-width-z18 * 1.6;
        }
        [zoom >= 19] {
          marker-width: @residential-width-z19 * 1.6;
          marker-height: @residential-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
  }

  [highway = 'pedestrian'],
  [highway = 'living_street'] { // with only the colours differing, these can share code
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 13] {
        line-color: @pedestrian-casing;
        [highway = 'living_street'] {
          line-color: @living-street-casing;
        }
        line-width: @pedestrian-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17; }
        [zoom >= 18] { line-width: @pedestrian-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19; }
        [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: @pedestrian-fill;
        [highway = 'living_street'] {
          line-color: @living-street-fill;
        }
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @pedestrian-casing;
        [highway = 'living_street'] {
          marker-fill: @living-street-casing;
        }
        marker-width: @pedestrian-width-z15 * 1.6 + 2 * @casing-width-z15;
        marker-height: @pedestrian-width-z15 * 1.6 + 2 * @casing-width-z15;
        [zoom >= 16] {
          marker-width: @pedestrian-width-z16 * 1.6 + 2 * @casing-width-z16;
          marker-height: @pedestrian-width-z16 * 1.6 + 2 * @casing-width-z16;
        }
        [zoom >= 17] {
          marker-width: @pedestrian-width-z17 * 1.6 + 2 * @casing-width-z17;
          marker-height: @pedestrian-width-z17 * 1.6 + 2 * @casing-width-z17;
        }
        [zoom >= 18] {
          marker-width: @pedestrian-width-z18 * 1.6 + 2 * @casing-width-z18;
          marker-height: @pedestrian-width-z18 * 1.6 + 2 * @casing-width-z18;
        }
        [zoom >= 19] {
          marker-width: @pedestrian-width-z19 * 1.6 + 2 * @casing-width-z19;
          marker-height: @pedestrian-width-z19 * 1.6 + 2 * @casing-width-z19;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 13] {
        line-color: @pedestrian-fill;
        [highway = 'living_street'] {
          line-color: @living-street-fill;
        }
        line-width: @pedestrian-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @pedestrian-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: @pedestrian-width-z15 - 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: @pedestrian-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @pedestrian-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @pedestrian-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @pedestrian-width-z19 - 2 * @casing-width-z19; }
        line-cap: round;
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: @pedestrian-fill;
        [highway = 'living_street'] {
          polygon-fill: @living-street-fill;
        }
      }
      ['mapnik::geometry_type' = point][zoom >= 15] {
        marker-fill: @pedestrian-fill;
        [highway = 'living_street'] {
          marker-fill: @living-street-fill;
        }
        marker-width: @pedestrian-width-z15 * 1.6;
        marker-height: @pedestrian-width-z15 * 1.6;
        [zoom >= 16] {
          marker-width: @pedestrian-width-z16 * 1.6;
          marker-height: @pedestrian-width-z16 * 1.6;
        }
        [zoom >= 17] {
          marker-width: @pedestrian-width-z17 * 1.6;
          marker-height: @pedestrian-width-z17 * 1.6;
        }
        [zoom >= 18] {
          marker-width: @pedestrian-width-z18 * 1.6;
          marker-height: @pedestrian-width-z18 * 1.6;
        }
        [zoom >= 19] {
          marker-width: @pedestrian-width-z19 * 1.6;
          marker-height: @pedestrian-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
  }

  [highway = 'road'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 14] {
        line-color: @road-casing;
        [highway = 'road'] {
          line-color: @road-casing;
        }
        line-width: @service-width-z14;
        [zoom >= 16] { line-width: @service-width-z16; }
        [zoom >= 17] { line-width: @service-width-z17; }
        [zoom >= 18] { line-width: @service-width-z18; }
        [zoom >= 19] { line-width: @service-width-z19; }
        [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 10] {
        line-color: @unimportant-road;
        [zoom >= 14] { line-color: @road-fill }
        line-width: 1;
        [zoom >= 14] { line-width: @road-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 16] { line-width: @road-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @road-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @road-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @road-width-z19 - 2 * @casing-width-z19; }
        line-join: round;
        line-cap: round;
      }
    }
  }

  [highway = 'service'][service = false] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 14] {
        line-color: @service-casing;
        line-width: @service-width-z14;
        [zoom >= 16] { line-width: @service-width-z16; }
        [zoom >= 17] { line-width: @service-width-z17; }
        [zoom >= 18] { line-width: @service-width-z18; }
        [zoom >= 19] { line-width: @service-width-z19; }
        [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: @service-casing;
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
      ['mapnik::geometry_type' = point][zoom >= 16] {
        marker-fill: @service-casing;
        marker-width: @service-width-z16 * 1.6 + 2 * @casing-width-z16;
        marker-height: @service-width-z16 * 1.6 + 2 * @casing-width-z16;
        [zoom >= 17] {
          marker-width: @service-width-z17 * 1.6 + 2 * @casing-width-z17;
          marker-height: @service-width-z17 * 1.6 + 2 * @casing-width-z17;
        }
        [zoom >= 18] {
          marker-width: @service-width-z18 * 1.6 + 2 * @casing-width-z18;
          marker-height: @service-width-z18 * 1.6 + 2 * @casing-width-z18;
        }
        [zoom >= 19] {
          marker-width: @service-width-z19 * 1.6 + 2 * @casing-width-z19;
          marker-height: @service-width-z19 * 1.6 + 2 * @casing-width-z19;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }

    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 13] {
        line-color: @unimportant-road;
        [zoom >= 14] {
          line-color: @service-fill;
        }
        line-width: @service-width-z13 - 2 * @casing-width-z13;
        [zoom >= 14] { line-width: @service-width-z14 - 2 * @casing-width-z14; }
        [zoom >= 16] { line-width: @service-width-z16 - 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: @service-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @service-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @service-width-z19 - 2 * @casing-width-z19; }
        line-join: round;
        line-cap: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: @service-fill;
      }
      ['mapnik::geometry_type' = point][zoom >= 16] {
        marker-fill: @service-fill;
        marker-width: @service-width-z16 * 1.6;
        marker-height: @service-width-z16 * 1.6;
        [zoom >= 17] {
          marker-width: @service-width-z17 * 1.6;
          marker-height: @service-width-z17 * 1.6;
        }
        [zoom >= 18] {
          marker-width: @service-width-z18 * 1.6;
          marker-height: @service-width-z18 * 1.6;
        }
        [zoom >= 19] {
          marker-width: @service-width-z19 * 1.6;
          marker-height: @service-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
  }

  [highway = 'service'][service = true] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 16] {
        line-color: @service-casing;
        line-width: @minor-service-width-z16;
        [zoom >= 17] { line-width: @minor-service-width-z17; }
        [zoom >= 18] { line-width: @minor-service-width-z18; }
        [zoom >= 19] { line-width: @minor-service-width-z19; }
        [bridge = true][zoom >= 14] {
          line-color: @bridge-casing;
        }
        line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: @service-casing;
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
      ['mapnik::geometry_type' = point][zoom >= 18] {
        marker-fill: @service-casing;
        marker-width: @minor-service-width-z18 * 1.6 + 2 * @casing-width-z18;
        marker-height: @minor-service-width-z18 * 1.6 + 2 * @casing-width-z18;
        [zoom >= 19] {
          marker-width: @minor-service-width-z19 * 1.6 + 2 * @casing-width-z19;
          marker-height: @minor-service-width-z19 * 1.6 + 2 * @casing-width-z19;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 16] {
        line-color: @service-fill;
        line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
        [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @casing-width-z19; }
        line-join: round;
        line-cap: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: @service-fill;
      }
      ['mapnik::geometry_type' = point][zoom >= 18] {
        marker-fill: @service-fill;
        marker-width: @minor-service-width-z18 * 1.6;
        marker-height: @minor-service-width-z18 * 1.6;
        [zoom >= 19] {
          marker-width: @minor-service-width-z19 * 1.6;
          marker-height: @minor-service-width-z19 * 1.6;
        }
        marker-allow-overlap: true;
        marker-ignore-placement: true;
        marker-line-width: 0;
      }
    }
  }

  [highway = 'raceway'] {
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 12] {
        line-color: @raceway-fill;
        line-width: 1.2;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 3; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 18] { line-width: 8; }
        [zoom >= 19] { line-width: 12; }
        [zoom >= 20] { line-width: 24; }
        line-join: round;
        line-cap: round;
      }
    }
  }

  [highway = 'track'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 13][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [bridge = true] {
          line-width: @track-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [tracktype = 'grade1'] {
            line-width: @track-grade1-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          [tracktype = 'grade2'] {
            line-width: @track-grade2-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          }
          line-color: @bridge-casing;
          line-join: round;
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
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 13][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [zoom >= 15] {
          background/line-color: @track-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @track-width-z15 + 2 * @paths-background-width;
          /* With the heavier dasharrays on grade1 and grade2 it helps to make the casing a bit larger */
          [tracktype = 'grade1'] {
            background/line-width: @track-grade1-width-z15 + 2 * @paths-background-width;
          }
          [tracktype = 'grade2'] {
            background/line-width: @track-grade2-width-z15 + 2 * @paths-background-width;
          }
          background/line-opacity: 0.4;
          [bridge = true] { // TODO: Does this need to go into its own attachment?
            background/line-opacity: 1;
          }
        }
        line/line-color: @track-fill;
        [access = 'no'] { line/line-color: @track-fill-noaccess; }

        line/line-width: @track-width-z13;
        line/line-dasharray: 5,4,2,4;
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
        line/line-cap: round;
        line/line-join: round;
        line/line-opacity: 0.8;
        // TODO: clip
      }
    }
  }
  [highway = 'bridleway'],
  [highway = 'cycleway'],
  [highway = 'footway'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 14][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [bridge = true] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: @service-casing;
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 13][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [zoom >= 14] { // TODO: should this be non-tunnel non-bridge only? orig has it in ::bridges_and_tunnels_background
                       // TODO: Should this be moved to ::casing?
          background/line-color: @footway-casing;
          [highway = 'bridleway'] {
            background/line-color: @bridleway-casing;
          }
          [highway = 'cycleway'] {
            background/line-color: @cycleway-casing;
          }
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @footway-width-z15 + 2 * @paths-background-width;
          [zoom >= 16] { background/line-width: @footway-width-z16 + 2 * @paths-background-width; }
          [zoom >= 18] { background/line-width: @footway-width-z18 + 2 * @paths-background-width; }
          [zoom >= 19] { background/line-width: @footway-width-z19 + 2 * @paths-background-width; }
          background/line-opacity: 0.4;
          [bridge = true] { // TODO: Does this need to go into its own attachment?
            background/line-opacity: 1;
          }
        }

        line/line-color: @footway-fill;
        [highway = 'bridleway'] {
          line/line-color: @bridleway-fill;
        }
        [highway = 'cycleway'] {
          line/line-color: @cycleway-fill;
        }
        [access = 'no'] {
          line/line-color: @footway-fill-noaccess;
          [highway = 'bridleway'] {
            line/line-color: @bridleway-fill-noaccess;
          }
          [highway = 'cycleway'] {
            line/line-color: @cycleway-fill-noaccess;
          }
        }

        line/line-width: @footway-width-z13;
        [zoom >= 15] { line/line-width: @footway-width-z15; }
        [zoom >= 16] { line/line-width: @footway-width-z16; }
        [zoom >= 18] { line/line-width: @footway-width-z18; }
        [zoom >= 19] { line/line-width: @footway-width-z19; }

        line/line-dasharray: 1,3;
        [highway = 'bridleway'] {
          line/line-dasharray: 4,2;
        }
        // Unknown surfaces
        [highway = 'cycleway'][zoom >= 15],
        [highway = 'footway'][zoom >= 15] {
          line/line-dasharray: 1,3,2,4;
          [zoom >= 16] { line/line-dasharray: 1,4,2,3; }
        }

        [highway = 'cycleway'][paved = true][zoom >= 15],
        [highway = 'footway'][paved = true][zoom >= 15], {
          line/line-dasharray: 2,3.5;
          [zoom >= 16] { line/line-dasharray: 3,3.5; }
          [zoom >= 17] { line/line-dasharray: 3,3; }
        }
        [highway = 'cycleway'][paved = false][zoom >= 15],
        [highway = 'footway'][paved = false][zoom >= 15], {
          line/line-dasharray: 1,4;
        }
      }
      [highway != 'bridleway']['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: @pedestrian-fill;
      }
    }
  }

  [highway = 'steps'] {
    ::casing {
      ['mapnik::geometry_type' = linestring][zoom >= 14][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [bridge = true] {
          line-width: @footway-width-z13 + 2 * (@paths-background-width + @paths-bridge-casing-width);
          [zoom >= 15] { line-width: @footway-width-z15 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 16] { line-width: @footway-width-z16 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 18] { line-width: @footway-width-z18 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          [zoom >= 19] { line-width: @footway-width-z19 + 2 * (@paths-background-width + @paths-bridge-casing-width); }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }
    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 13][access != 'no'],
      ['mapnik::geometry_type' = linestring][zoom >= 15] {
        [zoom >= 15] {
          background/line-color: @steps-casing;
          background/line-cap: round;
          background/line-join: round;
          background/line-width: @steps-width-z15 + 2 * @paths-background-width;
          background/line-opacity: 0.4;
          [bridge = true] { // TODO: Does this need to go into its own attachment?
            background/line-opacity: 1;
          }
        }
        line/line-color: @steps-fill;
        [access = 'no'] { line/line-color: @steps-fill-noaccess; }
        line/line-width: @steps-width-z13;
        [zoom >= 15] { line/line-width:  @steps-width-z15; }
        line/line-dasharray: 2,1;
      }
    }
  }

  [highway = 'platform'] { // TODO: Get railway=platform working with vast expansion in XML
    ::casing {
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        line-color: grey;
        line-width: 2 * @casing-width-z14;
        [zoom >= 14] { line-width: 2 * @casing-width-z14; }
        [zoom >= 15] { line-width: 2 * @casing-width-z15; }
        [zoom >= 16] { line-width: 2 * @casing-width-z16; }
        [zoom >= 17] { line-width: 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: 2 * @casing-width-z19; }
      }
    }

    ::fill {
      ['mapnik::geometry_type' = linestring][zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
      ['mapnik::geometry_type' = polygon][zoom >= 14] {
        polygon-fill: #bbbbbb;
      }
    }
  }
}

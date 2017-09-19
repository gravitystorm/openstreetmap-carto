/* For the main linear features, such as roads and railways. */

#transportation {
  [highway = 'motorway'] {
    ::casing {
      ['mapnik::geometry_type' = 2][zoom >= 12] {
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
      ['mapnik::geometry_type' = 2][zoom >= 10] {
        line-color: @motorway-low-zoom;
        [zoom >= 12] { line-color: @motorway-fill; }

        line-width: @motorway-width-z10;
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
      ['mapnik::geometry_type' = 2][zoom >= 12] {
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
      ['mapnik::geometry_type' = 2][zoom >= 12] {
        line-color: @trunk-low-zoom;
        [zoom >= 12] { line-color: @trunk-fill; }
        line-width: @trunk-width-z10;
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
      ['mapnik::geometry_type' = 2][zoom >= 12] {
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
      ['mapnik::geometry_type' = 2][zoom >= 12] {
        line-color: @primary-low-zoom;
        [zoom >= 12] { line-color: @primary-fill; }
        line-width: @primary-width-z12 - 2 * @major-casing-width-z12;
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
      ['mapnik::geometry_type' = 2][zoom >= 12] {
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
      ['mapnik::geometry_type' = 2][zoom >= 10] {
        line-color: @unimportant-road;
        [zoom >= 12] { line-color: @secondary-fill; }
        line-width: @secondary-width-z10;
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
    [zoom >= 12] {
      ::casing {
        ['mapnik::geometry_type' = 2] {
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
      }
      ::fill {
        ['mapnik::geometry_type' = 2][zoom >= 10] {
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
      }
    }
  }

  [highway = 'residential'],
  [highway = 'unclassified'] {
    ::casing {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
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
    }
    ::fill {
      ['mapnik::geometry_type' = 2][zoom >= 12] {
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
    }
  }
  [highway = 'pedestrian'],
  [highway = 'living_street'] { // with only the colours differing, these can share code
    ::casing {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
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
    }
    ::fill {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
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
    }
  }

  [highway = 'road'] {
    ::casing {
      ['mapnik::geometry_type' = 2][zoom >= 14] {
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
      ['mapnik::geometry_type' = 2][zoom >= 10] {
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
      ['mapnik::geometry_type' = 2][zoom >= 14] {
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
    }
    ::fill {
      ['mapnik::geometry_type' = 2][zoom >= 13] {
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
    }
  }

  [highway = 'service'][service = true] {
    ::casing {
      ['mapnik::geometry_type' = 2][zoom >= 16] {
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
    }
    ::fill {
      ['mapnik::geometry_type' = 2][zoom >= 16] {
        line-color: @service-fill;
        line-width: @minor-service-width-z16 - 2 * @casing-width-z16;
        [zoom >= 17] { line-width: @minor-service-width-z17 - 2 * @casing-width-z17; }
        [zoom >= 18] { line-width: @minor-service-width-z18 - 2 * @casing-width-z18; }
        [zoom >= 19] { line-width: @minor-service-width-z19 - 2 * @casing-width-z19; }
        line-join: round;
        line-cap: round;
      }
    }
  }
}
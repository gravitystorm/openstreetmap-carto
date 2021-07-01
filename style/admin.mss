@admin-boundaries: #8d618b; // Lch(47,30,327)
@admin-boundaries-narrow: #845283; // Lch(42,35,327)
@admin-boundaries-wide: #a37da1; // Lch(57,25,327)

#admin-low-zoom[zoom < 8],
#admin-mid-zoom[zoom >= 8][zoom < 13],
#admin-high-zoom[zoom >= 13] {
  [admin_level = 2][zoom >= 4] {
    wide/line-join: bevel;
    wide/line-color: @admin-boundaries;
    wide/line-opacity: 0.5;
    wide/line-width: 1.2;
    [zoom >= 5] {
      wide/line-width: 1.5;
    }
    [zoom >= 6] {
      wide/line-width: 1.8;
    }
    [zoom >= 7] {
      wide/line-width: 2.2;
    }
    [zoom >= 8] {
      wide/line-width: 3;
      thin/line-join: bevel;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-opacity: 0.6;
      thin/line-width: 1.2;
    }
    [zoom >= 9] {
      wide/line-width: 3.5;
      thin/line-width: 0.8;
    }
    [zoom >= 10] {
      wide/line-color: @admin-boundaries-wide;
      wide/line-width: 4.5;
      thin/line-width: 1;
      thin/line-dasharray: 18,1,4,1;
      thin/line-clip: false;
    }
    [zoom >= 11] {
      wide/line-width: 5;
      thin/line-width: 1.2;
    }
    [zoom >= 12] {
      wide/line-width: 6;
      thin/line-width: 1.4;
      thin/line-dasharray: 27,1.5,6,1.5;
    }
    [zoom >= 13] {
      wide/line-width: 7;
      thin/line-width: 1.6;
    }
    [zoom >= 14] {
      wide/line-width: 8;
      thin/line-width: 1.8;
      thin/line-dasharray: 36,2,8,2;
    }
  }

  [admin_level = 3][zoom >= 4] {
    wide/line-join: bevel;
    wide/line-color: @admin-boundaries;
    wide/line-opacity: 0.5;
    wide/line-width: 0.6;
    [zoom >= 5] {
      wide/line-width: 0.8;
    }
    [zoom >= 6] {
      wide/line-width: 1.0;
    }
    [zoom >= 7] {
      wide/line-width: 1.2;
    }
    [zoom >= 8] {
      wide/line-width: 1.8;
    }
    [zoom >= 9] {
      wide/line-width: 2.5;
    }
    [zoom >= 10] {
      wide/line-color: @admin-boundaries-wide;
      wide/line-width: 3.2;
      thin/line-join: bevel;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-opacity: 0.6;
      thin/line-width: 0.8;
      thin/line-dasharray: 12,2,1.5,2;
      thin/line-clip: false;
    }
    [zoom >= 11] {
      wide/line-width: 4;
      thin/line-width: 1.0;
    }
    [zoom >= 12] {
      wide/line-width: 4.5;
      thin/line-width: 1.2;
      thin/line-dasharray: 17,3,2,3;
    }
    [zoom >= 13] {
      wide/line-width: 5;
      thin/line-width: 1.4;
    }
    [zoom >= 14] {
      wide/line-width: 5.5;
      thin/line-width: 1.6;
      thin/line-dasharray: 23,4,3,4;
    }
  }

  [admin_level = 4][zoom >= 4] {
    wide/line-join: bevel;
    wide/line-color: @admin-boundaries;
    wide/line-opacity: 0.5;
    wide/line-width: 0.4;
    [zoom >= 5] {
      wide/line-width: 0.5;
    }
    [zoom >= 6] {
      wide/line-width: 0.6;
    }
    [zoom >= 7] {
      wide/line-width: 0.8;
    }
    [zoom >= 8] {
      wide/line-width: 1.0;
    }
    [zoom >= 9] {
      wide/line-width: 1.5;
    }
    [zoom >= 10] {
      wide/line-color: @admin-boundaries-wide;
      wide/line-width: 2.0;
      thin/line-join: bevel;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-opacity: 0.6;
      thin/line-width: 0.6;
      thin/line-dasharray: 8,2,1.5,2,1.5,2;
      thin/line-clip: false;
    }
    [zoom >= 11] {
      wide/line-width: 2.8;
      thin/line-width: 0.8;
    }
    [zoom >= 12] {
      wide/line-width: 3.0;
      thin/line-width: 1.0;
      thin/line-dasharray: 12,3,2,3,2,3;
    }
    [zoom >= 13] {
      wide/line-width: 3.5;
      thin/line-width: 1.2;
    }
    [zoom >= 14] {
      wide/line-width: 4;
      thin/line-width: 1.4;
      thin/line-dasharray: 16,4,3,4,3,4;
    }
  }

  [admin_level = 5][zoom >= 8] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 0.6;
    line-dasharray: 4,0.6,2,0.6;
    line-clip: false;
    [zoom >= 9] {
      line-width: 0.8;
      line-dasharray: 6,1,3,1;
    }
    [zoom >= 10] {
      line-width: 1.2;
      line-dasharray: 10,1.5,4.5,1.5;
    }
    [zoom >= 11] {
      line-width: 1.7;
    }
    [zoom >= 12] {
      line-width: 2.1;
      line-dasharray: 16,2,6,2;
    }
    [zoom >= 14] {
      line-width: 2.4;
      line-dasharray: 20,2,8,2;
    }
  }

  [admin_level = 6][zoom >= 10] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 1.0;
    line-dasharray: 8,1.5,1.5,1.5;
    line-clip: false;
    [zoom >= 11] {
      line-width: 1.4;
    }
    [zoom >= 12] {
      line-width: 1.8;
      line-dasharray: 12,1.5,2,1.5;
    }
    [zoom >= 14] {
      line-width: 2.1;
      line-dasharray: 16,2,3,2;
    }
  }

  [admin_level = 7][zoom >= 11] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 1.2;
    line-dasharray: 6,1.5,1.5,1.5,1.5,1.5;
    line-clip: false;
    [zoom >= 12] {
      line-width: 1.5;
      line-dasharray: 9,2,2,2,2,2;
    }
    [zoom >= 14] {
      line-width: 1.8;
      line-dasharray: 12,2,3,2,3,2;
    }
  }

  [admin_level = 8][zoom >= 12] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 1.4;
    line-dasharray: 8,2,2,2,2.5,2,2,2;
    line-clip: false;
    [zoom >= 14] {
      line-width: 1.6;
      line-dasharray: 10,2,2,2,3,2,2,2;
    }
  }

  [admin_level = 9][zoom >= 13] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 1.2;
    line-dasharray: 0,3,2,2,2,2,2,3;
    line-clip: false;
    [zoom >= 14] {
      line-width: 1.4;
      line-dasharray: 0,4,2,2,3,2,2,4;
    }
  }

  [admin_level = 10][zoom >= 14] {
    line-join: bevel;
    line-color: @admin-boundaries;
    line-opacity: 0.5;
    line-width: 1.2;
    line-dasharray: 0,3,2,2,2,3;
    line-clip: false;
  }
}

#admin-text[zoom >= 11][way_pixels >= 196000] {
  [admin_level = 1][way_pixels >= 360000],
  [admin_level = 2][way_pixels >= 360000],
  [zoom >= 11][admin_level = 3],
  [zoom >= 11][admin_level = 4],
  [zoom >= 11][admin_level = 5],
  [zoom >= 12][admin_level = 6],
  [zoom >= 13][admin_level = 7],
  [zoom >= 14][admin_level = 8],
  [zoom >= 15][admin_level = 9],
  [zoom >= 16] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @state-labels;
    [admin_level = 6] { text-fill: @county-labels; }
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-largest-bbox-only: false;
    text-placement: line;
    text-spacing: 750;
    text-repeat-distance: 250;
    text-margin: 10;
    text-clip: true;
    text-vertical-alignment: middle;
    text-dy: -10;
  }
}

#protected-areas-text[zoom >= 13][way_pixels > 192000] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @protected-area;
  [boundary='aboriginal_lands'],
  [boundary='protected_area'][protect_class='24'] {
    text-fill: @aboriginal;
  }
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: @standard-halo-fill;
  text-largest-bbox-only: false;
  text-placement: line;
  text-spacing: 750;
  text-repeat-distance: 250;
  text-margin: 10;
  text-clip: true;
  text-vertical-alignment: middle;
  text-dy: -10;
}

#protected-areas {
  [way_pixels > 750] {
    [zoom >= 8][zoom < 10] {
      opacity: 0.25;
      line-width: 1.2;
      line-color: @protected-area;
      [boundary = 'aboriginal_lands'] {
        line-color: @aboriginal;
      }
      [zoom >= 9] {
        line-width: 1.5;
      }
    }
    [zoom >= 10] {
      // inner line
      ::wideline {
        opacity: 0.15;
        line-width: 3.6;
        // Unlike planet_osm_line, planet_osm_polygon does not preserves the
        // original direction of the OSM way: Following OGS at
        // https://www.opengeospatial.org/standards/sfa always at the left
        // is the interior and at the right the exterior of the polygon.(This
        // also applies to inner rings of multipolygons.) So a negative
        // line-offset is always an offset to the inner side of the polygon.
        line-offset: -0.9;
        line-color: @protected-area;
        [boundary = 'aboriginal_lands'] {
          line-color: @aboriginal;
        }
        line-join: round;
        line-cap: round;
        [zoom >= 12] {
          line-width: 4;
          line-offset: -1;
        }
        [zoom >= 14] {
          line-width: 6;
          line-offset: -2;
        }
      }
      // outer line
      ::narrowline {
        opacity: 0.15;
        line-width: 1.8;
        line-color: @protected-area;
        [boundary = 'aboriginal_lands'] {
          line-color: @aboriginal;
        }
        line-join: round;
        line-cap: round;
        [zoom >= 12] {
            line-width: 2;
        }
      }
    }
  }
}

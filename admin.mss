@admin-boundaries: #ac46ac;

@admin-simplify: 4;
@admin-simplify-algorithm: visvalingam-whyatt;

/* For performance reasons, the admin border layers are split into three groups
for low, middle and high zoom levels.
For each zoomlevel, all borders come from a single attachment, to handle
overlapping borders correctly.
*/

#admin-low-zoom[zoom < 11],
#admin-mid-zoom[zoom >= 11][zoom < 13],
#admin-high-zoom[zoom >= 13] {
  [admin_level = '2'] {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1.2;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 1.2;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
    }
    [zoom >= 5] {
      background/line-width: 1.5;
      line-width: 1.5;
    }
    [zoom >= 6] {
      background/line-width: 1.8;
      line-width: 1.8;
    }
    [zoom >= 7] {
      background/line-width: 2;
      line-width: 2;
    }
    [zoom >= 8] {
      background/line-width: 3;
      line-width: 3;
    }
    [zoom >= 9] {
      background/line-width: 3.2;
      line-width: 3.2;
    }
    [zoom >= 10] {
      background/line-width: 6;
      line-width: 6;
    }
  }

  [admin_level = '3'] {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.6;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
    }
    [zoom >= 7] {
      background/line-width: 1.2;
      line-width: 1.2;
    }
    [zoom >= 10] {
      background/line-width: 4;
      line-width: 4;
      line-dasharray: 4,2;
      line-clip: false;
    }
  }

  [admin_level = '4'] {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.4;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-color: @admin-boundaries;
      line-join: bevel;
      line-width: 0.4;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
      line-clip: false;
    }
    [zoom >= 5] {
      background/line-width: 0.5;
      line-width: 0.5;
    }
    [zoom >= 6] {
      background/line-width: 0.6;
      line-width: 0.6;
    }
    [zoom >= 7] {
      background/line-width: 1;
      line-dasharray: 4,3;
      line-width: 1;
    }
    [zoom >= 9] {
      background/line-width: 1.8;
      line-width: 1.8;
    }
    [zoom >= 10] {
      background/line-width: 2.5;
      line-width: 2.5;
    }
    [zoom >= 12] {
      background/line-width: 3;
      line-width: 3;
    }
  }
  /*
  The following code prevents admin boundaries from being rendered on top of
  each other. Comp-op works on the entire attachment, not on the individual
  border. Therefore, this code generates an attachment containing a set of
  @admin-boundaries/white dashed lines (of which only the top one is visible),
  and with `comp-op: darken` the white part is ignored, while the
  @admin-boundaries colored part is rendered (as long as the background is not
  darker than @admin-boundaries).
  The SQL has `ORDER BY admin_level`, so the boundary with the lowest
  admin_level is rendered on top, and therefore the only visible boundary.
  */
  opacity: 0.4;
  comp-op: darken;
}

#admin-mid-zoom[zoom >= 11][zoom < 13],
#admin-high-zoom[zoom >= 13] {
  [admin_level = '5'][zoom >= 11] {
    background/line-join: bevel;
    background/line-color: white;
    background/line-width: 2;
    background/line-simplify: @admin-simplify;
    background/line-simplify-algorithm: @admin-simplify-algorithm;
    line-join: bevel;
    line-color: @admin-boundaries;
    line-width: 2;
    line-simplify: @admin-simplify;
    line-simplify-algorithm: @admin-simplify-algorithm;
    line-dasharray: 6,3,2,3,2,3;
    line-clip: false;
  }
  [admin_level = '6'][zoom >= 11] {
    background/line-join: bevel;
    background/line-color: white;
    background/line-width: 2;
    background/line-simplify: @admin-simplify;
    background/line-simplify-algorithm: @admin-simplify-algorithm;
    line-join: bevel;
    line-color: @admin-boundaries;
    line-width: 2;
    line-simplify: @admin-simplify;
    line-simplify-algorithm: @admin-simplify-algorithm;
    line-dasharray: 6,3,2,3;
    line-clip: false;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1.5;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 1.5;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
      line-dasharray: 5,2;
      line-clip: false;
    }
  }
  opacity: 0.5;
  comp-op: darken;
}

#admin-high-zoom[zoom >= 13] {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 2;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 2;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
  comp-op: darken;
}

#admin-text[zoom >= 11][way_pixels >= 48000] {
  [admin_level = '1'][way_pixels >= 360000],
  [admin_level = '2'][way_pixels >= 360000],
  [admin_level = '3'][way_pixels >= 196000],
  [admin_level = '4'][way_pixels >= 196000],
  [zoom >= 12][admin_level = '5'],
  [zoom >= 13][admin_level = '6'],
  [zoom >= 14][admin_level = '7'],
  [zoom >= 15][admin_level = '8'],
  [zoom >= 16] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @admin-boundaries;
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
  text-fill: green;
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
      ::fill {
        opacity: 0.05;
        polygon-fill: green;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          polygon-fill: @aboriginal;
        }
      }
      ::outline {
        opacity: 0.25;
        line-width: 1.2;
        line-color: green;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          line-color: @aboriginal;
        }
        [zoom >= 9] {
          line-width: 1.5;
        }
      }
    }
    [zoom >= 10] {
      ::wideline {
        opacity: 0.15;
        line-width: 3.6;
        line-offset: -0.9;
        line-color: green;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
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
      ::narrowline {
        opacity: 0.15;
        line-width: 1.8;
        line-color: green;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
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

@admin-boundaries: #ac46ac;

/* For performance reasons, the admin border layers are split into three groups
for low, middle and high zoom levels.
For each zoomlevel, all borders come from a single attachment, to handle
overlapping borders correctly.
*/

#admin-low-zoom[zoom < 11],
#admin-mid-zoom[zoom >= 11][zoom < 13],
#admin-high-zoom[zoom >= 13] {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      background/line-color: white;
      background/line-width: 0.6;
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      background/line-width: 2;
      line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        background/line-width: 6;
        line-width: 6;
      }
      [admin_level = '3'] {
        background/line-width: 5;
        line-width: 5;
        line-dasharray: 4,2;
        line-clip: false;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      background/line-color: white;
      background/line-width: 0.6;
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-clip: false;
    }
    [zoom >= 7] {
      background/line-width: 1;
      line-width: 1;
    }
    [zoom >= 11] {
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
    background/line-color: white;
    background/line-width: 2;
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-clip: false;
  }
  [admin_level = '6'][zoom >= 11] {
    background/line-color: white;
    background/line-width: 2;
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-clip: false;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      background/line-color: white;
      background/line-width: 1.5;
      line-color: @admin-boundaries;
      line-width: 1.5;
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
      background/line-color: white;
      background/line-width: 2;
      line-color: @admin-boundaries;
      line-width: 2;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
  comp-op: darken;
}

#admin-text[zoom >= 16] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @admin-boundaries;
  text-halo-radius: 1.0;
  text-halo-fill: rgba(255,255,255,0.6);
  text-placement: line;
  text-clip: true;
  text-vertical-alignment: middle;
  text-dy: -10;
}

#nature-reserve-text[zoom >= 13][way_pixels > 192000] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: green;
  text-halo-radius: 1.0;
  text-halo-fill: rgba(255,255,255,0.6);
  text-placement: line;
  text-clip: true;
  text-vertical-alignment: middle;
  text-dy: -10;
}

#nature-reserve-boundaries {
  [way_pixels > 100][zoom >= 7] {
    [zoom < 10] {
      ::fill {
        opacity: 0.05;
        polygon-fill: green;
      }
    }
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: green;
    a/line-opacity: 0.15;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 2;
    b/line-offset: -1;
    b/line-color: green;
    b/line-opacity: 0.15;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 10] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 4;
      b/line-offset: -2;
    }
    [zoom >= 14] {
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

@admin-boundaries: #ac46ac;

#admin-01234 {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 5;
        line-dasharray: 4,2;
        line-clip: false;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-clip: false;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 11] {
      line-width: 3;
    }
  }
  opacity: 0.4;
}

#admin-5678 {
  [admin_level = '5'][zoom >= 11] {
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-clip: false;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-clip: false;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: @admin-boundaries;
      line-width: 1.5;
      line-dasharray: 5,2;
      line-clip: false;
    }
  }
  opacity: 0.5;
}

#admin-other {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-color: @admin-boundaries;
      line-width: 2;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
}

#admin-text[zoom >= 16] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @admin-boundaries;
  text-placement: line;
  text-halo-radius: 1.0;
  text-placement: line;
  text-dy: -10;
}

#nature-reserve-text[zoom >= 13][way_pixels > 192000] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: green;
  text-placement: line;
  text-halo-radius: 1.0;
  text-placement: line;
  text-dy: -10;
}

#nature-reserve-boundaries {
  [zoom >= 7][way_pixels > 100] {
    ::fill [zoom < 13] {
      opacity: 0.05;
      polygon-fill: green;
    }
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: green;
    a/line-opacity: 0.15;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 3;
    b/line-offset: -1.5;
    b/line-color: green;
    b/line-opacity: 0.15;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 14] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

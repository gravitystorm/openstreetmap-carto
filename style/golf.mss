#landcover[zoom >= 12] {
  ::high-zoom[zoom >= 12] {
    [feature = 'golf_tee'],
    [feature = 'golf_fairway'],
    [feature = 'golf_rough'],
    [feature = 'golf_driving_range'] {
      polygon-fill: @grass;
    }
  }
  ::high-zoom[zoom >= 13] {
    [feature = 'golf_green'] {
      polygon-fill: @pitch;
    }
    [feature = 'golf_bunker'] {
      polygon-fill: @sand;
    }
  }
  ::high-zoom[zoom >= 15] {
    [feature = 'golf_rough'] {
      polygon-pattern-file: url('symbols/golf_rough.svg');
      polygon-pattern-comp-op: soft-light;
    }
  }
}

#golf-line[zoom >= 16] {
  [golf = 'hole'] {
    line-color: @admin-boundaries;
    line-width: 0.5;
  }
}

#text-line[zoom >= 16] {
  [feature = 'golf_hole'][ref != ''] {
    text-placement: line;
    text-name: "[ref]";
    text-size: 11;
    text-fill: @admin-boundaries;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-halo-fill: fadeout(white, 30%);
    [zoom >= 17] {
      text-size: 13;
    }
  }
}

#amenity-points[zoom >= 16] {
  [feature = 'golf_hole'],
  [feature = 'golf_pin'] {
    marker-file: url('symbols/golf_pin.svg');
    marker-fill: @admin-boundaries;
    [ref != ''] {
      text-fill: #444;
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: -10;
      text-halo-radius: 1.5;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [zoom >= 17][feature = 'golf_hole'],
  [zoom >= 17][feature = 'golf_pin'] {
    marker-transform: scale(1.5, 1.5);
  }
}

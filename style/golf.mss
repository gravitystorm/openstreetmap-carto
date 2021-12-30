@golf-color: #666;

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
    }
  }
}

#golf-line[zoom >= 16] {
  [golf = 'hole'] {
    line-color: @golf-color;
    line-width: 0.5;
  }
}

#text-line[zoom >= 16] {
  [feature = 'golf_hole'][ref != ''],
  [feature = 'golf_hole'][name != ''] {
    text-placement: line;
    text-size: 11;
    text-fill: @golf-color;
    text-face-name: @book-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-name: "[ref]";

    [name != ''] { text-name: "[name]"; }

    [zoom >= 17] { text-size: 13; }
  }
}

#amenity-points[zoom >= 16] {
  [feature = 'golf_hole'],
  [feature = 'golf_pin'] {
    marker-file: url('symbols/leisure/golf_pin.svg');
    marker-fill: @golf-color;
    marker-clip: false;
  }
}

#text-point[zoom >= 17] {
  [feature = 'golf_pin'][ref != ''] {
    text-name: "[ref]";
    text-size: @standard-font-size;
    text-fill: @golf-color;
    text-face-name: @book-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-horizontal-alignment: middle;
    text-dx: 1;
    text-dy: 6;
  }
}

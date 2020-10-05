#landcover[zoom >= 14] {
  ::high-zoom[zoom >= 12] {
    [feature = 'golf_green'] {
      polygon-fill: lighten(@grass, 5%);
      line-width: 1;
      line-color: @grass;
    }
    [feature = 'golf_tee'],
    [feature = 'golf_fairway'],
    [feature = 'golf_driving_range'] {
      polygon-fill: @grass;
    }
    [feature = 'golf_bunker'] {
      polygon-fill: @sand;
      polygon-pattern-file: url('symbols/beach.png');
    }
    [feature = 'golf_rough'] {
      polygon-fill: @grass;
      polygon-pattern-file: url('symbols/golf_rough.svg');
      polygon-pattern-opacity: 0.2;
    }
  }
}

#golf-line[zoom >= 16] {
  [golf = 'hole'] {
    line-color: @leisure-green;
    line-width: 0.5;
  }
}

#text-line[zoom >= 16] {
  [feature = 'golf_hole'][ref != ''] {
    text-placement: line;
    text-name: "[ref]";
    text-size: 11;
    text-fill: @leisure-green;
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
    marker-fill: @leisure-green;
    [ref != ''] {
      text-fill: #444;
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: -10;
      text-halo-radius: 1.5;
      text-halo-fill: fadeout(white, 30%);
    }
  }
}

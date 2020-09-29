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
    }
  }
}

#golf-lines[zoom >= 16] {
  [golf = 'hole'][geo = 'line'] {
    line-color: @leisure-green;
    line-width: 0.5;
    [ref != ''] {
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
  [golf = 'hole'][geo = 'point'],
  [golf = 'pin'] {
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
  [golf = 'tee'] {
    marker-fill: @leisure-green;
    marker-width: 3;
    marker-height: 3;
    [ref != ''] {
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: 6;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
}


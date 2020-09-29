#landcover[zoom >= 14] {
  ::high-zoom[zoom >= 12] {
    [feature = 'golf_green'],
    [feature = 'golf_tee'] {
      polygon-fill: mix(@grass, @park, 50%);
    }
    [feature = 'golf_fairway'],
    [feature = 'golf_driving_range'] {
      polygon-fill: @grass;
    }
    [feature = 'golf_bunker'] {
      polygon-fill: @sand;
      polygon-pattern-file: url('symbols/beach.png');
    }
    [feature = 'golf_rough'] {
      polygon-fill: mix(@scrub, @grass, 50%);
    }
  }
}

#golf-lines[zoom >= 16] {
  [golf = 'hole'][geo = 'line'] {
    line-color: darken(@golf_course, 40%);
    line-width: 0.5;
    line-dasharray: 6, 2;
    [name = ''][ref != ''] {
      text-placement: line;
      text-name: "[ref]";
      text-size: 11;
      text-fill: darken(@golf_course, 40%);
      text-face-name: @oblique-fonts;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'hole'][geo = 'point'],
  [golf = 'pin'] {
    point-file: url('symbols/golf_pin.svg');
    [ref != ''] {
      text-fill: #444;
      text-name: "[ref]";
      text-face-name: @book-fonts;
      text-dy: -10;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'tee'] {
    marker-fill: grey;
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

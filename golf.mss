/*

Coloring specific to golf and golf courses.
derived from https://raw.githubusercontent.com/imagico/osm-carto-alternative-colors/master/golf.mss

*/

/* Pinning most grass/plant features relative to grass (natural) and pitch (sporting) */
/* The desire is to "move with" changes of these other colors without looking out of place */
/* Use @water-color for water hazards */

#landcover[zoom >= 14] {
  [feature = 'golf_rough'] {
    polygon-fill: darken(@grass, 60%); // Darkest color, rendered lowest
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_fairway'],
  [feature = 'golf_driving_range'] {
    polygon-fill: darken(@grass, 45%); // Typical green grass
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_water_hazard'],
  [feature = 'golf_lateral_water_hazard'] {
    polygon-fill: @water-color;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_green'] {
    polygon-fill: darken(@grass, 30%);  // Manicured sports turf
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_bunker'] {
    polygon-fill: @sand; // Typically filled with sand
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
  [feature = 'golf_tee'] {
    polygon-fill: darken(@grass, 45%); // Distinctive from rough, fairway, green
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }
}

#golf-lines[zoom >= 16] {
  [golf = 'path'][geo = 'line'] {
    line-color: darken(@pitch, 15%); // Probably a grass trail
    line-width: 2.0;
    [name != ''] {
      text-placement: line;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'cartpath'][geo = 'line'] {
    line-color: grey;
    line-width: 2.0;
    [name != ''] {
      text-placement: line;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'hole'][geo = 'line'] {
    line-color: black;
    line-width: 0.5;
    [name != ''] {
      text-placement: line;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: fadeout(white, 30%);
    }
  }
  [golf = 'hole'][geo='point'],
  [golf='pin'] {
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
  [golf = 'out_of_bounds'] {
    line-color: white;
    line-width: 1.5;
    line-cap: round;
    line-dasharray: 1,8;
  }
}


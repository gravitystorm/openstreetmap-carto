
#landuse-overlay {
  [landuse = 'military'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/military_red_hz2.png');
    line-color: #f55;
    line-width: 3;
    line-opacity: 0.329;
  }
  [leisure = 'nature_reserve'][zoom >= 10] {
    polygon-pattern-file: url('symbols/nature_reserve5.png');
    line-color: #6c3;
    line-width: 0.5;
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/nature_reserve6.png');
      line-width: 1;
    }
  }
}

#area-text {
  [way_area >= 150000][zoom >= 14],
  [way_area >= 80000][zoom >= 15],
  [way_area >= 20000][zoom >= 16],
  [zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}


#cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#area-barriers {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}

#misc-boundaries {
  [zoom >= 7] {
    [zoom < 13] {
      polygon-opacity: 0.05;
      polygon-fill: green;
    }
    line-color: green;
    line-width: 1.5;
    line-dasharray: 4,2;
    line-opacity: 0.15;
    [zoom >= 10] {
      line-width: 3;
      line-dasharray: 6,2;
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}

#theme-park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}

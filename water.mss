@water-text: #6699cc;

#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-dasharray: 4,2;
      line-width: 1.5;
      line-color: #9cf;
      polygon-pattern-file: url('symbols/glacier.png');
      [zoom >= 8] {
        polygon-pattern-file: url('symbols/glacier2.png');
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'mill_pond'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      polygon-gamma: 0.75;
      polygon-fill: @water-color;
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-gamma: 0.75;
    polygon-fill: @water-color;
  }

  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway,
  [landuse = 'water']::water {
    [zoom >= 6] {
      polygon-fill: @water-color;
      polygon-gamma: 0.75;
    }
  }

  [natural = 'mud'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/mud.png');
  }
}

#water-areas-overlay {
  [natural = 'marsh'],
  [natural = 'wetland'] {
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/marsh.png');
    }
  }
}

#glaciers-text {
  [way_area >= 10000000][zoom >= 10],
  [way_area >= 5000000][way_area < 10000000][zoom >= 11],
  [way_area < 5000000][zoom >= 12] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #77f;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 20;
  }
}

#water-lines-casing {
  [waterway='stream'],
  [waterway='ditch'],
  [waterway='drain'] {
    [zoom >= 13] {
      line-width: 1.5;
      line-color: white;
      [waterway='stream'][zoom >= 15] {
        line-width: 2.5;
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines {
  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: @water-color;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'river'][zoom >= 12] {
    line-color: @water-color;
    line-width: 2;
    line-cap: round;
    line-join: round;
    [zoom >= 13] {
      line-width: 3;
    }
    [zoom >= 14] {
      line-width: 5;
    }
    [zoom >= 15] {
      line-width: 6;
    }
    [zoom >= 17] {
      line-width: 10;
    }
    [zoom >= 18] {
      line-width: 12;
    }
    [tunnel = 'yes'] {
      [zoom >= 14] {
        a/line-width: 6;
        a/line-dasharray: 4,2;
        a/line-color: @water-color;
        b/line-width: 4;
        b/line-color: white;
      }
      [zoom >= 15] {
        a/line-width: 7;
      }
      [zoom >= 17] {
        a/line-width: 11;
        b/line-width: 7;
      }
      [zoom >= 18] {
        a/line-width: 13;
        b/line-width: 9;
      }
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [zoom >= 13][zoom < 15] {
      line-width: 1;
      line-color: @water-color;
    }
  }

  [waterway = 'stream'][zoom >= 15] {
    line-width: 2;
    line-color: @water-color;
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
      line-width: 2.4;
      a/line-width: 1.2;
      a/line-color: #f3f7f7;
    }
  }

  [waterway = 'drain'],
  [waterway = 'ditch'] {
    [zoom >= 15] {
      line-width: 1;
      line-color: @water-color;
      [tunnel = 'yes'] {
        line-width: 2;
        line-dasharray: 4,2;
        a/line-width: 1;
        a/line-color: #f3f7f7;
      }
    }
  }

  [waterway = 'canal'][zoom >= 12] {
    line-color: @water-color;
    line-width: 3;
    [zoom >= 13] { line-width: 4; }
    [zoom >= 14] { line-width: 7; }
    [zoom >= 17] { line-width: 11; }
    line-cap: round;
    line-join: round;
    [tunnel = 'yes'][zoom >= 14] {
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: white;
      [zoom >= 17] { line-width: 7; }
    }
  }

  [waterway = 'derelict_canal'][zoom >= 12] {
    line-width: 1.5;
    line-color: #b5e4d0;
    line-dasharray: 4,4;
    line-opacity: 0.5;
    line-join: round;
    line-cap: round;
    [zoom >= 13] {
      line-width: 2.5;
      line-dasharray: 4,6;
    }
    [zoom >= 14] {
      line-width: 4.5;
      line-dasharray: 4,8;
    }
  }
}

#waterway-bridges {
  [zoom >= 14] {
    line-width: 7;
    line-color: #000;
    line-join: round;
    b/line-width: 6;
    b/line-color: @water-color;
    b/line-cap: round;
    b/line-join: round;
    [zoom >= 17] {
      line-width: 11;
      b/line-width: 10;
    }
  }
}

#water-lines-text {
  [waterway = 'river'][zoom >= 13] {
    text-name: "[name]";
    text-face-name: @oblique-fonts;
    text-placement: line;
    text-fill: @water-text;
    text-spacing: 400;
    text-size: 10;
    text-halo-radius: 1;
    [zoom >= 14] { text-size: 12; }
    [tunnel = 'yes'] { text-min-distance: 200; }
  }

  [waterway = 'canal'][zoom >= 13][zoom < 14] {
    text-name: "[name]";
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-size: 10;
    text-placement: line;
    text-fill: @water-text;
  }

  [waterway = 'stream'][zoom >= 15] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @oblique-fonts;
    text-fill: @water-text;
    text-halo-radius: 1;
    text-spacing: 600;
    text-placement: line;
    text-dy: 8;
  }

  [waterway = 'drain'],
  [waterway = 'ditch'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      text-size: 10;
      text-fill: @water-text;
      text-spacing: 600;
      text-placement: line;
      text-halo-radius: 1;
    }
  }

  [waterway = 'canal'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @water-text;
    text-placement: line;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    [lock = 'yes'][zoom >= 17] {
      text-placement: point;
      text-wrap-width: 20;
    }
  }

  [waterway = 'derelict_canal'][zoom >= 13] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #80d1ae;
    text-face-name: @oblique-fonts;
    text-placement: line;
    text-spacing: 600;
    text-halo-radius: 1;
    [zoom >= 14] {
      text-size: 12;
    }
  }
}

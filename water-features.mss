#dam {
  [zoom >= 13] {
    line-width: 2;
    line-color: #444;
    line-join: round;
    line-cap: round;
  }
  [zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: 1;
    text-fill: #222;
    text-size: 8;
    text-face-name: @book-fonts;
  }
}

#dam-area {
  [zoom >= 13] {
    line-width: 2;
    line-color: #444;
    line-join: round;
    line-cap: round;
    polygon-fill: #97ADAD;
  }
  [zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: 1;
    text-fill: #222;
    text-size: 8;
    text-face-name: @book-fonts;
  }
}

#marinas-area {
  [zoom >= 14] {
    line-width: 1;
    line-color: blue;
    line-dasharray: 6,2;
    line-opacity: 0.5;
  }
  [zoom >= 16] {
    line-width: 2;
  }
}

#piers-area {
  [zoom >= 12] {
    polygon-fill: @land-color;
  }
}

#piers {
  [man_made = 'breakwater'],
  [man_made = 'groyne'] {
    [zoom >= 11] {
      line-width: 1;
      line-color: #aaa;
    }
    [zoom >= 13] {
      line-width: 2;
    }
    [zoom >= 16] {
      line-width: 4;
    }
  }
  [man_made = 'pier'][zoom >= 11] {
    line-width: 1.5;
    line-color: @land-color;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 16] { line-width: 7; }
  }
}

#locks {
  [waterway = 'lock_gate'][zoom >= 17] {
    point-file: url('symbols/lock_gate.png');
  }
}

#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.5;
    line-color: grey;
  }
}

#nepopulated {
  [zoom >= 3][zoom < 5] {
    [SCALERANK = 0],
    [SCALERANK = 1] {
      text-name: "[NAME]";
      text-size: 8;
      text-fill: grey;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }
}

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: @land-color;
  }
}

#world-south {
  [zoom = 0] {
    polygon-fill: @land-color;
  }
  [zoom >= 1][zoom < 10] {
    polygon-pattern-file: url('symbols/glacier.png');
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land-color;
  }
}

#coast-poly-south {
  [zoom >= 10] {
    polygon-pattern-file: url('symbols/glacier2.png');
  }
}

#builtup {
  [zoom >= 8][zoom < 10] {
    polygon-fill: #ddd;
  }
}

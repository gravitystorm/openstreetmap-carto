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
      text-halo-fill: rgba(255,255,255,0.6);
    }
  }
}

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: @land-color;
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land-color;
  }
}

#icesheet-poly {
  [zoom >= 6] {
    polygon-fill: @glacier;
    [zoom >= 8] {
      polygon-pattern-file: url('symbols/glacier.png');
    }
  }
}

#icesheet-outlines {
  [zoom >= 6] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-dasharray: 4,2;
      line-width: 0.75;
      line-color: @glacier-line;
    }
  }
}

#builtup {
  [zoom >= 8][zoom < 10] {
    polygon-fill: #ddd;
  }
}

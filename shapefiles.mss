#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.5;
    line-color: grey;
  }
}

#nepopulated {
  [SCALERANK = 1][zoom >= 3][zoom < 5] {
    text-name: "[NAME]";
    text-size: 8;
    text-fill: grey;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-dy: 2;
  }
}

#world {
  [zoom >= 0][zoom < 10] {
    polygon-fill: #f2efe9;
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: #f2efe9;
  }
}

#builtup {
  [zoom >= 8][zoom < 11] {
    polygon-fill: #ddd;
  }
}

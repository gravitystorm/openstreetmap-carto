#citywalls {
  [zoom >= 14] {
    line-color: grey;
    line-width: 4;
    line-opacity: 0.8;
    [zoom >= 15] {
      line-width: 6;
    }
    [zoom >= 16] {
      line-width: 9;
    }
  }
}

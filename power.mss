@power-line-color: #888;

#power-line {
  [zoom >= 14] {
    line-width: 0.8;
    line-color: @power-line-color;
    [zoom >= 15] {
      line-width: 0.9;
    }
    [zoom >= 16] {
      line-width: 1.3;
    }
    [zoom >= 18] {
      line-width: 1.5;
    }
  }
}

#power-minorline {
  [zoom >= 16] {
    line-width: 0.5;
    line-color: @power-line-color;
  }
}

#power-towers {
  [zoom >= 14] {
    marker-file: url('symbols/power_tower_small.svg');
    marker-width: 3;
  }
  [zoom >= 15] {
    marker-file: url('symbols/power_tower.svg');
    marker-width: 5;
  }
  [zoom >= 17] {
    marker-width: 7;
  }
}

#power-poles {
  [zoom >= 16] {
    marker-file: url('symbols/square.svg');
    marker-fill: #928f8f;
    marker-width: 3;
  }
}

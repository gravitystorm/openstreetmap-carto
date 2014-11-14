#power-line {
  [zoom >= 14] {
    line-width: 1;
    line-color: #777;
    [zoom >= 16] {
      line-width: 1.5;
    }
  }
}

#power-minorline {
  [zoom >= 16] {
    line-width: 0.5;
    line-color: #777;
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
    point-file: url('symbols/power_pole.png');
  }
}

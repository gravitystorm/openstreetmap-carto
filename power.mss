@power-line-color: #888;

#power-line {
  [zoom >= 14] {
    line-width: 0.5;
    line-color: @power-line-color;
    [zoom >= 15] {
      line-width: 0.6;
    }
    [zoom >= 16] {
      line-width: 0.7;
    }
    [zoom >= 18] {
      line-width: 1;
    }
    [zoom >= 19] {
      line-width: 1.2;
    }
  }
}

#power-minorline {
  [zoom >= 16] {
    line-width: 0.3;
    line-color: @power-line-color;
    [zoom >= 17] {
      line-width: 0.4;
    }
    [zoom >= 18] {
      line-width: 0.5;
    }
  }
}

#power-towers {
  [zoom >= 14] {
    marker-file: url('symbols/man_made/power_tower_small.svg');
    marker-width: 3;
  }
  [zoom >= 15] {
    marker-file: url('symbols/man_made/power_tower.svg');
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

#power-portals-way {
  [zoom >= 16] {
    line-line-width: 3;
    line-color:#212121;
  }
}
#power-portals-node {
  [zoom >= 16] {
    marker-file: url('symbols/square.svg');
    marker-fill: #212121;
    marker-width: 3;
  }
}
#power-insulators-node {
  [zoom >= 16] {
    marker-file: url('symbols/square.svg');
    marker-fill: #00960F;
    marker-width: 3;
  }
}
#power-insulators-way {
  [zoom >= 16] {
    line-width: 2;
    line-color:#00960F;
  }
}


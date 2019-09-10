@power-live-color: #888;
@power-support-color: darken(@power-live-color, 15%);

#power-line {
  [zoom >= 14] {
    line-width: 0.5;
    line-color: @power-live-color;
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
    line-color: @power-live-color;
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
    marker-fill: @power-support-color;
    marker-width: 3;
  }
  [zoom >= 15] {
    marker-file: url('symbols/man_made/power_tower.svg');
    marker-fill: @power-support-color;
    marker-width: 5;
    [zoom >= 17] {
      marker-width: 7;
    }
  }
  [power = 'pole'][zoom >= 16] {
    marker-file: url('symbols/square.svg');
    marker-fill: @power-support-color;
    marker-width: 3;
  }
}

#power-portals-way {
  [zoom >= 16] {
    line-width: 1.5;
    line-color:@power-support-color;
  }
}
#power-portals-node {
  [zoom >= 16] {
    marker-file: url('symbols/man_made/power_tower_small.svg');
    marker-fill: @power-support-color;
    marker-width: 5;
  }
}
#power-insulators-node {
  [zoom >= 16] {
    marker-file: url('symbols/square.svg');
    marker-fill: @power-support-color;
    marker-width: 5;
  }
}


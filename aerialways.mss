#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'] {
    [zoom >= 12] {
      line-pattern-file: url('symbols/aerialway_cable_car.png');
    }
  }

  [aerialway = 'goods'] {
    [zoom >= 12] {
      line-pattern-file: url('symbols/aerialway_goods.png');
    }
  }

  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'] {
    [zoom >= 12] {
      line-pattern-file: url('symbols/chair_lift.png');
    }
  }
}

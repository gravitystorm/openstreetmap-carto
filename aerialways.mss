#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'goods'] {
    [zoom >= 12] {
    	line-pattern-file: url('symbols/cable_car.png');
     	text-name: [name];
      	text-placement: line;
      	text-face-name: @book-fonts;
		text-halo-fill: fadeout(white, 50%);
    	text-halo-radius: 2;
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
      [zoom >= 16]
      {
      	text-name: [name];
      	text-placement: line;
      	text-face-name: @book-fonts;
		text-halo-fill: fadeout(white, 50%);
    	text-halo-radius: 2;
      }
    }
  }
}

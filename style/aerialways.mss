#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'mixed_lift'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 3;
      dash/line-join: round;
      dash/line-cap: round;
      dash/line-color: black;
      dash/line-dasharray: 0.4,13;
      dash/line-clip: false;
      [zoom >= 17] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 4;
        text-spacing: 900;
        text-clip: false;
        text-placement: line;
        text-repeat-distance: 200;
        text-margin: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 19] {
        text-size: 11;
        text-dy: 5;
      }
    }
  }

  [aerialway = 'goods'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 3.5;
      dash/line-join: round;
      dash/line-color: #707070;
      dash/line-dasharray: 6,25;
      dash/line-clip: false;
      [zoom >= 17] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 4;
        text-spacing: 900;
        text-clip: false;
        text-placement: line;
        text-repeat-distance: 200;
        text-margin: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 19] {
        text-size: 11;
        text-dy: 5;
      }
    }
  }

  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'],
  [aerialway = 'zip_line'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 4;
      dash/line-join: round;
      dash/line-color: black;
      dash/line-dasharray: 1,30;
      dash/line-clip: false;
      [zoom >= 17] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 4;
        text-spacing: 900;
        text-clip: false;
        text-placement: line;
        text-repeat-distance: 200;
        text-margin: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 19] {
        text-size: 11;
        text-dy: 5;
      }
    }
  }

  [man_made = 'pipeline'] {
    [zoom >= 14] {
      line/line-width: .67;
      line/line-join: round;
      line/line-color: #707070;
      line/line-dasharray: 0,0.5,14,0.5;
      dash/line-width: 1.5;
      dash/line-join: round;
      dash/line-color: #707070;
      dash/line-dasharray: 0,0.5,0.5,12,0.5,0.5;
      [zoom >= 15] {
        line/line-width: 1;
        line/line-join: round;
        line/line-color: #707070;
        line/line-dasharray: 0,0.5,16,0.5;
        dash/line-width: 2.5;
        dash/line-join: round;
        dash/line-color: #707070;
        dash/line-dasharray: 0,0.5,0.5,14,0.5,0.5;
      }
      [zoom >= 16] {
        line/line-width: 1.5;
        line/line-dasharray: 0,0.5,20,0.5;
        dash/line-width: 3.5;
        dash/line-dasharray: 0,0.5,0.5,18,0.5,0.5;
        center/line-color: @land-color;
        center/line-width: 1;
        center/line-dasharray: 0,1,18,1;
        center/line-join: round;
        [substance = 'water'] { center/line-color: @water-color; }
        [substance = 'gas'] { center/line-color: #c1c1c1; } // Lch(78,0,0)
        [substance = 'oil'] { center/line-color: #cfbfa5; } // Lch(78,15,83)
      }
      [zoom >= 17] {
        line/line-width: 2;
        line/line-dasharray: 0,0.5,24,0.5;
        dash/line-width: 4;
        dash/line-dasharray: 0,0.5,0.5,22,0.5,0.5;
        center/line-width: 1;
        center/line-dasharray: 0,1,22,1;
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 6;
        text-spacing: 900;
        text-clip: false;
        text-placement: line;
        text-repeat-distance: 200;
        text-margin: 18;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
      }
      [zoom >= 18] {
        text-dy: 7;
        line/line-width: 3;
        line/line-dasharray: 0,0.5,30,0.5;
        dash/line-width: 5;
        dash/line-dasharray: 0,0.5,0.5,28,0.5,0.5;
        center/line-width: 2;
        center/line-dasharray: 0,1,28,1;
      }
      [zoom >= 19] {
        text-size: 11;
        text-dy: 8;
        line/line-width: 4;
        dash/line-width: 6;
        center/line-width: 3;
      }
    }
  }
}

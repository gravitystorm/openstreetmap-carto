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
        text-repeat-distance: 100;
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
        text-repeat-distance: 100;
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
        text-repeat-distance: 100;
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
    [zoom >= 12] {
      line/line-width: 0.5;
      line/line-join: round;
      line/line-color: #707070;
      line/line-dasharray: 0,1,16,1;
      line/line-clip: false;
      dash/line-width: 1.5;
      dash/line-join: round;
      dash/line-color: #707070;
      dash/line-dasharray: 0,1,0.5,15,0.5,1;
      [zoom >= 14] {
        line/line-width: 0.7;
        line/line-dasharray: 0,1,20,1;
        dash/line-width: 2;
        dash/line-dasharray: 0,1,0.7,18.6,0.7,1;
      }
      [zoom >= 15] {
        line/line-width: 1;
        line/line-dasharray: 0,1,20,1;
        dash/line-width: 3;
        dash/line-dasharray: 0,1,1,18,1,1;
      }
      [zoom >= 17] {
        line/line-width: 1.5;
        line/line-dasharray: 0,1,24,1;
        dash/line-width: 4;
        dash/line-dasharray: 0,1,1,22,1,1;
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
      [zoom >= 18] {
        line/line-width: 3;
        line/line-dasharray: 0,1,30,1;
        line/line-join: round;
        line/line-color: #707070;
        dash/line-join: round;
        dash/line-color: #707070;
        dash/line-width: 6;
        dash/line-dasharray: 0,1,1,28,1,1;
        center/line-color: @land-color;
        center/line-width: 1;
        center/line-dasharray: 0,2,28,2;
        center/line-join: round;
      }
      [zoom >= 19] {
        text-size: 11;
        text-dy: 5;
        line/line-width: 4;
        dash/line-width: 8;
        center/line-width: 2;
      }
    }
  }
}

/* For tourism features like roller coasters */

@track-casing: #707070;
@track-fill: #ddd;

#roller-coaster[roller_coaster = 'track'][zoom >= 14] {
  ::bridges[bridge = 'yes'] {
    line-width: 0.5 + 2*@casing-width-z14;
    line-color: darken(@track-casing, 20%);
    line-join: round;
    line-cap: round;
    [zoom >= 15] { line-width: 1 + 2*@casing-width-z15; }
    [zoom >= 16] { line-width: 2.5 + 2*@casing-width-z16; }
    [zoom >= 17] { line-width: 4 + 2*@casing-width-z17; }
    [zoom >= 18] { line-width: 6 + 2*@casing-width-z18; }
    [zoom >= 19] { line-width: 8 + 2*@casing-width-z19; }
    [zoom >= 20] { line-width: 12 + 2*@casing-width-z20; }
  }

  ::casing {
    line-width: 0.5;
    line-color: @track-casing;
    line-join: round;
    line-cap: round;
    [zoom >= 15] { line-width: 1; }
    [zoom >= 16] { line-width: 2.5; }
    [zoom >= 17] { line-width: 4; }
    [zoom >= 18] { line-width: 6; }
    [zoom >= 19] { line-width: 8; }
    [zoom >= 20] { line-width: 12; }
  }

  line-width: 0.5;
  line-color: mix(@track-casing, @track-fill, 50%);
  line-join: round;
  [tunnel = 'yes'][zoom >= 16] {
    line-color: lighten(#707070, 20%);
    b/line-color: lighten(@track-fill, 5%);
  }
  [zoom >= 15] { line-width: 1; }
  [zoom >= 16] {
    line-color: @track-casing;
    line-width: 2.5;
    b/line-color: @track-fill;
    b/line-join: round;
    b/line-width: 1.25;
    b/line-dasharray: 2.5,0.5;
  }
  [zoom >= 17] {
    line-width: 4;
    b/line-width: 2;
    b/line-dasharray: 4,0.8;
  }
  [zoom >= 18] {
    line-width: 6;
    b/line-width: 3;
    b/line-dasharray: 6,1.2;
  }
  [zoom >= 19] {
    line-width: 8;
    b/line-width: 4;
    b/line-dasharray: 8,1.6;
  }
  [zoom >= 20] {
    line-width: 12;
    b/line-width: 6;
    b/line-dasharray: 12,2.4;
  }
}
/* For tourism features like roller coasters */

@track-casing: #707070;
@track-fill: #ddd;

/* The purpose of “roller-coaster-gap-fill” layer is to fill in the gaps between sections of roller coaster track. */
#roller-coaster-gap-fill[zoom >= 15] {
  ::bridges { line-cap: round; }
  ::casing { line-cap: round; }
  ::fill { line-cap: round; }
}

#roller-coaster, #roller-coaster-gap-fill {
  [zoom >= 15] {
    ::bridges[bridge = 'yes'] {
      line-width: 1 + 2*@casing-width-z15;
      line-color: #000;
      line-join: round;
      
      [tunnel = 'yes'][zoom >= 16] {
        line-color: lighten(#000, 20%);
      }

      [zoom >= 16] { line-width: 2.5 + 2*@casing-width-z16; }
      [zoom >= 17] { line-width: 4 + 2*@casing-width-z17; }
      [zoom >= 18] { line-width: 6 + 2*@casing-width-z18; }
      [zoom >= 19] { line-width: 8 + 2*@casing-width-z19; }
      [zoom >= 20] { line-width: 12 + 2*@casing-width-z20; }
    }

    ::casing {
      line-width: 1;
      line-color: mix(@track-casing, @track-fill, 50%);
      line-join: round;

      [tunnel = 'yes'][zoom >= 16] {
        line-color: lighten(#707070, 20%);
      }
      [zoom >= 16] { 
        line-color: @track-casing;
        line-width: 2.5;
      }
      [zoom >= 17] { line-width: 4; }
      [zoom >= 18] { line-width: 6; }
      [zoom >= 19] { line-width: 8; }
      [zoom >= 20] { line-width: 12; }
    }

    ::fill[zoom >= 16] {
      line-width: 1.25;
      line-color: @track-fill;
      line-join: round;
      line-dasharray: 2.5,0.5;

      [tunnel = 'yes'] {
        line-color: lighten(@track-fill, 5%);
      }
      [zoom >= 17] {
        line-width: 2;
        line-dasharray: 4,0.8;
      }
      [zoom >= 18] {
        line-width: 3;
        line-dasharray: 6,1.2;
      }
      [zoom >= 19] {
        line-width: 4;
        line-dasharray: 8,1.6;
      }
      [zoom >= 20] {
        line-width: 6;
        line-dasharray: 12,2.4;
      }
    }
  }
}

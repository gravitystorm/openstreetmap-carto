@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;


#aeroway-ref {
  [aeroway = 'runway'],
  [aeroway = 'taxiway'] {
    [zoom >= 15] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @minor-highway-text-repeat-distance;
    }
  }
}

#aeroway-area-fill {
  [aeroway = 'runway'][zoom >= 11] {
    polygon-fill: @runway-fill;
  }

  [aeroway = 'taxiway'][zoom >= 13] {
    polygon-fill: @taxiway-fill;
  }

  [aeroway = 'helipad'][zoom >= 16] {
    polygon-fill: @helipad-fill;
  }
}

#aeroways {
  [aeroway = 'runway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@major-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 18 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 24 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 24 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 24 + 2*@major-casing-width-z18; }
      }
      ::fill {
        line-color: @runway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
      }
    }
  }
  [aeroway = 'taxiway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 4 + 2*@secondary-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 6 + 2*@secondary-casing-width-z15; }
        [zoom >= 16] { line-width: 8 + 2*@secondary-casing-width-z16; }
        [zoom >= 17] { line-width: 8 + 2*@secondary-casing-width-z17; }
        [zoom >= 18] { line-width: 8 + 2*@secondary-casing-width-z18; }
      }
      ::fill {
        line-color: @taxiway-fill ;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
      }
    }
  }
}

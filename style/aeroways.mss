@aeroway-fill: #bbc;


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
  [aeroway = 'runway'][zoom >= 11],
  [aeroway = 'taxiway'][zoom >= 13],
  [aeroway = 'helipad'][zoom >= 16] {
    polygon-fill: @aeroway-fill;
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
        [zoom >= 17] { line-width: 40 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 56 + 2*@major-casing-width-z18; }
        [zoom >= 19] { line-width: 72 + 2*@major-casing-width-z19; }
      }
      ::fill {
        line-color: @aeroway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 12; }
        [zoom >= 15] { line-width: 18; }
        [zoom >= 16] { line-width: 24; }
        [zoom >= 17] { line-width: 40; }
        [zoom >= 18] { line-width: 56; }
        [zoom >= 19] { line-width: 72; }
      }
      ::center[runway != 'displaced_threshold'][runway != 'blast_pad'][zoom >= 15] {
        line-color: #ddd;
        line-width: 1.5;
        line-dasharray: 18,12;
        [zoom >= 16] {
          line-width: 2;
          line-dasharray: 24,16;
        }
        [zoom >= 17] {
          line-width: 3.3;
          line-dasharray: 40,27;
        }
        [zoom >= 18] {
          line-width: 4.5;
          line-dasharray: 56,37;
        }
        [zoom >= 19] {
          line-width: 6;
          line-dasharray: 72,48;
        }
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
        [zoom >= 17] { line-width: 11 + 2*@secondary-casing-width-z17; }
        [zoom >= 18] { line-width: 16 + 2*@secondary-casing-width-z18; }
        [zoom >= 19] { line-width: 22 + 2*@secondary-casing-width-z19; }
      }
      ::fill {
        line-color: @aeroway-fill ;
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 4; }
        [zoom >= 15] { line-width: 6; }
        [zoom >= 16] { line-width: 8; }
        [zoom >= 17] { line-width: 11; }
        [zoom >= 18] { line-width: 16; }
        [zoom >= 19] { line-width: 22; }
      }
    }
  }
}

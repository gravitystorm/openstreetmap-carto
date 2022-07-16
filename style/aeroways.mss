@aeroway-fill: #bbc;


#aeroway-ref {
  [aeroway = 'runway'] {
    [zoom >= 15] {
      text-name: "[ref]";
      text-size: 12;
      text-fill: #333;
      text-spacing: 750;
      text-clip: false;
      text-placement: line;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @minor-highway-text-repeat-distance;
      [zoom >= 16] { text-size: 18; }
      [zoom >= 17] { text-size: 24; }
      [zoom >= 18] { text-size: 32; }
      [zoom >= 19] { text-size: 40; }
    }
  }
  [aeroway = 'taxiway'] {
    [zoom >= 16] {
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
  [aeroway = 'helipad'][zoom >= 16] {
    polygon-fill: @aeroway-fill;
  }
}

#aeroways {
  [aeroway = 'runway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 9 + 2*@major-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 13.5 + 2*@major-casing-width-z15; }
        [zoom >= 16] { line-width: 20 + 2*@major-casing-width-z16; }
        [zoom >= 17] { line-width: 30 + 2*@major-casing-width-z17; }
        [zoom >= 18] { line-width: 46 + 2*@major-casing-width-z18; }
        [zoom >= 19] { line-width: 68 + 2*@major-casing-width-z19; }
      }
      ::fill {
        line-color: @aeroway-fill;
        line-width: 2;
        [zoom >= 12] { line-width: 4; }
        [zoom >= 13] { line-width: 6; }
        [zoom >= 14] { line-width: 9; }
        [zoom >= 15] { line-width: 13.5; }
        [zoom >= 16] { line-width: 20; }
        [zoom >= 17] { line-width: 30; }
        [zoom >= 18] { line-width: 46; }
        [zoom >= 19] { line-width: 68; }
      }
      ::center[runway != 'displaced_threshold'][runway != 'blast_pad'][zoom >= 15] {
        line-color: #ddd;
        line-width: 1.5;
        line-dasharray: 12,8;
        [zoom >= 16] {
          line-width: 2;
          line-dasharray: 21,14;
        }
        [zoom >= 17] {
          line-width: 3.3;
          line-dasharray: 42,28;
        }
        [zoom >= 18] {
          line-width: 4.5;
          line-dasharray: 84,56;
        }
        [zoom >= 19] {
          line-width: 6;
          line-dasharray: 168,112;
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

@aeroway-fill: #babacb; // lch(76,9,290)
@aeroway-center: #e2e2e9; // lch(90,4,270)
@aeroway-text: #f3f3f7; // lch(96,2,270)
@aeroway-text-halo: #75758a; // lch(50,12,270)

#aeroway-ref {
  [aeroway = 'runway'] {
    [zoom >= 15] {
      text-name: "[ref]";
      text-size: 12;
      text-fill: @aeroway-text;
      text-halo-fill: @aeroway-text-halo;
      text-spacing: 0;
      text-clip: false;
      text-placement: line;
      text-face-name: @bold-fonts;
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
      text-fill: @aeroway-text;
      text-spacing: 0;
      text-clip: false;
      text-placement: line;
      text-face-name: @bold-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @aeroway-text-halo;
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
        line-color: @aeroway-center;
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
        line-width: 3 + 2*@secondary-casing-width-z14;
        line-color: @bridge-casing;
        line-join: round;
        [zoom >= 15] { line-width: 4.5 + 2*@secondary-casing-width-z15; }
        [zoom >= 16] { line-width: 6.8 + 2*@secondary-casing-width-z16; }
        [zoom >= 17] { line-width: 10.1 + 2*@secondary-casing-width-z17; }
        [zoom >= 18] { line-width: 15.2 + 2*@secondary-casing-width-z18; }
        [zoom >= 19] { line-width: 23.8 + 2*@secondary-casing-width-z19; }
      }
      ::fill {
        line-color: @aeroway-fill ;
        line-width: 1.3;
        [zoom >= 13] { line-width: 2; }
        [zoom >= 14] { line-width: 3; }
        [zoom >= 15] { line-width: 4.5; }
        [zoom >= 16] { line-width: 6.8; }
        [zoom >= 17] { line-width: 10.1; }
        [zoom >= 18] { line-width: 15.2; }
        [zoom >= 19] { line-width: 23.8; }
      }
    }
  }
}

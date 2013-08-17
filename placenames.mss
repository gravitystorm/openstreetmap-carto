#continent {
  [place = 'continent'][zoom >= 1][zoom < 3] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}


.country {
  [place = 'continent'][zoom >= 2][zoom < 4] {
    text-name: "[name]";
    text-size: 12;
    text-fill: grey;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-label-position-tolerance: 20;
  }
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-label-position-tolerance: 10;
    [zoom=5] {
      text-size: 11;
    }
  }
}

.state {
  [place = 'state'][zoom >= 5][zoom < 9] {
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 0;
	text-name: "[name]";
    text-label-position-tolerance: 10;
    [zoom >= 7] {
      text-size: 12;
      text-min-distance: 10;
      text-label-position-tolerance: 15;
      text-face-name: @oblique-fonts;
    }
  }
}

#placenames-islands {
  [zoom >= 4][zoom < 9][way_area>1000000000],
  [zoom >= 5][zoom < 9][way_area>500000000],
  [zoom >= 6][zoom < 9][way_area>100000000],
  [zoom >= 7][zoom < 9][way_area>30000000] {
    text-name: "[name]";
    text-size: 8;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 0;
    text-min-distance: 10;
  }
}

.placenames {
  [place = 'city'] {
    [zoom=4][is_capital='country'],
    [zoom=4][is_capital='2'] {
        marker-height: 2;
        marker-width: 2;
        marker-fill: #6c216c;
        marker-ignore-placement: true;
    }
    [zoom >= 5][zoom < 15][is_capital='country'],
    [zoom >= 5][zoom < 15][is_capital='2'],
    [zoom >= 6][zoom < 15] {
	  [is_capital='country'],[is_capital='2'] { text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[name]";
      text-size: 10;
      text-fill: #000;
	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
	  [zoom >= 6][zoom <= 7] {
        text-dy: -3;
        marker-height: 3;
        marker-width: 3;
        marker-fill: black;
        marker-ignore-placement: true;
	  }
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-size: 14;
        text-face-name: @oblique-fonts;
      }
    }
  }
  [place = 'town'] {
    [zoom >= 5][is_capital='country'],
    [zoom >= 5][is_capital='2'],
    [zoom >= 6] {
	  [is_capital='country'],[is_capital='2'] { text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 8;
      text-fill: #000;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-min-distance: 20;
      text-label-position-tolerance: 5;
      [zoom>=7] {
      	text-min-distance: 10;
      }
    }
    [zoom >= 11] {
      text-name: "[nom]";
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
      text-placement-type: simple;
      text-placements: "N,S,NE,SE,NW,SW,11,10,9";
      text-horizontal-alignment: auto;
      text-vertical-alignment: auto;
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-size: 14;
      text-fill: #777777;
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #666;
    text-face-name: @oblique-fonts;
	text-halo-radius: 2;
  	text-halo-fill: fadeout(white, 30%);
    text-label-position-tolerance: 5;
    [zoom >= 14] {
      text-size: 12;
    }
  }
}

#placenames-small::village {
  [place = 'village'][zoom>=6] {
	text-name: "[nom]";
    text-size: 8;
    text-fill: #333;
    text-face-name: @book-fonts;
	text-halo-radius: 1;
  	text-halo-fill: fadeout(white, 30%);
    [zoom<12] { text-min-distance: 25; }
    text-label-position-tolerance: 5;
    
    [zoom>=11][pop>1000],
    [zoom>=12] {
      text-size: 9;
	  text-halo-radius: 2;
      [zoom<15] { text-min-distance: 15; }
      text-placement-type: simple;
      text-placements: "N,S";
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #777;
    }
  }
}

#placenames-small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[nom]";
      text-size: 8;
      text-fill: #444;
      text-face-name: @oblique-fonts;
	    text-halo-radius: 2;
  		text-halo-fill: fadeout(white, 30%);
    }
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 11;
      text-fill: #777;
    }
  }
}
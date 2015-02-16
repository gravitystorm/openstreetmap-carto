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
    [zoom=4][is_capital='country'] {
        marker-height: 2;
        marker-width: 2;
        marker-fill: #6c216c;
        marker-ignore-placement: true;
    }
    [zoom >= 5][zoom < 15][is_capital='country'],
    [zoom >= 5][zoom < 15][pop>500000],
    [zoom >= 6][zoom < 15] {
	  [is_capital='country'] { text-size: 11; text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 10;
      text-fill: #000;
	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
	  [zoom >= 6][zoom <= 7] {
        text-dy: -4;
        marker-height: 3;
        marker-width: 3;
        marker-fill: black;
        marker-ignore-placement: true;
	  }
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-name: "[name]";
        text-size: 14;
        text-face-name: @oblique-fonts;
      }
    }
  }
  [place = 'town'] {
    [zoom >= 5][is_capital='country'],
    [zoom >= 6] {
	  [is_capital!=''] {
	    [is_capital='country'] { text-face-name: @bold-fonts; }
	  }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 9;
      text-fill: black;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
    }
    [zoom>=6] {
      text-min-distance: 15;
	}
    [zoom >= 9] {
      text-size: 9.5;
      b/text-min-distance: 10;
      b/text-face-name: @book-fonts;
      b/text-name: "[nom]";
      b/text-size: 9.5;
      b/text-fill: black;
      b/text-halo-radius: 2;
      b/text-halo-fill: fadeout(white, 30%);
      b/text-wrap-width: 20;
      b/text-placement-type: simple;
      b/text-placements: "N,S,NE,SE,NW,SW";
      b/text-dx: 4;
      b/text-dy: 4;
    }
    [zoom >= 11] {
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
      b/text-size: 11;
      b/text-placements: "N,S,NE,SE,NW,SW,11,10,9";
	  b/text-dx: 6;
      b/text-dy: 6;
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-size: 14;
      text-fill: #777777;
      b/text-face-name: @oblique-fonts;
      b/text-name: "[name]";
      b/text-size: 14;
      b/text-placements: "N,S,NE,SE,NW,SW,14,12,10";
      b/text-fill: #777777;
      b/text-dx: 8;
      b/text-dy: 8;
    }
  }
}

#placenames-lz [zoom >= 5] {
  [place = 'city'] {
    [zoom < 15] {
	  [is_capital='country'] { text-size: 11; text-face-name: @bold-fonts; }
      text-min-distance: 25;
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 10;
      text-fill: #000;
	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
	  [zoom >= 6][zoom <= 7] {
        text-dy: -4;
        marker-height: 3;
        marker-width: 3;
        marker-fill: black;
        marker-ignore-placement: true;
	  }
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-name: "[name]";
        text-size: 14;
        text-face-name: @oblique-fonts;
      }
    }
  }
  [place = 'town'] {
    [zoom >= 5][is_capital='country'],
    [zoom >= 6] {
	  [is_capital!=''] {
	    [is_capital='country'] { text-face-name: @bold-fonts; }
	  }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 9;
      text-fill: #000;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-min-distance: 20;
      [zoom>=7] {
      	text-min-distance: 10;
      }
    }
    [zoom >= 11] {
      text-name: "[nom]";
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-fill: #777777;
      text-size: 14;
      text-label-position-tolerance: 12;
    }
  }
}


#placenames-small-lz::village [zoom >= 6][zoom <= 11][place = 'village'] { // remplissage dans les faibles zooms (6-11)
	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #333;
    text-face-name: @book-fonts;
	text-halo-radius: 1.5;
  	text-halo-fill: fadeout(white, 30%);
    text-min-distance: 25;
    text-label-position-tolerance: 5;
}

#placenames-small::village [zoom >= 11] {
  [place = 'village'] {
	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #333;
    text-face-name: @book-fonts;
	text-halo-radius: 1.5;
  	text-halo-fill: fadeout(white, 30%);
    text-label-position-tolerance: 5;
    
    [pop>1000],
    [zoom>=12] {
      text-size: 9;
	  text-halo-radius: 2;
	  text-label-position-tolerance: 10;
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #777;
    }
  }
}

#placenames-small::suburb [zoom >= 12] {
	[place = 'neighbourhood'][zoom>=14],
	[place = 'quarter'][zoom>=14],
	[place = 'suburb'] {
    text-name: "[nom]";
    text-size: 8.5;
    text-fill: #666;
    text-face-name: @oblique-fonts;
	text-halo-radius: 1.25;
  	text-halo-fill: fadeout(white, 30%);
    text-label-position-tolerance: 5;
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
    }
  }
}


#placenames-small-lz::smaller [place = 'hamlet'][zoom >= 12] { // remplissage dans les faibles zooms (12 et +)
	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #666;
    text-face-name: @book-fonts;
	text-halo-radius: 1;
  	text-halo-fill: fadeout(white, 30%);
    text-min-distance: 25;
    text-label-position-tolerance: 5;
}

#placenames-small::hamlet [zoom >= 14] {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
	text-name: "[nom]";
    text-fill: #666;
    text-face-name: @oblique-fonts;
	text-halo-radius: 1;
  	text-halo-fill: fadeout(white, 30%);
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 11;
    }
  }
}
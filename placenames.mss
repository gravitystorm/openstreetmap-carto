#continent {
  [place = 'continent'][zoom >= 1][zoom <= 2] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  }
}

.country {
  [place = 'continent'][zoom >= 2][zoom < 4] {
    text-name: "[name]";
    text-size: 12;
    text-fill: grey;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
  }
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    [zoom=5] {
      text-size: 11;
    }
  }
}

.state {
  [place = 'state'][zoom >= 5][zoom <= 8] {
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  	text-name: "[name]";
    text-wrap-width: 30;
    [zoom >= 7] {
      text-size: 12;
      text-min-distance: 10;
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
    [zoom >= 5][zoom <= 14][is_capital='country'],
    [zoom >= 5][zoom <= 14][pop>500000],
    [zoom >= 6][zoom <= 14] {
  	  [is_capital='country'] {
        text-size: 11;
        text-face-name: @bold-fonts;
      }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 10;
      text-fill: #000;
  	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
      text-min-distance: 10;
      text-clip: false;
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
	    [is_capital='country'] { text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 9;
      text-fill: black;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-min-distance: 10;
      text-clip: false;
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
    }
    [zoom >= 11] {
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
      b/text-size: 11;
      b/text-placements: "N,11,10,9";
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-size: 14;
      text-fill: #777777;
      b/text-face-name: @oblique-fonts;
      b/text-name: "[nom]";
      b/text-size: 14;
      b/text-placements: "N,14,12,10";
      b/text-fill: #777777;
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
  text-placement-type: simple;
  text-placements: "E,NE,SE,W,NW,SW";
  text-dx: 5;
  text-dy: 5;
  text-min-padding: 10;
}

#placenames-small::village [zoom >= 11] {
  [place = 'village'] {
  	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #333;
    text-face-name: @book-fonts;
  	text-halo-radius: 1.5;
  	text-halo-fill: fadeout(white, 30%);
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-dy: 5;
    text-min-padding: 10;

    [pop>1000],
    [zoom>=12] {
      text-size: 9;
  	  text-halo-radius: 1.75;
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #777;
    }
  }
}

#placenames-small::suburb [zoom >= 12] {
	[place =~ '(neighbourhood|quarter)'][zoom>=14],
	[place = 'suburb'] {
    text-name: "[nom]";
    text-size: 8.5;
    text-fill: #666;
    text-face-name: @oblique-fonts;
	  text-halo-radius: 1.25;
  	text-halo-fill: fadeout(white, 30%);
    text-placement-type: simple;
    text-placements: "E,NE,SE,W,NW,SW";
    text-dx: 5;
    text-dy: 5;
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
  text-placement-type: simple;
  text-placements: "E,NE,SE,W,NW,SW";
  text-dx: 5;
  text-dy: 5;
}

#placenames-small::hamlet [zoom >= 14] {
  [place =~ '(hamlet|locality|isolated_dwelling|farm)'] {
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

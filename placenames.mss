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
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9d6c9d;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    [zoom >= 4] {
      text-size: 10;
    }
  }
}

.state {
  [place = 'state'][zoom >= 4][zoom < 9] {
    text-name: "[ref]";
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 0;
    [zoom >= 5] {
      text-name: "[name]";
    }
    [zoom >= 7] {
      text-size: 12;
      text-min-distance: 10;
      text-label-position-tolerance: 10;
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

#placenames-capital {
  [zoom >= 5][zoom < 15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    [zoom >= 6] {
      text-size: 11;
    }
    [zoom >= 6][zoom <= 7][place='city'] {
      text-size: 11;
      text-dy: -4;
      marker-height: 4;
      marker-width: 4;
      marker-fill: black;
      marker-ignore-placement: true;
    }
    [zoom >= 11] {
      text-size: 15;
      text-face-name: @oblique-fonts;
    }
  }
}

#placenames-medium::city {
  [place = 'city'],
  [place = 'metropolis'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @book-fonts;
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
}

#placenames-medium::town {
  [place = 'town'] {
    [zoom >= 7] {
      text-name: "[nom]";
      text-size: 8;
      text-fill: #000;
      text-face-name: @book-fonts;
	    text-halo-radius: 2;
  		text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-min-distance: 10;
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
    [zoom >= 14] {
      text-size: 12;
    }
  }
}

#placenames-small::village {
  [place = 'village'],
  [place = 'large_village'] {
    [zoom>=11][pop>1000],
    [zoom>=12] {
      text-name: "[nom]";
      text-size: 9;
      text-fill: #222;
      text-face-name: @oblique-fonts;
	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
      text-placement-type: simple;
      text-placements: "N,S";
      [zoom >= 15] {
        text-name: "[name]";
        text-size: 12;
        text-fill: #777;
      }
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
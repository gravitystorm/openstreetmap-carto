@placenames: #222;
@placenames-light: #777777;
@country-labels: darken(@admin-boundaries, 15%);
@state-labels: desaturate(darken(@admin-boundaries, 5%), 20%);

.country {
  [zoom >= 3][way_pixels > 1000][way_pixels < 360000] {
    text-name: "[name]";
    text-size: 10;
    [zoom >= 4] {
      text-size: 11;
    }
    [zoom >= 5] {
      text-size: 12;
    }
    [zoom >= 7] {
      text-size: 13;
    }
    [zoom >= 10] {
      text-size: 14;
    }
    text-fill: @country-labels;
    text-face-name: @book-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 35;
    text-placement: interior;
    text-character-spacing: 0.5;
    text-line-spacing: 1;
  }
}

.state {
  [zoom >= 4][zoom < 5][way_pixels > 750],
  [zoom >= 5][way_pixels > 3000][way_pixels < 196000] {
    text-name: "[ref]";
    text-size: 9;
    text-fill: @state-labels;
    text-face-name: @oblique-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 0;
    text-placement: interior;
    [zoom >= 5] {
      text-name: "[name]";
      text-wrap-width: 30;
    }
    [zoom >= 7] {
      text-size: 11;
      text-wrap-width: 50;
    }
  }
}

#capital-names {
  [zoom >= 4][zoom < 8][population > 600000],
  [zoom >= 5][zoom < 8] {
    shield-file: url('symbols/place/place-capital-6.svg');
    shield-text-dx: 6;
    shield-text-dy: 6;
    shield-name: '[name]';
    shield-face-name: @book-fonts;
    shield-fill: @placenames;
    shield-size: 11;
    shield-wrap-width: 30;
    shield-halo-fill: @standard-halo-fill;
    shield-halo-radius: @standard-halo-radius * 1.5;
    shield-placement-type: simple;
    shield-placements: 'S,N,E,W';
    [dir = 1] {
      shield-placements: 'N,S,E,W';
    }
    shield-unlock-image: true;

    [zoom >= 5] {
      shield-wrap-width: 45;
    }
    [zoom >= 6] {
      shield-size: 12;
      shield-wrap-width: 60;
    }
    [zoom >= 7] {
      shield-file: url('symbols/place/place-capital-8.svg');
      shield-text-dx: 7;
      shield-text-dy: 7;
    }
  }
  [zoom >= 8] {
    text-name: '[name]';
    text-face-name: @book-fonts;
    text-fill: @placenames;
    text-size: 13;
    text-wrap-width: 60;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;

    [zoom >= 11] {
      text-size: 15;
      text-wrap-width: 75;
    }
  }
}

#placenames-medium::high-importance {
  [category = 1][zoom < 14] {
    [zoom >= 4][zoom < 5][score >= 3000000],
    [zoom >= 5][zoom < 8][score >= 400000] {
      shield-file: url('symbols/place/place-4.svg');
      shield-text-dx: 4;
      shield-text-dy: 4;
      shield-name: '[name]';
      shield-face-name: @book-fonts;
      shield-fill: @placenames;
      shield-size: 11;
      shield-wrap-width: 30;
      shield-halo-fill: @standard-halo-fill;
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-placement-type: simple;
      shield-placements: 'S,N,E,W';
      [dir = 1] {
        shield-placements: 'N,S,E,W';
      }
      shield-unlock-image: true;

      [zoom >= 5] {
        shield-wrap-width: 45;
      }
      [zoom >= 6] {
        shield-size: 12;
        shield-wrap-width: 60;

        shield-file: url('symbols/place/place-6.svg');
        shield-text-dx: 5;
        shield-text-dy: 5;
      }
      [zoom >= 7] {
        shield-file: url('symbols/place/place-6-z7.svg');
      }
    }
    [zoom >= 8][score >= 400000] {
      text-name: '[name]';
      text-face-name: @book-fonts;
      text-fill: @placenames;
      text-size: 13;
      text-wrap-width: 60;
      text-halo-fill: @standard-halo-fill;
      text-halo-radius: @standard-halo-radius * 1.5;

      [zoom >= 11] {
        text-size: 15;
        text-wrap-width: 75;
      }
    }
  }
}

#placenames-medium::medium-importance {
  [category = 1][score < 400000][zoom < 15] {
    [zoom >= 6][zoom < 8][score >= 70000],
    [zoom >= 7][zoom < 8] {
      shield-file: url('symbols/place/place-4.svg');
      shield-text-dx: 4;
      shield-text-dy: 4;
      shield-name: "[name]";
      shield-size: 10;
      shield-fill: @placenames;
      shield-face-name: @book-fonts;
      shield-halo-fill: @standard-halo-fill;
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-wrap-width: 30;
      shield-placement-type: simple;
      shield-placements: 'S,N,E,W';
      [dir = 1] {
        shield-placements: 'N,S,E,W';
      }
      shield-unlock-image: true;
      [zoom >= 7] {
        shield-file: url('symbols/place/place-4-z7.svg');
      }
    }
    [zoom >= 8] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-fill: @standard-halo-fill;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 60;
      [zoom >= 9] {
        text-size: 12;
        text-wrap-width: 60;
      }
      [zoom >= 11] {
        text-size: 14;
        text-wrap-width: 70;
      }
      [zoom >= 14] {
        text-size: 15;
        text-wrap-width: 75;
      }
    }
  }
}

#placenames-medium::low-importance {
  [category = 2] {
    [zoom >= 9][zoom < 16] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-fill: @standard-halo-fill;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 45;
      [zoom >= 11] {
        text-size: 11;
        text-wrap-width: 55;
      }
      [zoom >= 12] {
        text-size: 13;
        text-wrap-width: 65;
      }
      [zoom >= 14] {
        text-size: 15;
        text-wrap-width: 70;
      }
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12][zoom < 17] {
    text-name: "[name]";
    text-size: 11;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-fill: @standard-halo-fill;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-wrap-width: 55;
    [zoom >= 14] {
      text-size: 14;
      text-wrap-width: 70;
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
    [zoom >= 16] {
      text-size: 15;
      text-wrap-width: 75;
    }
  }
}

#placenames-small::village {
  [place = 'village'] {
    [zoom >= 12][zoom < 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-fill: @standard-halo-fill;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 50;
      [zoom >= 14] {
        text-fill: @placenames-light;
        text-halo-fill: white;
        text-size: 13;
        text-wrap-width: 65;
      }
      [zoom >= 16] {
        text-size: 15;
        text-wrap-width: 75;
      }
    }
  }
}

#placenames-small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'neighbourhood'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-fill: @standard-halo-fill;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 45;
    }
    [zoom >= 16] {
      text-size: 12;
      text-wrap-width: 60;
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
  }
}


@placenames: #222;
@placenames-light: #777777;
.country {
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 20;
    [zoom >= 4] {
      text-size: 10;
    }
  }
}

.state {
  [place = 'state'][zoom >= 4][zoom < 9] {
    text-name: "[ref]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 0;
    [zoom >= 5] {
      text-name: "[name]";
    }
    [zoom >= 7] {
      text-size: 11;
    }
  }
}

#placenames-capital {
  [zoom >= 5][zoom < 15] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-min-distance: 10;
    [zoom >= 6] {
      text-size: 12;
    }
    [zoom >= 11] {
      text-size: 15;
    }
  }
}

#placenames-medium::city {
  [place = 'city'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-size: 15;
      }
    }
  }
}

#placenames-medium::town {
  [place = 'town'] {
    [zoom >= 9] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-wrap-width: 20;
      text-min-distance: 10;
    }
    [zoom >= 11] {
      text-size: 11;
    }
    [zoom >= 14] {
      text-size: 15;
      text-fill: @placenames-light;
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 11;
    text-fill: @placenames;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-min-distance: 10;
    [zoom >= 14] {
      text-size: 14;
      text-fill: @placenames-light;
    }
  }
}

#placenames-small::village {
  [place = 'village'] {
    [zoom >=12] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
      [zoom >= 15] {
        text-size: 13;
        text-fill: @placenames-light;
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
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-min-distance: 10;
    }
    [zoom >= 16] {
      text-size: 12;
      text-fill: @placenames-light;
    }
  }
}

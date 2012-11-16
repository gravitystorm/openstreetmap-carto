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
    text-face-name: @book-fonts;
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
    text-fill: #9d6c9d;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
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
    text-size: 9;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    [zoom >= 6] {
      text-size: 11;
    }
    [zoom >= 11] {
      text-size: 14;
    }
  }
}

.city {
  [place = 'city'],
  [place = 'metropolis'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 8;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      [zoom >= 9] {
        text-size: 11;
      }
      [zoom >= 11] {
        text-size: 14;
      }
    }
  }
}

.town {
  [place = 'town'],
  [place = 'large_town'],
  [place = 'small_town'] {
    [zoom >= 9] {
      text-name: "[name]";
      text-size: 8;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
    }
    [zoom >= 11] {
      text-size: 10;
    }
    [zoom >= 14] {
      text-size: 14;
      text-fill: #777777;
    }
  }
}

.suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    [zoom >= 14] {
      text-size: 13;
      text-fill: #777777;
    }
  }
}

.village {
  [place = 'village'],
  [place = 'large_village'] {
    [zoom >=12] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      [zoom >= 15] {
        text-size: 12;
        text-fill: #777777;
      }
    }
  }
}

.hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 8;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 11;
      text-fill: #777777;
    }
  }
}

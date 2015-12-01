@placenames: #222;
@placenames-light: #777777;

.country {
  [admin_level = '2'][zoom >= 2][way_pixels > 3000][way_pixels < 196000] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1.5;
    text-wrap-width: 50;
    text-placement: interior;
    [zoom >= 4] {
      text-size: 10;
    }
  }
}

.state {
  [admin_level = '4'] {
    [zoom >= 4][zoom < 5][way_pixels > 750],
    [zoom >= 5][way_pixels > 3000][way_pixels < 196000] {
      text-name: "[ref]";
      text-size: 9;
      text-fill: #9d6c9d;
      text-face-name: @oblique-fonts;
      text-halo-radius: 1.5;
      text-wrap-width: 0;
      text-placement: interior;
      [zoom >= 5] {
        text-name: "[name]";
        text-wrap-width: 50;
      }
      [zoom >= 7] {
        text-size: 11;
        text-wrap-width: 70;
      }
    }
  }
}

#placenames-medium::high-importance {
  [category = 1][zoom < 14] {
    [zoom >= 3][score >= 5000000],
    [zoom >= 4][score >= 3000000],
    [zoom >= 5][score >= 400000] {
      text-name: "[name]";
      text-size: 8;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-min-distance: 10;
      [zoom >= 5] {
        text-size: 10;
        text-wrap-width: 45;
      }
      [zoom >= 6] {
        text-size: 12;
        text-wrap-width: 60;
      }
      [zoom >= 11] {
        text-size: 15;
        text-wrap-width: 75;
      }
    }
  }
}

#placenames-medium::medium-importance {
  [category = 1][score < 400000][zoom < 15] {
    [zoom >= 6][score >= 70000],
    [zoom >= 7] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 30;
      text-min-distance: 10;
      [zoom >= 9] {
        text-size: 11;
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
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 45;
      text-min-distance: 10;
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
    text-halo-radius: 1.5;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: 55;
    text-min-distance: 10;
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
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 50;
      text-min-distance: 10;
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
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @book-fonts;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 45;
      text-min-distance: 10;
    }
    [zoom >= 16] {
      text-size: 12;
      text-wrap-width: 60;
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
  }
}

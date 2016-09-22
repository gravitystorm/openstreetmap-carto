/* Features related to (postal) adresses: */

@address-color: #666;

#interpolation {
  [zoom >= 17] {
    line-color: @address-color;
    line-width: 1;
    line-dasharray: 2,4;
  }
}

#addresses {
  [zoom >= 17] {
    text-name: "[addr_housename]";
    ["addr_housenumber" != null] {
      text-name: [addr_housenumber];
      ["addr_housename" != null] {
        text-name: [addr_housenumber] + "\n" + [addr_housename];
      }
    }
    text-placement: interior;
    text-min-distance: 1;
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-fill: @address-color;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-size: 10;
    [zoom >= 20] {
        text-size: 11;
    }
  }
}

/* Building names (rendered differently from addresses because they are
no official postal addresses) */

#building-text {
  [zoom >= 14][way_pixels > 3000],
  [zoom >= 17] {
    text-name: "[name]";
    text-placement: interior;
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-fill: #444;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-size: 11;
  }
}

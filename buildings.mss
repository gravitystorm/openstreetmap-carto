@building-fill: #d9d0c9; //Lch(84, 5, 70)
@building-line: darken(@building-fill, 15%);
@building-low-zoom: darken(@building-fill, 4%);

@building-major-fill: darken(@building-fill, 20%);
@building-major-line: darken(@building-major-fill, 25%);


#buildings {
  [zoom >= 13] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      polygon-fill: @building-fill;
      line-width: .75;
      line-clip: false;
    }
  }
}

#buildings-major {
  [zoom >= 13] {
    [aeroway = 'terminal'],
    [amenity = 'place_of_worship'],
    [building = 'train_station'] {
      polygon-fill: @building-major-fill;
      polygon-clip: false;
      [zoom >= 15] {
        line-width: .75;
        line-clip: false;
        line-color: @building-major-line;
      }
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: #B8B8B8;
  }
}

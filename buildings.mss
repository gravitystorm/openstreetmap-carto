#buildings-lz {
  [zoom >= 10] {
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: #d4aaaa;
    }

    [building = 'supermarket'] {
      polygon-fill: pink;
      polygon-opacity: 0.5;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: #777;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: #aaa;
        line-width: 0.3;
        line-color: #111;
      }
    }
  }
}

#buildings {
  [building = 'INT-light'][zoom >= 12] {
    polygon-fill: #bca9a9;
    polygon-opacity: 0.7;
  }
  [building != 'INT-light'][building != ''][zoom >= 12] {
    polygon-fill: #bca9a9;
    polygon-opacity: 0.9;
    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: #cc99ff;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}

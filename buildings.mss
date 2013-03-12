#buildings-lz {
  [zoom >= 12] {
    [railway = 'station']::railway,
    [building = 'station'] {
      polygon-fill: #d4aaaa;
    }

    [shop!=''],[building = 'supermarket'] {
      polygon-fill: pink;
      polygon-opacity: 0.5;
    }

    [amenity = 'place_of_worship']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: #777;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: #aaa;
      }
    }
    
    [amenity != '']::amenity {
      polygon-opacity: 0.5;
      polygon-fill: #888;
      [zoom >= 15] {
        polygon-opacity: 0.9;
        polygon-fill: #aaa;
      }
    }
  }
}

#buildings {
  [building = 'INT-light'][zoom >= 14] {
    polygon-fill: #bca9a9;
    [zoom >= 18] {polygon-opacity: 0.4;}
    [zoom = 17] {polygon-opacity: 0.5;}
    [zoom = 16] {polygon-opacity: 0.6;}
    polygon-opacity: 0.7;
  }
  [building != 'INT-light'][building != ''][zoom >= 14] {
    [amenity = 'public_building'] {
      polygon-fill: #888;
      polygon-opacity: 0.5;
    }

    polygon-fill: #bca9a9;
    [zoom >= 18] {polygon-opacity: 0.4;}
    [zoom = 17] {polygon-opacity: 0.5;}
    [zoom = 16] {polygon-opacity: 0.6;}
    polygon-opacity: 0.7;
/*    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
      line-opacity: 0.33;
    }
*/
  }
  [aeroway = 'terminal'][zoom >= 14]::aeroway {
    polygon-fill: #cc99ff;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}

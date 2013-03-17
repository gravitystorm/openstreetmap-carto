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
  [building != ''][zoom >= 14] {
    [amenity = 'public_building'],
    [heritage != '']
     {
      polygon-fill: #888;
      polygon-opacity: 0.5;
    }

    polygon-fill: #bca9a9;
    [zoom >= 18] {polygon-fill: #dbcaca;}
    [zoom = 17] {polygon-fill: #d6c5c5;}
    [zoom = 16] {polygon-fill: #d1c0c0;}
    polygon-opacity: 0.7;
/*    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
      line-opacity: 0.33;
    }
*/
  	[zoom >= 18][wall='no'] {
  		polygon-opacity: 0.2;
      	line-color: #dbcaca;
      	line-width: 0.5;
      	line-opacity: 0.7;
	}

  }
  [aeroway = 'terminal'][zoom >= 14]::aeroway {
    polygon-fill: #cc99ff;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}

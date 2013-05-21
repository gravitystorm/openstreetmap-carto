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
  }
}

#buildings {
  [building != ''][zoom >= 14] {
    // [amenity = 'public_building'],
    [heritage != '']
     {
      polygon-fill: #888;
      polygon-opacity: 0.5;
    }

    [building = 'greenhouse'][wall='no'],
    [building = 'greenhouse']
    {
      polygon-fill: #c5d2b4;
    }

    polygon-fill: #bdacac;					/* 9%/74% (sat./bright) */
    [zoom = 16] {polygon-fill: #c2b2b2;}	/* 8%/76% */
    [zoom = 17] {polygon-fill: #ccbebe;}	/* 7%/80% */
    [zoom >= 18] {
    	polygon-fill: #d1c5c5;				/* 6%/82% */
      	line-color: #d1c5c5;
      	line-width: 0.5;
      	line-opacity: 0.7;
    }
    polygon-opacity: 0.7;
/*    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
      line-opacity: 0.33;
    }
*/
  	[zoom >= 18][wall='no'] {
  		polygon-opacity: 0.35;
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


#indoor [zoom >= 18] {
	line-color: #220044;
	line-width: 0.2;
}

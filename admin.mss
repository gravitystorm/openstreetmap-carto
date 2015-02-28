#admin-01234 {
  background/line-color: white;
  background/line-width: 6;
  comp-op: darken;
  opacity: 0.7;

  [admin_level = '2'] {
    [zoom >= 4] {
      line-color: #6c216c;
      line-width: 0.6;
      line-cap: round;
    }
    [zoom >= 5] {
      line-width: 1;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 8] {
    	line-color: purple;
    }
    [zoom >= 10] {
      line-opacity: 0.5;
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 4;
        line-dasharray: 4,2;
      }
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 2;
        line-cap: round;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }

  }
  [admin_level = '3'],
  [admin_level = '4'] {
    [zoom >= 5] {
      line-color: #6c216c;
      line-width: 0.5;
      line-cap: round;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 8] {
	    line-color: purple;
	    line-dasharray: 4,3;
    }
    [zoom >= 10] {
      line-width: 1.5;
    }
    [zoom >= 11] {
      line-width: 3;
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 0.5;
        line-cap: round;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }
  }
  [admin_level = '5'][zoom >= 7][zoom < 11],
  [admin_level = '6'][zoom >= 7][zoom < 11] {
    line-color: #6c216c;
    line-width: 0.33;
    line-cap: round;
  }

}

#admin-5678 {
  background/line-color: white;
  background/line-width: 2;
  comp-op: darken;
  opacity: 0.7;

  [admin_level = '5'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 8,3,2,3;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: purple;
      line-width: 1.5;
      line-dasharray: 5,3;
    }
  }
}

#admin-other {
  background/line-color: white;
  background/line-width: 2;
  comp-op: darken;
  opacity: 0.7;

  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-color: purple;
      line-width: 2;
      line-dasharray: 2,3;
      line-opacity: 0.2;
    }
  }
}

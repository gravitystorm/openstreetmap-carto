@building-fill: #bbae92;
@building-line: darken(@building-fill, 22%);

@building-aeroway-fill: #cc99ff;
@building-aeroway-line: darken(@building-aeroway-fill,15%);


#buildings-major {
  opacity: 0.4; 
  [zoom >= 10][zoom < 12] {
    polygon-fill: @building-fill;
    polygon-clip: false;
  }
}

#buildings {
  opacity: 0.4; 
  [zoom >= 12] {
    /* Set the base styling for buildings. We'll need to reset the fill and
       line colours for more specialized building rendering lower down, but
       not the clipping or line-width.
    */
    polygon-fill: @building-fill;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      line-width: .75;
      line-clip: false;
    }
    [aeroway = 'terminal'] {
      polygon-fill: @building-aeroway-fill;
      [zoom >= 15] {
        line-color: @building-aeroway-line;
      }
    }
  }
}

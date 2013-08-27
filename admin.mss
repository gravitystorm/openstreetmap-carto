#admin-01234 {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      line-color: purple;
      line-width: 0.6;
      line-opacity: 0.2;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 10] {
      line-opacity: 0.1;
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 5;
        line-dasharray: 4,2;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      line-color: purple;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-opacity: 0.2;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 11] {
      line-width: 3;
    }
  }
}

#admin-5678 {
  [admin_level = '5'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-opacity: 0.3;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-opacity: 0.3;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: purple;
      line-width: 1.5;
      line-dasharray: 5,2;
      line-opacity: 0.3;
    }
  }
}

#admin-other {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      line-color: purple;
      line-width: 2;
      line-dasharray: 2,3;
      line-opacity: 0.3;
    }
  }
}

/*
 * err, what does this do?
<Style name="admin-other">
   <Rule>
      <Filter>not [admin_level] != ''</Filter>
      &maxscale_zoom9;
      &minscale_zoom11;
      <LineSymbolizer stroke="purple" stroke-width="1" stroke-opacity="0.2"/>
    </Rule>
</Style>
*/

#national-park-boundaries {
  [zoom >= 7] {
    ::fill [zoom < 13] {
      opacity: 0.05;
      polygon-fill: green;
    }
    ::line {
      opacity: 0.15;
      line-color: green;
      line-width: 1.5;
      line-dasharray: 4,2;
      [zoom >= 10] {
        line-width: 3;
        line-dasharray: 6,2;
        line-join: bevel;
      }
    }
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}

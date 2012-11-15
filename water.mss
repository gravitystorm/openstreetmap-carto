#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-dasharray: 4,2;
      line-width: 1.5;
      line-color: #9cf;
      polygon-pattern-file: url('symbols/glacier.png');
      [zoom >= 8] {
        polygon-pattern-file: url('symbols/glacier2.png');
      }
    }
  }

  [waterway = 'dock'],
  [waterway = 'mill_pond'],
  [waterway = 'canal'] {
    [zoom >= 9]::waterway {
      polygon-gamma: 0.75;
      polygon-fill: #b5d0d0;
    }
  }

  [landuse = 'basin'][zoom >= 7]::landuse {
    polygon-gamma: 0.75;
    polygon-fill: #b5d0d0;
  }

  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway,
  [landuse = 'water']::water,
  [natural = 'bay']::natural {
    [zoom >= 6] {
      polygon-fill: #b5d0d0;
      polygon-gamma: 0.75;
    }
  }

  [natural = 'mud'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/mud.png');
  }

  [natural = 'land'][zoom >= 10]::natural {
    polygon-fill: #f2efe9;
  }
}

#water-areas-overlay {
  [natural = 'marsh'],
  [natural = 'wetland'] {
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/marsh.png');
    }
  }
}

#glaciers-text {
  [way_area >= 10000000][zoom >= 10],
  [way_area >= 5000000][way_area < 10000000][zoom >= 11],
  [way_area < 5000000][zoom >= 12] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #99f;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}

#water-lines-casing {
  [waterway='stream'],
  [waterway='ditch'],
  [waterway='drain'] {
    [zoom >= 13] {
      line-width: 1.5;
      line-color: white;
      [waterway='stream'][zoom >= 15] {
        line-width: 2.5;
      }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    line-color: #b5d0d0;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines {
  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: #b5d0d0;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'river'][zoom >= 12] {
    line-color: #b5d0d0;
    line-width: 2;
    line-cap: round;
    line-join: round;
    [zoom >= 13] {
      line-width: 3;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-fill: #6699cc;
      text-spacing: 400;
      text-size: 9;
      text-halo-radius: 1;
    }
    [zoom >= 14] {
      line-width: 5;
      text-size: 10;
    }
    [zoom >= 15] {
      line-width: 6;
    }
    [zoom >= 17] {
      line-width: 10;
    }
    [zoom >= 18] {
      line-width: 12;
    }
  }

  [waterway = 'canal'][zoom >= 12][zoom < 14] {
    line-color: #b5d0d0;
    line-width: 3;
    line-cap: round;
    line-join: round;
    [zoom >= 13] {
      line-width: 4;
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-size: 8;
      text-placement: line;
      text-fill: #6699cc;
    }
  }
}

/*

    <Rule>
      <Filter>[waterway]='stream' or [waterway]='ditch' or [waterway]='drain'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[waterway]='river' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="6" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="4"/>
      <TextSymbolizer size="10" fill="#6699cc" placement="line" minimum-distance="200" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule><Rule>
      <Filter>[waterway]='river' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="7" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="4"/>
      <TextSymbolizer size="10" fill="#6699cc" placement="line" minimum-distance="200" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='river' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom17;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="11" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="7"/>
      <TextSymbolizer size="10" fill="#6699cc" placement="line" minimum-distance="200" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='river' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="13" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="9"/>
      <TextSymbolizer size="10" fill="#6699cc" placement="line" minimum-distance="200" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='canal' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom16;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="7" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="3"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='canal' and not ([tunnel] = 'yes' or [disused]='yes')</Filter>
      &maxscale_zoom14;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#b5d0d0" stroke-width="7" stroke-linecap="round"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='canal' and [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="11" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="7"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='canal' and not ([tunnel] = 'yes' or [disused]='yes' or [lock]='yes')</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#b5d0d0" stroke-width="11" stroke-linecap="round"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='canal' and not ([tunnel] = 'yes' or [disused]='yes') and [lock]='yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#b5d0d0" stroke-width="7" stroke-linecap="round"/>
      <TextSymbolizer size="9" fill="#6699cc" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='derelict_canal' or ([waterway]='canal' and [disused]='yes')</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#b5e4d0" stroke-linecap="round" stroke-dasharray="4,4" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[waterway]='derelict_canal' or ([waterway]='canal' and [disused]='yes')</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#b5e4d0" stroke-linecap="round" stroke-dasharray="4,6" stroke-width="2.5"/>
      <TextSymbolizer size="9" fill="#80d1ae" spacing="600" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='derelict_canal' or ([waterway]='canal' and [disused]='yes')</Filter>
      &maxscale_zoom14;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#b5e4d0" stroke-linecap="round" stroke-dasharray="4,8" stroke-width="4.5"/>
      <TextSymbolizer size="10" fill="#80d1ae" spacing="600" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway]='stream' and [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="2.4" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="#f3f7f7" stroke-width="1.2"/>
    </Rule>
    <Rule>
      <Filter>[waterway]='stream' and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="2"/>
      <TextSymbolizer size="8" fill="#6699cc" spacing="600" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>([waterway]='drain' or [waterway]='ditch') and [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="2" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="#f3f7f7" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>([waterway]='drain' or [waterway]='ditch') and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="#b5d0d0" stroke-width="1"/>
      <TextSymbolizer size="8" fill="#6699cc" spacing="600" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
</Style>

*/
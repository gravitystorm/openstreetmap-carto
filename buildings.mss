/*
<Style name="buildings-lz">
    <Rule>
      <Filter>[railway] = 'station' or [building] = 'station'</Filter>
      &maxscale_zoom10;
      <PolygonSymbolizer fill="#d4aaaa"/>
    </Rule>
    <Rule>
      <Filter>[building] = 'supermarket'</Filter>
      &maxscale_zoom10;
      <PolygonSymbolizer fill-opacity="0.5" fill="pink"/>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'place_of_worship'</Filter>
      &maxscale_zoom10;
      &minscale_zoom14;
      <PolygonSymbolizer fill-opacity="0.5" fill="#777"/>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'place_of_worship'</Filter>
      &maxscale_zoom15;
      <PolygonSymbolizer fill-opacity="0.9" fill="#aaa"/>
      <LineSymbolizer stroke="#111" stroke-width="0.3"/>
    </Rule>
</Style>

<Style name="buildings">
    <Rule>
      <Filter>[building] = 'INT-light'</Filter>
      &maxscale_zoom12;
      <PolygonSymbolizer fill-opacity="0.7" fill="#bca9a9"/>
    </Rule>
    <Rule>
      <Filter>[building] != 'INT-light' and [building] != ''</Filter>
      &maxscale_zoom12;
      <PolygonSymbolizer fill-opacity="0.9" fill="#bca9a9"/>
    </Rule>
    <Rule>
      <Filter>[building] != 'INT-light' and [building] != ''</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke="#330066" stroke-width="0.2"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'terminal'</Filter>
      &maxscale_zoom12;
      <PolygonSymbolizer fill="#cc99ff"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'terminal'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#330066" stroke-width="0.2"/>
    </Rule>
</Style>

*/
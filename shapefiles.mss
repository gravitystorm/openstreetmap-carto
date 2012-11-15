/*

<Style name="necountries">
    <Rule>
      &maxscale_zoom1;
      &minscale_zoom3;
      <LineSymbolizer stroke="grey" stroke-width="0.5"/>
    </Rule>
</Style>
<Style name="nepopulated">
    <Rule>
      &maxscale_zoom3;
      &minscale_zoom4;
     <Filter>[SCALERANK]=1</Filter>
     <TextSymbolizer size="8" dy="2" fill="grey" fontset-name="book-fonts" halo-radius="1">[NAMEASCII]</TextSymbolizer>
    </Rule>
</Style>
<Style name="world">
    <Rule>
      &maxscale_zoom0;
      &minscale_zoom9;
      <PolygonSymbolizer fill="#f2efe9"/>
    </Rule>
</Style>
<Style name="coast-poly">
    <Rule>
      &maxscale_zoom10;
      <PolygonSymbolizer fill="#f2efe9"/>
    </Rule>
</Style>
  <!-- BUILTUP VMAP0 -->
<Style name="builtup">
    <Rule>
      &maxscale_zoom8;
      &minscale_zoom10;
      <PolygonSymbolizer fill="#ddd"/>
    </Rule>
</Style>
<Layer name="world" status="on" srs="&srs900913;">
    <StyleName>world</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">&world_boundaries;/shoreline_300</Parameter>
    </Datasource>
</Layer>
<Layer name="coast-poly" status="on" srs="&srs900913;">
    <StyleName>coast-poly</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">&world_boundaries;/processed_p</Parameter>
    </Datasource>
</Layer>
<Layer name="builtup" status="on" srs="&srsmercator;">
    <StyleName>builtup</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">&world_boundaries;/builtup_area</Parameter>
    </Datasource>
</Layer>
<Layer name="necountries" status="on" srs="&srs4326;">
    <StyleName>necountries</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">&world_boundaries;/110m_admin_0_boundary_lines_land.shp</Parameter>
    </Datasource>
</Layer>
<Layer name="nepopulated" status="on" srs="&srs4326;">
    <StyleName>nepopulated</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">&world_boundaries;/ne_10m_populated_places.shp</Parameter>
      <Parameter name="encoding">latin1</Parameter>
    </Datasource>
</Layer>

*/
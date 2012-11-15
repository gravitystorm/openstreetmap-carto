/*

<Style name="citywalls">
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="4" stroke-opacity="0.8"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="6" stroke-opacity="0.8"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="9" stroke-opacity="0.8"/>
    </Rule>
</Style>
<Style name="castle_walls">
<Rule>
      &maxscale_zoom14;
      &minscale_zoom15;
      <LineSymbolizer stroke="#999" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <LineSymbolizer stroke="#888" stroke-width="2"/>
    </Rule>
</Style>
<Layer name="citywalls" status="on" srs="&osm2pgsql_projection;">
    <StyleName>citywalls</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_line where "historic"='citywalls') as citywalls</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="castle_walls" status="on" srs="&osm2pgsql_projection;">
    <StyleName>castle_walls</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_line where "historic"='castle_walls') as castle_walls</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="castle_walls" status="on" srs="&osm2pgsql_projection;">
    <StyleName>castle_walls</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_polygon where "historic"='castle_walls') as castle_walls</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>

*/

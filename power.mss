/*
<Style name="power_line">
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom15;
      <LineSymbolizer stroke="#777" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <LineSymbolizer stroke="#777" stroke-width="1.5"/>
    </Rule>
</Style>
<Style name="power_minorline">
    <Rule>
      &maxscale_zoom16;
      <LineSymbolizer stroke="#777" stroke-width="0.5"/>
    </Rule>
</Style>
<Style name="power_towers">
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom14;
      <PointSymbolizer file="&symbols;/power_tower_3x3.png" allow-overlap="false"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom16;
      <PointSymbolizer file="&symbols;/power_tower_5x5.png" allow-overlap="false"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <PointSymbolizer file="&symbols;/power_tower.png" allow-overlap="false"/>
    </Rule>
</Style>
<Style name="power_poles">
    <Rule>
      &maxscale_zoom16;
      <PointSymbolizer file="&symbols;/power_pole.png" allow-overlap="false"/>
    </Rule>
</Style>
<Layer name="power_line" status="on" srs="&osm2pgsql_projection;">
    <StyleName>power_line</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_line where "power"='line') as power_line</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="power_minorline" status="on" srs="&osm2pgsql_projection;">
    <StyleName>power_minorline</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_line where "power"='minor_line') as power_minorline</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="power_towers" status="on" srs="&osm2pgsql_projection;">
     <StyleName>power_towers</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_point where power='tower') as power_towers</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="power_poles" status="on" srs="&osm2pgsql_projection;">
     <StyleName>power_poles</StyleName>
    <Datasource>
      <Parameter name="table">(select way from &prefix;_point where power='pole') as power_poles</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>

*/
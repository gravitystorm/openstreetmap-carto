/*
<Style name="interpolation">
    <Rule>
      &maxscale_zoom17;
      <LineSymbolizer stroke="#888" stroke-width="1" stroke-dasharray="2,4"/>
    </Rule>
</Style>
<Style name="housenumbers">
    <Rule>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#444" dy="0" fontset-name="book-fonts" wrap-width="0" minimum-distance="1" placement="interior">[addr:housenumber]</TextSymbolizer>
    </Rule>
</Style>
<Style name="housenames">
    <Rule>
      &maxscale_zoom17;
      &minscale_zoom17;
      <TextSymbolizer size="8" fill="#444" dy="0" fontset-name="book-fonts" wrap-width="20" placement="interior">[addr:housename]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom18;
      <TextSymbolizer size="9" fill="#444" dy="0" fontset-name="book-fonts" wrap-width="20" placement="interior">[addr:housename]</TextSymbolizer>
    </Rule>
</Style>
<Layer name="interpolation_lines" status="on" srs="&osm2pgsql_projection;">
     <StyleName>interpolation</StyleName>
     <Datasource>
      <Parameter name="table">
       (select way from &prefix;_line where "addr:interpolation" is not null) as interpolation
      </Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="housenumbers" status="on" srs="&osm2pgsql_projection;">
    <StyleName>housenumbers</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,"addr:housenumber" from &prefix;_polygon where "addr:housenumber" is not null and building is not null
       union
       select way,"addr:housenumber" from &prefix;_point where "addr:housenumber" is not null
      ) as housenumbers
      </Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="housenames" status="on" srs="&osm2pgsql_projection;">
    <StyleName>housenames</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,"addr:housename" from &prefix;_polygon where "addr:housename" is not null and building is not null
       union
       select way,"addr:housename" from &prefix;_point where "addr:housename" is not null
      ) as housenames
      </Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
*/

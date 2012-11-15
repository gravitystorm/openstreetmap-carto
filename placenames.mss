/*
<Style name="continent">
    <Rule>
      <Filter>[place] = 'continent'</Filter>
      &maxscale_zoom1;
      &minscale_zoom2;
      <TextSymbolizer size="10" fill="#9d6c9d" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="country">
    <Rule>
      <Filter>[place] = 'country'</Filter>
      &maxscale_zoom2;
      &minscale_zoom3;
      <TextSymbolizer size="8" fill="#9d6c9d" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'country'</Filter>
      &maxscale_zoom4;
      &minscale_zoom6;
      <TextSymbolizer size="10" fill="#9d6c9d" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="state">
    <Rule>
      <Filter>[place] = 'state'</Filter>
      &maxscale_zoom4;
      &minscale_zoom4;
      <TextSymbolizer size="9" fill="#9d6c9d" dy="0" fontset-name="oblique-fonts" halo-radius="1" wrap-width="0">[ref]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'state'</Filter>
      &maxscale_zoom5;
      &minscale_zoom6;
      <TextSymbolizer size="9" fill="#9d6c9d" dy="0" fontset-name="oblique-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'state'</Filter>
      &maxscale_zoom7;
      &minscale_zoom8;
      <TextSymbolizer size="11" fill="#9d6c9d" dy="0" fontset-name="oblique-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="capital">
     <Rule>
      &maxscale_zoom5;
      &minscale_zoom5;
      <TextSymbolizer size="9" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom6;
      &minscale_zoom8;
      <TextSymbolizer size="11" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom9;
      &minscale_zoom10;
      <TextSymbolizer size="11" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom11;
      &minscale_zoom14;
      <TextSymbolizer size="14" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="city">
    <Rule>
      <Filter>[place] = 'city' or [place]='metropolis'</Filter>
      &maxscale_zoom6;
      &minscale_zoom8;
      <TextSymbolizer size="8" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'city' or [place]='metropolis'</Filter>
      &maxscale_zoom9;
      &minscale_zoom10;
      <TextSymbolizer size="11" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'city' or [place]='metropolis'</Filter>
      &maxscale_zoom11;
      &minscale_zoom14;
      <TextSymbolizer size="14" fill="#000" dy="0" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="town">
    <Rule>
      <Filter>[place] = 'town' or [place]='large_town' or [place]='small_town'</Filter>
      &maxscale_zoom9;
      &minscale_zoom10;
      <TextSymbolizer size="8" fill="#000" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'town' or [place]='large_town' or [place]='small_town'</Filter>
      &maxscale_zoom11;
      &minscale_zoom13;
      <TextSymbolizer size="10" fill="#000" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'town' or [place]='large_town' or [place]='small_town'</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="14" fill="#777777" fontset-name="book-fonts" halo-radius="1" wrap-width="20">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="suburb">
    <Rule>
      <Filter>[place] = 'suburb'</Filter>
      &maxscale_zoom12;
      &minscale_zoom13;
      <TextSymbolizer size="10" fill="#000" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'suburb'</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="13" fill="#777777" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="village">
    <Rule>
      <Filter>[place] = 'village' or [place]='large_village'</Filter>
      &maxscale_zoom12;
      &minscale_zoom14;
      <TextSymbolizer size="9" fill="#000" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'village' or [place]='large_village'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="12" fill="#777777" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="hamlet">
    <Rule>
      <Filter>[place] = 'hamlet' or [place] = 'locality' or [place] = 'isolated_dwelling' or [place] = 'farm'</Filter>
      &maxscale_zoom14;
      &minscale_zoom15;
      <TextSymbolizer size="8" fill="#000" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[place] = 'hamlet' or [place] = 'locality' or [place] = 'isolated_dwelling' or [place] = 'farm'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="11" fill="#777777" fontset-name="book-fonts" halo-radius="1" wrap-width="0">[name]</TextSymbolizer>
    </Rule>
</Style>

<Layer name="placenames-large" status="on" srs="&osm2pgsql_projection;">
    <StyleName>country</StyleName>
    <StyleName>state</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,place,name,ref
       from &prefix;_point
       where place in ('country','state')
      ) as placenames</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="placenames-capital" status="on" srs="&osm2pgsql_projection;">
    <StyleName>capital</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,place,name,ref
       from &prefix;_point
       where place in ('city','metropolis','town') and capital='yes'
      ) as placenames</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="placenames-medium" status="on" srs="&osm2pgsql_projection;">
    <StyleName>city</StyleName>
    <StyleName>town</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,place,name
      from &prefix;_point
      where place in ('city','metropolis','town','large_town','small_town')
        and (capital is null or capital != 'yes')
      ) as placenames</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<Layer name="placenames-small" status="on" srs="&osm2pgsql_projection;">
    <StyleName>suburb</StyleName>
    <StyleName>village</StyleName>
    <StyleName>hamlet</StyleName>
    <Datasource>
      <Parameter name="table">
      (select way,place,name
      from &prefix;_point
      where place in ('suburb','village','large_village','hamlet','locality','isolated_dwelling','farm')
      ) as placenames</Parameter>
      &datasource-settings;
    </Datasource>
</Layer>

*/

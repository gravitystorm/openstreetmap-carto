/*
<Style name="stations">
    <Rule>
      &maxscale_zoom18;
      <Filter>[railway]='subway_entrance'</Filter>
      <PointSymbolizer file="&symbols;/walking.n.12.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom12;
      &minscale_zoom12;
      <Filter>[railway]='station' and not [disused]='yes'</Filter>
      <PointSymbolizer file="&symbols;/halt.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom14;
      <Filter>[railway]='station' and not [disused]='yes'</Filter>
      <PointSymbolizer file="&symbols;/station_small.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      <Filter>[railway]='station' and [disused]='yes'</Filter>
      <PointSymbolizer file="&symbols;/station_disused.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[railway]='station' and not [disused]='yes'</Filter>
      <PointSymbolizer file="&symbols;/station.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom14;
      <Filter>[railway]='halt' or [railway]='tram_stop' or [aerialway]='station'</Filter>
      <PointSymbolizer file="&symbols;/halt.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[railway]='halt' or [railway]='tram_stop' or [aerialway]='station'</Filter>
      <PointSymbolizer file="&symbols;/station_small.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom14;
      <Filter>[railway]='halt' or [railway]='tram_stop' or [aerialway]='station'</Filter>
      <TextSymbolizer size="8" fill="#66f" dy="-8" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[railway] ='halt' or [railway]='tram_stop' or [aerialway]='station'</Filter>
      <TextSymbolizer size="10" fill="#66f" dy="-10" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom14;
      <Filter>[railway]='station' and not [disused]='yes'</Filter>
      <TextSymbolizer size="9" fill="#66f" dy="-8" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[railway]='station' and not [disused]='yes'</Filter>
      <TextSymbolizer size="11" fill="#66f" dy="-10" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[railway]='station' and [disused]='yes'</Filter>
      <TextSymbolizer size="9" fill="grey" dy="-9" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
</Style>

*/
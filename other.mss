/*
<Style name="turning_circle-casing">
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom16;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-casing.18.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.14.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.14.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.18.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.14.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.18.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-casing.24.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.24.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.16.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.24.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
</Style>
<Style name="turning_circle-fill">
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom16;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-fill.16.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.12.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.12.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.16.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.12.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.16.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-fill.22.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.22.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.14.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.22.png" allow-overlap="true" ignore-placement="true"/>
    </Rule>
</Style>
<Style name="highway-area-casing">
   <Rule>
      <Filter>[highway] = 'residential' or [highway]='unclassified'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#999" stroke-width="1"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'pedestrian' or [highway]='service' or [highway]='footway' or [highway]='path'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="1"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'track'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#996600" stroke-width="2"/>
   </Rule>
    <Rule>
      <Filter>[highway] = 'platform' or [railway] = 'platform'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="2" stroke-linecap="round"/>
    </Rule>
</Style>
<Style name="highway-area-fill">
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom14;
      <PolygonSymbolizer fill="#ccc"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'residential' or [highway]='unclassified' or [highway]='service'</Filter>
      &maxscale_zoom14;
      <PolygonSymbolizer fill="#fff"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'pedestrian' or [highway]='footway' or [highway]='path'</Filter>
      &maxscale_zoom14;
      <PolygonSymbolizer fill="#ededed"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'track'</Filter>
      &maxscale_zoom14;
      <PolygonSymbolizer fill="#dfcc66"/>
   </Rule>
    <Rule>
      <Filter>[highway] = 'platform' or [railway] = 'platform'</Filter>
      &maxscale_zoom16;
      <PolygonSymbolizer gamma=".65" fill="#bbbbbb"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom11;
      <PolygonSymbolizer fill="#bbc"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom13;
      <PolygonSymbolizer fill="#bbc"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'helipad'</Filter>
      &maxscale_zoom16;
      <PolygonSymbolizer fill="#bbc"/>
    </Rule>
</Style>
<Style name="landuse_overlay">
    <Rule>
      &maxscale_zoom10;
      &minscale_zoom18;
      <Filter>[landuse]='military'</Filter>
      <PolygonPatternSymbolizer file="&symbols;/military_red_hz2.png" />
      <LineSymbolizer stroke="#f55" stroke-width="3" stroke-opacity="0.329"/>
    </Rule>
    <Rule>
      <Filter>[leisure] = 'nature_reserve'</Filter>
      &maxscale_zoom10;
      &minscale_zoom13;
      <PolygonPatternSymbolizer file="&symbols;/nature_reserve5.png" />
      <LineSymbolizer stroke="#6c3" stroke-width="0.5"/>
    </Rule>
    <Rule>
      <Filter>[leisure] = 'nature_reserve'</Filter>
      &maxscale_zoom14;
      <PolygonPatternSymbolizer file="&symbols;/nature_reserve6.png" />
      <LineSymbolizer stroke="#6c3" stroke-width="1"/>
    </Rule>
</Style>
<Style name="area-text">
    <Rule>
      <Filter>[way_area] &gt;= 150000</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="10" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[way_area] &gt;= 80000 and [way_area] &lt; 150000</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[way_area] &gt;= 20000 and [way_area] &lt; 80000</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="10" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[way_area] &lt; 20000</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="highway-junctions">
    <Rule>
      &maxscale_zoom11;
      &minscale_zoom11;
      <TextSymbolizer size="9" fill="#6666ff" minimum-distance="2" fontset-name="oblique-fonts" halo-radius="1" wrap-width="12">[ref]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom12;
      &minscale_zoom14;
      <TextSymbolizer size="9" fill="#6666ff" minimum-distance="2" fontset-name="oblique-fonts" halo-radius="1" wrap-width="12">[ref]</TextSymbolizer>
      <TextSymbolizer size="8" fill="#6666ff" dy="-8" minimum-distance="2" fontset-name="oblique-fonts" halo-radius="1" wrap-width="2" wrap-character=";">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <TextSymbolizer size="12" fill="#6666ff" minimum-distance="2" fontset-name="oblique-fonts" halo-radius="1" wrap-width="12">[ref]</TextSymbolizer>
      <TextSymbolizer size="11" fill="#6666ff" dy="-10" minimum-distance="2" fontset-name="oblique-fonts" halo-radius="1" wrap-width="2" wrap-character=";">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="text">
    <Rule>
      <Filter>[place] = 'island'</Filter>
      &maxscale_zoom12;
      &minscale_zoom18;
      <TextSymbolizer size="9" fill="#000" dy="0" fontset-name="oblique-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='pub' or [amenity]='restaurant' or [amenity]='cafe' or [amenity]='fast_food' or [amenity]='biergarten'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="9" fontset-name="bold-fonts" halo-radius="1" wrap-width="34" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='bar'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="11" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='library' or [amenity]='theatre' or [amenity]='courthouse'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="12" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='cinema'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="14" fontset-name="bold-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='parking' and ([access] = 'public' or not [access] != '')</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#0066ff" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="34" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='parking' and ([access] != '' and not [access] = 'public')</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#66ccaf" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="34" placement="interior">[name]</TextSymbolizer>
    </Rule>
     <Rule>
      <Filter>[amenity] = 'police'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="10" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'fire_station'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
     <Rule>
      <Filter>[amenity] = 'place_of_worship'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#000033" dy="11" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'wood'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="#000" fontset-name="book-fonts" halo-radius="2" wrap-width="10" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'peak'</Filter>
      &maxscale_zoom13;
      <TextSymbolizer size="10" fill="brown" dy="5" fontset-name="book-fonts" halo-radius="1" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'peak' and not [name] != ''</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="9" fill="brown" dy="6" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'peak' and [name] != ''</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="9" fill="brown" dy="18" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'volcano'</Filter>
      &maxscale_zoom13;
      <TextSymbolizer size="10" fill="brown" dy="5" fontset-name="book-fonts" halo-radius="1" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'volcano' and not [name] != ''</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="9" fill="brown" dy="6" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'volcano' and [name] != ''</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="9" fill="brown" dy="16" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'cave_entrance'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="brown" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[historic] = 'memorial' or [historic]='archaeological_site'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="brown" dy="12" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'water' or [natural] = 'lake' or [landuse] = 'reservoir' or [landuse] = 'basin'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="#6699cc" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>([leisure] != '' or [landuse] != '') and [point] = 'yes'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#000" fontset-name="book-fonts" halo-radius="2" wrap-width="10">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'bay'</Filter>
      &maxscale_zoom14;
      <TextSymbolizer size="10" fill="#6699cc" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[natural] = 'spring'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="8" fill="#6699cc" dy="10" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'alpine_hut'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#6699cc" dy="10" fontset-name="book-fonts" halo-radius="1" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'alpine_hut'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="8" fill="#6699cc" dy="22" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='shelter'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#6699cc" dy="10" fontset-name="book-fonts" halo-radius="1" placement="interior">[name]</TextSymbolizer>
      <TextSymbolizer size="8" fill="#6699cc" dy="22" fontset-name="oblique-fonts" halo-radius="1" placement="interior">[ele]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'bank'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="black" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'hotel' or [tourism]='hostel' or [tourism]='chalet'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#0066ff" dy="11" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'embassy'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#0066ff" dy="8" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism]='guest_house'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="8" fill="#0066ff" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism]='bed_and_breakfast'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="8" fill="#0066ff" dy="7" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'fuel' or [amenity]='bus_station'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#0066ff" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'camp_site'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#0066ff" dy="15" fontset-name="book-fonts" halo-radius="1" wrap-width="70" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'caravan_site'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#0066ff" dy="19" fontset-name="book-fonts" halo-radius="1" wrap-width="70" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[waterway] = 'lock'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#0066ff" dy="10" fontset-name="book-fonts" halo-radius="1" wrap-width="70" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[leisure] = 'marina'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <TextSymbolizer size="8" fill="blue" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[leisure] = 'marina'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="blue" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'theme_park'</Filter>
      &maxscale_zoom14;
      &minscale_zoom15;
      <TextSymbolizer size="8" fill="#734a08" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'theme_park'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="10" fill="#734a08" fontset-name="book-fonts" halo-radius="1" wrap-width="30" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism]='museum'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="10" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity]='prison'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#734a08" dy="16" fontset-name="book-fonts" halo-radius="1" wrap-width="0" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[tourism] = 'attraction'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="10" fill="#660033" fontset-name="book-fonts" halo-radius="2" wrap-width="10" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'university'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#000033" fontset-name="bold-fonts" halo-radius="1" wrap-width="16" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'school' or [amenity] = 'college'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="14" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'kindergarten'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="8" fill="#000033" fontset-name="book-fonts" halo-radius="1" wrap-width="14" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[man_made] = 'lighthouse'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="9" fill="#000033" dy="16" fontset-name="book-fonts" halo-radius="2" wrap-width="12" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[man_made] = 'windmill'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="9" fill="#734a08" dy="12" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'hospital'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="8" fill="#da0092" dy="10" fontset-name="book-fonts" halo-radius="2" wrap-width="24" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[amenity] = 'pharmacy'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="8" fill="#da0092" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="12" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[shop]='bakery' or [shop]='clothes' or [shop]='fashion' or [shop]='convenience' or [shop]='doityourself' or [shop]='hairdresser' or [shop]='butcher' or [shop]='car' or [shop]='car_repair' or [shop]='bicycle' or [shop]='florist'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="8" fill="#939" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="12" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[shop]='supermarket' or [shop]='department_store'</Filter>
      &maxscale_zoom16;
      <TextSymbolizer size="9" fill="#939" dy="9" fontset-name="book-fonts" halo-radius="1" wrap-width="20" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[military] = 'danger_area'</Filter>
      &maxscale_zoom12;
      <TextSymbolizer size="9" fill="pink" fontset-name="bold-fonts" halo-radius="1" wrap-width="10" placement="interior">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'gate'</Filter>
      &maxscale_zoom17;
      <TextSymbolizer size="10" fill="#aa66cc" fontset-name="book-fonts" halo-radius="1" wrap-width="10" placement="interior">[ref]</TextSymbolizer>
    </Rule>
</Style>
<Style name="tunnels-casing">
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#506077" stroke-width="3" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#506077" stroke-width="6.5" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#506077" stroke-width="10" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#506077" stroke-width="13" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#477147" stroke-width="4" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#477147" stroke-width="8" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#477147" stroke-width="11" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#477147" stroke-width="14" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#8d4346" stroke-width="4" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#8d4346" stroke-width="8" stroke-dasharray="4,2"/>
    </Rule>
   <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#8d4346" stroke-width="11" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#8d4346" stroke-width="14" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#a37b48" stroke-width="4" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#a37b48" stroke-width="10" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#a37b48" stroke-width="12" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#a37b48" stroke-width="17" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="#999" stroke-width="6" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="#999" stroke-width="7.5" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="#999" stroke-width="3" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="#999" stroke-width="4.5" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke="#999" stroke-width="8" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke="#999" stroke-width="11" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="#999" stroke-width="11" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link' or [highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="#999" stroke-width="16" stroke-dasharray="4,2"/>
    </Rule>
</Style>
<Style name="tunnels-fill">
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#d6dfea" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#d6dfea" stroke-width="5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#d6dfea" stroke-width="8.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#d6dfea" stroke-width="11" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#cdeacd" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#cdeacd" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#cdeacd" stroke-width="9" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#cdeacd" stroke-width="12" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#f4c3c4" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#f4c3c4" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#f4c3c4" stroke-width="9" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#f4c3c4" stroke-width="12" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#fee0b8" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fee0b8" stroke-width="8" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#fee0b8" stroke-width="10" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fee0b8" stroke-width="14" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffc" stroke-width="5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffc" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffc" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffc" stroke-width="13" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="13" stroke-linecap="round"/>
    </Rule>
</Style>
<Style name="minor-roads-casing-links">
    <Rule>
      <Filter>[highway]='raceway'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="pink" stroke-width="1.2"/>
    </Rule>
    <Rule>
      <Filter>[highway]='raceway'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="pink" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[highway]='raceway'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="pink" stroke-width="7"/>
    </Rule>
    <Rule>
      <Filter>[highway]='motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#506077" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[highway]='motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#506077" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway]='motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#506077" stroke-width="8"/>
    </Rule>
    <Rule>
      <Filter>[highway]='motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#506077" stroke-width="11"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#477147" stroke-width="3"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#477147" stroke-width="7.5"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#477147" stroke-width="11.5"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#477147" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#8d4346" stroke-width="3"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#8d4346" stroke-width="7.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#8d4346" stroke-width="11.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#8d4346" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#a37b48" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#a37b48" stroke-width="8.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#a37b48" stroke-width="11.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#a37b48" stroke-width="16" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#bbb" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#bbb" stroke-width="7.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#bbb" stroke-width="11" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#bbb" stroke-width="16" stroke-linecap="round"/>
    </Rule>
</Style>

*/

#minor-roads-casing {
  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #506077;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #477147;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: #8d4346;
      line-join: round;
    }
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: #a37b48;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 8.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'tertiary'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: #bbb;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [tunnel != 'yes'] {
      [zoom >= 13] {
        line-width: 3;
        line-color: #999;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 4.5; }
      [zoom >= 15] { line-width: 8; }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }
  }

  /* This needs refactoring! Minor services shouldn't appear at z14
   * simply because of a tunnel tag. Also rationalise joins and caps
   */
  [highway = 'service'] {
    [service = 'INT-normal'][tunnel != 'yes'] {
      [zoom >= 14] {
        line-color: #999;
        line-width: 2.5;
        line-cap: round;
      }
      [zoom >= 16] { line-width: 11; }
    }
    [service = 'INT-minor'][tunnel != 'yes'] {
      [zoom >= 16] {
        line-color: #999;
        line-width: 4;
        line-cap: round;
        line-join: round;
      }
    }
    [tunnel = 'yes'][zoom >= 14] {
      line-color: #999;
      line-width: 2.5;
      line-dasharray: 4,2;
      [zoom >= 16] { line-width: 9; }
    }
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 2;
    line-color: grey;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 3.6; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9; }
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
    }
  }

  [highway = 'living_street'][zoom >= 12] {
    line-width: 2.5;
    line-color: white;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 17] { line-width: 14.5; }
  }
}

/*
</Style>
<Style name="minor-roads-fill-links">
    <Rule>
      <Filter>[highway]='motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#809bc0" stroke-width="0.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="9" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="7" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="11" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="15.5" stroke-linecap="round"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="7" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="11" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary_link' and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="15.5" stroke-linecap="round"/>
    </Rule>
   <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="8" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="11" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="15.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="4.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary_link' and not [tunnel]='yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="13" stroke-linecap="round"/>
    </Rule>
</Style>

*/

#minor-roads-fill {

  /*
   * The construction rules for small roads are strange, since if construction is null its assumed that
   * it's a more major road. The line-width = 0 could be removed by playing with the query to set a construction
   * string for non-small roads.
   */
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #9cc;
      b/line-width: 2;
      b/line-dasharray: 4,2;
      b/line-color: white;
      [zoom >= 13] {
        line-width: 4;
        b/line-width: 3.5;
        b/line-dasharray: 6,4;
      }
      [zoom >= 13] {
        line-width: 8;
        b/line-width: 7;
        b/line-dasharray: 8,6;
      }
      [construction = 'motorway'],
      [construction = 'motorway_link'] {
        line-color: #809bc0;
      }
      [construction = 'trunk'],
      [construction = 'trunk_link'] {
        line-color: #a9dba9;
      }
      [construction = 'primary'],
      [construction = 'primary_link'] {
        line-color: #ec989a;
      }
      [construction = 'secondary'],
      [construction = 'secondary_link'] {
        line-color: #fed7a5;
      }
      [construction = 'tertiary'],
      [construction = 'tertiary_link'] {
        line-color: #ffffb3;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'residential'],
      [construction = 'unclassified'],
      [construction = 'living_street'] {
        line-color: #aaa;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'service'] {
        line-color: #aaa;
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
      }
      [construction = 'cycleway'] {
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
        line-color: white;
        line-width: 3;
        line-opacity: 0.4;
        b/line-width: 1.2;
        b/line-color: #69f;
        b/line-dasharray: 2,6;
      }
    }
  }

  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #809bc0;
    }
    [zoom >= 13] {
      line-width: 5;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-cap: round;
      line-join: round;
      line-color: #a9dba9;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 11] { /* awooga prob should be 12? */
      line-width: 2.5;
      line-color: #ec989a;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: #fed7a5;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15.5; }
  }

  [railway = 'rail'][tunnel = 'yes'][zoom >= 13],
  [railway = 'spur-siding-yard'][tunnel = 'yes'][zoom >= 13] {
    a/line-width: 3;
    b/line-width: 3;
    c/line-width: 3;
    d/line-width: 3;
    e/line-width: 3;
    f/line-width: 3;
    g/line-width: 3;
    a/line-color: #ffffff;
    b/line-color: #fdfdfd;
    c/line-color: #ececec;
    d/line-color: #cacaca;
    e/line-color: #afafaf;
    f/line-color: #a1a1a1;
    g/line-color: #9b9b9b;
    a/line-dasharray: 1,9;
    b/line-dasharray: 0,1,1,8;
    c/line-dasharray: 0,2,1,7;
    d/line-dasharray: 0,3,1,6;
    e/line-dasharray: 0,4,1,5;
    f/line-dasharray: 0,5,1,4;
    g/line-dasharray: 0,6,1,3;
    a/line-join: round;
    b/line-join: round;
    c/line-join: round;
    d/line-join: round;
    e/line-join: round;
    f/line-join: round;
    g/line-join: round;
    [railway = 'spur-siding-yard'] {
      a/line-width: 2;
      b/line-width: 2;
      c/line-width: 2;
      d/line-width: 2;
      e/line-width: 2;
      f/line-width: 2;
      g/line-width: 2;
    }
  }

  [railway = 'rail'][tunnel != 'yes'][zoom >= 13] {
    a/line-width: 3;
    a/line-color: #999999;
    a/line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
    [zoom >= 14] {
      b/line-dasharray: 0,11,8,1;
    }
  }

  [railway = 'spur-siding-yard'][zoom >= 11] {
    a/line-width: 1;
    a/line-color: #aaa;
    a/line-join: round;
    [zoom >= 13][tunnel != 'yes'] {
      a/line-color: #999999;
      a/line-width: 2;
      b/line-width: 0.8;
      b/line-dasharray: 0,8,11,1;
      b/line-color: white;
      b/line-join: round;
    }
  }

  [railway = 'narrow_gauge'],
  [railway = 'funicular'] {
    [zoom >= 13] {
      a/line-width: 2;
      a/line-color: #666;
      [tunnel = 'yes'] {
        a/line-width: 5;
        a/line-dasharray: 5,3;
        b/line-color: #fff;
        b/line-width: 4;
        c/line-color: #aaa;
        c/line-width: 1.5;
      }
    }
  }

  [railway = 'miniature'][zoom >= 15] {
    a/line-width: 1.2;
    a/line-color: #999;
    b/line-width: 3;
    b/line-color: #999;
    b/line-dasharray: 1,10;
  }

  [railway = 'tram'][tunnel = 'yes'][zoom >= 13] {
    line-width: 1;
    line-dasharray: 5,3;
    line-color: #444;
    [zoom >= 15] { line-width: 2; }
  }

  [railway = 'light_rail'][zoom >= 13] {
    line-width: 2;
    line-color: #666;
    [tunnel = 'yes'] {
      line-dasharray: 5,3;
    }
  }

  [railway = 'subway'][zoom >= 12] {
    line-width: 2;
    line-color: #999;
    [tunnel = 'yes'] {
      line-dasharray: 5,3;
    }
  }

  [railway = 'disused'],
  [railway = 'abandoned'],
  [railway = 'construction'] { /* and not [highway] != '' <- todo */
    [zoom >= 13] {
      line-color: grey;
      line-width: 2;
      line-dasharray: 2,4;
      line-join: round;
    }
  }
}

/*
<Style name="minor-roads-fill">

    <Rule>
      <Filter>[highway] = 'tertiary' or [highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom10;
      &minscale_zoom12;
      <LineSymbolizer stroke="#bbb" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="13" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'residential' or [highway] = 'unclassified') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'residential' or [highway] = 'unclassified') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'residential' or [highway] = 'unclassified') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="6.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'residential' or [highway] = 'unclassified') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'residential' or [highway] = 'unclassified') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="13" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom12;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ccc" stroke-width="1.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ccc" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#ccc" stroke-width="4.7" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ccc" stroke-width="7.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'living_street'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ccc" stroke-width="13" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="4.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' and not [tunnel]='yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' and not [tunnel]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="9.4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' and not [tunnel]='yes'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="13" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service' and not [service]='INT-minor'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="#bbbbbb" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service' and not [service]='INT-minor'</Filter>
      &maxscale_zoom14;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="2" stroke-linecap="round"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'service' and not [service]='INT-minor'</Filter>
      &maxscale_zoom16;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="6" stroke-linecap="round"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'service' and [service]='INT-minor'</Filter>
      &maxscale_zoom16;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3" stroke-linecap="round"/>
   </Rule>
   <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="1.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="5.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="8" stroke-linecap="round"/>
    </Rule>
    <Rule>
       <Filter>[highway] = 'platform' or [railway] = 'platform'</Filter>
       &maxscale_zoom16;
       <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[railway] = 'turntable'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke="#999" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'steps'</Filter>
      &maxscale_zoom15;
      <LineSymbolizer stroke="salmon" stroke-width="5.0" stroke-dasharray="2,1"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'bridleway' or ([highway] = 'path' and [horse] = 'designated')) and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke="green" stroke-width="1.2" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'footway' or ([highway] = 'path' and [foot] = 'designated')) and not [tunnel]='yes'</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="4" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="salmon" stroke-width="1.5" stroke-dasharray="1,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'path' and not ([bicycle] = 'designated' or [foot] = 'designated' or [horse] = 'designated') and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1.0" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="black" stroke-width="0.5" stroke-dasharray="6,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
       <Filter>[highway] = 'platform' or [railway] = 'platform'</Filter>
       &maxscale_zoom16;
       <LineSymbolizer stroke-linejoin="round" stroke="#bbbbbb" stroke-width="4" stroke-linecap="round"/>
     </Rule>
    <Rule>
      <Filter>[highway] = 'steps'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#fff" stroke-width="6" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="salmon" stroke-width="2.0" stroke-dasharray="1,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>([highway] = 'cycleway' or ([highway] = 'path' and [bicycle] = 'designated')) and not [tunnel] = 'yes'</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="blue" stroke-width="1.2" stroke-dasharray="1,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'byway'</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#ffcc00" stroke-width="1.5" stroke-dasharray="3,4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="2.5" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#996600" stroke-width="1.2" stroke-dasharray="3,4" stroke-linecap="round"/>
     </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3.5" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#debd9c" stroke-width="2.5" stroke-dasharray="2,4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="5" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#debd9c" stroke-width="4" stroke-dasharray="4,6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom11;
      &minscale_zoom11;
      <LineSymbolizer stroke="#bbc" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#bbc" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="#bbc" stroke-width="7"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway' and not [bridge]='yes'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#bbc" stroke-width="18"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom11;
      &minscale_zoom13;
      <LineSymbolizer stroke="#bbc" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway' and not [bridge]='yes'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="#bbc" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway' and not [bridge]='yes'</Filter>
      &maxscale_zoom15;
      <LineSymbolizer stroke="#bbc" stroke-width="6"/>
    </Rule>
</Style>
<Style name="access">
     <Rule>
      <Filter>[access] = 'permissive' and ([highway]='unclassified' or [highway]='residential' or [highway]='footway')</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#cf9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
     <Rule>
      <Filter>[access] = 'permissive' and ([highway] = 'service' and not [service] = 'INT-minor')</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#cf9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="3"/>
    </Rule>
     <Rule>
      <Filter>[access] = 'permissive' and ([highway]='unclassified' or [highway]='residential' or [highway]='footway' or [highway]='service')</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#cf9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>[access]='destination' and ([highway]='unclassified' or [highway]='residential')</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#c2e0ff" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>[access]='destination' and ([highway] = 'service' and not [service] = 'INT-minor')</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#c2e0ff" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="3"/>
    </Rule>
    <Rule>
      <Filter>[access]='destination' and ([highway]='unclassified' or [highway]='residential' or [highway]='service')</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#c2e0ff" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>([access] = 'private' or [access] = 'no') and not [highway] = 'service'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#efa9a9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>([access] = 'private' or [access] = 'no') and ([highway] = 'service' and not [service] = 'INT-minor')</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#efa9a9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="3"/>
    </Rule>
    <Rule>
      <Filter>[access] = 'private' or [access] = 'no'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#efa9a9" stroke-linecap="round" stroke-dasharray="6,8" stroke-width="6"/>
    </Rule>
</Style>
<Style name="footbikecycle-tunnels">
    <Rule>
      <Filter>[highway] = 'bridleway' or ([highway] = 'path' and [horse] = 'designated')</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke="grey" stroke-width="5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="green" stroke-linecap="round" stroke-dasharray="4,2" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'footway' or ([highway] = 'path' and [foot] = 'designated')</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke="grey" stroke-width="5.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="3.5" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="salmon" stroke-linecap="round" stroke-dasharray="1,3" stroke-width="2.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'path' and not ([bicycle] = 'designated' or [foot] = 'designated' or [horse] = 'designated')</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke="grey" stroke-width="5.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1.0" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="black" stroke-width="0.5" stroke-dasharray="6,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'cycleway' or ([highway] = 'path' and [bicycle] = 'designated')</Filter>
      &maxscale_zoom13;
      <LineSymbolizer stroke="grey" stroke-width="5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="blue" stroke-linecap="round" stroke-dasharray="1,3" stroke-width="2"/>
    </Rule>
</Style>
<Style name="tracks-notunnel-nobridge">
    <Rule>
      <Filter>[tracktype]='grade1'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="white" stroke-width="3.5" stroke-opacity="0.4"/>
      <LineSymbolizer stroke="#b37700" stroke-width="2" stroke-opacity="0.7"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade2'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#a87000" stroke-linecap="round" stroke-dasharray="9,4" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade3'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#996600" stroke-linecap="round" stroke-dasharray="3,4" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade4'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#996600" stroke-linecap="round" stroke-dasharray="4,7,1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade5'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#996600" stroke-linecap="round" stroke-dasharray="1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <ElseFilter/>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#996600" stroke-width="1.5" stroke-dasharray="3,4" stroke-linecap="round"/>
     </Rule>
</Style>
<Style name="tracks-tunnels">
    <Rule>
      <Filter>[tracktype]='grade1'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke="white" stroke-width="3.5"/>
      <LineSymbolizer stroke="#b37700" stroke-width="2" stroke-opacity="0.5"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade2'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="4.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#a87000" stroke-linecap="round" stroke-dasharray="3,4" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade3'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="4.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3.5" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#996600" stroke-width="2" stroke-linecap="round" stroke-opacity="0.5"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade4'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="4.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#996600" stroke-linecap="round" stroke-dasharray="4,7,1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[tracktype]='grade5'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="4.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#996600" stroke-linecap="round" stroke-dasharray="1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <ElseFilter/>
      &maxscale_zoom14;
      <LineSymbolizer stroke="grey" stroke-width="4.5" stroke-dasharray="4,2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.5" stroke="#996600" stroke-linecap="round" stroke-dasharray="3,4" stroke-width="1.5"/>
     </Rule>
</Style>
<Style name="waterway-bridges">
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#000" stroke-width="7"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#b5d0d0" stroke-width="6" stroke-linecap="round"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#000" stroke-width="11"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#b5d0d0" stroke-width="10" stroke-linecap="round"/>
      <TextSymbolizer size="9" fill="#6699cc" placement="line" fontset-name="book-fonts" halo-radius="1">[name]</TextSymbolizer>
    </Rule>
</Style>
<Style name="bridges_casing">
     <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#506077" stroke-width="3"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="6.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="9"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="12"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#477147" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="8"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="11"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke="#8d4346" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="8"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="11"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway]='secondary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="10"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway]='secondary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="12"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway]='secondary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="7.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="11"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke="black" stroke-width="9"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="11"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified' or [highway] = 'road'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="16"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service'</Filter>
      &maxscale_zoom14;
      &minscale_zoom15;
      <LineSymbolizer stroke="black" stroke-width="3"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service'</Filter>
      &maxscale_zoom16;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="8"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="black" stroke-width="2.2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="3.8"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke="black" stroke-width="7"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke="black" stroke-width="9.5"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="19"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="5"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom15;
      <LineSymbolizer stroke="black" stroke-width="7"/>
    </Rule>
     <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='subway'</Filter>
      <LineSymbolizer stroke="black" stroke-width="5.5"/>
     </Rule>
     <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='light_rail' or [railway]='narrow_gauge'</Filter>
      <LineSymbolizer stroke="#555" stroke-width="5.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke="black" stroke-width="5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="6.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'bridleway' or ([highway] = 'path' and [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="5.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'footway' or ([highway] = 'path' and [foot] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'path' and not ([bicycle] = 'designated' or [foot] = 'designated' or [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'cycleway' or ([highway] = 'path' and [bicycle] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="5.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'byway'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="5.5"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'rail'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="black" stroke-width="6.5"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'INT-spur-siding-yard'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="black" stroke-width="5.7"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>([railway] = 'disused' or [railway] = 'abandoned' or [railway]='construction') and not [highway] != ''</Filter>
      <LineSymbolizer stroke="black" stroke-width="6"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade1'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade2'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade3'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade4'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade5'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and not [tracktype] != ''</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="black" stroke-width="4.5"/>
     </Rule>
</Style>
<Style name="bridges_casing2">
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='subway'</Filter>
      <LineSymbolizer stroke="white" stroke-width="4"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='light_rail' or [railway]='narrow_gauge'</Filter>
      <LineSymbolizer stroke="white" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'bridleway' or ([highway] = 'path' and [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'footway' or ([highway] = 'path' and [foot] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'path' and not ([bicycle] = 'designated' or [foot] = 'designated' or [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="2.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'cycleway' or ([highway] = 'path' and [bicycle] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'byway'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'rail'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="5"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'INT-spur-siding-yard'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>([railway] = 'disused' or [railway] = 'abandoned' or [railway]='construction') and not [highway] != ''</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="4.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade1'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="white" stroke-width="3.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade2'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
     <Filter>[highway] = 'track' and [tracktype] = 'grade3'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade4'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade5'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and not [tracktype] != ''</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3" stroke-linecap="round"/>
     </Rule>
</Style>
<Style name="bridges_fill">
     <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="5.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="7.5" stroke-linecap="round"/>
    </Rule>
   <Rule>
      <Filter>[highway] = 'motorway' or [highway]='motorway_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#809bc0" stroke-width="10" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="7" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="9.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway]='trunk_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#a9dba9" stroke-width="14.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="7" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="9.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway]='primary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ec989a" stroke-width="14.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="9" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="10.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#fed7a5" stroke-width="14.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="9.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' or [highway]='tertiary_link'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffffb3" stroke-width="14" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="3.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom15;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="9.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'road'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#ddd" stroke-width="14" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="3.5" stroke-linecap="round"/>
    </Rule>
   <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="7.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified'</Filter>
      &maxscale_zoom16;
      &minscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="9.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'residential' or [highway] = 'unclassified'</Filter>
      &maxscale_zoom17;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="14" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service'</Filter>
      &maxscale_zoom14;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="2" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'service'</Filter>
      &maxscale_zoom16;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="1.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom15;
      &minscale_zoom15;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="5.5" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'pedestrian'</Filter>
      &maxscale_zoom16;
      <LineSymbolizer stroke-linejoin="round" stroke="#ededed" stroke-width="8" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'runway'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#bbc" stroke-width="18"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom14;
      &minscale_zoom14;
      <LineSymbolizer stroke="#bbc" stroke-width="4"/>
    </Rule>
    <Rule>
      <Filter>[aeroway] = 'taxiway'</Filter>
      &maxscale_zoom15;
      <LineSymbolizer stroke="#bbc" stroke-width="6"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='subway'</Filter>
      <LineSymbolizer stroke="#999" stroke-width="2"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='light_rail' or [railway]='narrow_gauge'</Filter>
      <LineSymbolizer stroke="#666" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#debd9c" stroke-width="3" stroke-dasharray="2,4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'unsurfaced'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#debd9c" stroke-width="4" stroke-dasharray="4,6" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'bridleway' or ([highway] = 'path' and [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="green" stroke-width="1.5" stroke-dasharray="4,2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'footway' or ([highway] = 'path' and [foot] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="salmon" stroke-width="2.0" stroke-dasharray="1,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'path' and not ([bicycle] = 'designated' or [foot] = 'designated' or [horse] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="black" stroke-width="0.5" stroke-dasharray="6,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'cycleway' or ([highway] = 'path' and [bicycle] = 'designated')</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="blue" stroke-width="1.5" stroke-dasharray="1,3" stroke-linecap="round"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'byway'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#ffcc00" stroke-width="1.5" stroke-dasharray="3,4" stroke-linecap="round"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom13;
      <Filter>[railway] = 'rail'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#999999" stroke-width="3"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1" stroke-dasharray="8,12"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway] = 'rail'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#999999" stroke-width="3"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1" stroke-dasharray="0,11,8,1"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'INT-spur-siding-yard'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#999999" stroke-width="2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="0.8" stroke-dasharray="0,8,11,1"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>([railway] = 'disused' or [railway] = 'abandoned' or [railway]='construction') and not [highway] != ''</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="grey" stroke-width="2" stroke-dasharray="2,4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade1'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke="#b37700" stroke-width="2" stroke-opacity="0.7"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade2'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#a87000" stroke-linecap="round" stroke-dasharray="3,4" stroke-width="1.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade3'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#996600" stroke-width="2" stroke-linecap="round" stroke-opacity="0.7"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade4'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#996600" stroke-linecap="round" stroke-dasharray="4,7,1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and [tracktype] = 'grade5'</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke-opacity="0.8" stroke="#996600" stroke-linecap="round" stroke-dasharray="1,5" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'track' and not [tracktype] != ''</Filter>
      &maxscale_zoom14;
      <LineSymbolizer stroke-linejoin="round" stroke="#996600" stroke-width="1.5" stroke-dasharray="3,4" stroke-linecap="round"/>
     </Rule>
</Style>
<Style name="roads">
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom5;
      &minscale_zoom6;
      <LineSymbolizer stroke="#809bc0" stroke-width="0.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom7;
      &minscale_zoom8;
      <LineSymbolizer stroke="#809bc0" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom9;
      &minscale_zoom9;
      <LineSymbolizer stroke="#809bc0" stroke-width="1.4"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom10;
      &minscale_zoom10;
      <LineSymbolizer stroke="#809bc0" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' or [highway] = 'motorway_link'</Filter>
      &maxscale_zoom11;
      &minscale_zoom11;
      <LineSymbolizer stroke="#809bc0" stroke-width="2.5"/>
    </Rule>
    <!-- TRUNK -->
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom5;
      &minscale_zoom6;
      <LineSymbolizer stroke="#a9dba9" stroke-width="0.4"/>
    </Rule>
   <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom7;
      &minscale_zoom8;
      <LineSymbolizer stroke="#97d397" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom9;
      &minscale_zoom10;
      <LineSymbolizer stroke="#97d397" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk' or [highway] = 'trunk_link'</Filter>
      &maxscale_zoom11;
      &minscale_zoom11;
      <LineSymbolizer stroke="#97d397" stroke-width="2.5"/>
    </Rule>
   <!-- PRIMARY-->
   <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom7;
      &minscale_zoom8;
      <LineSymbolizer stroke="#ec989a" stroke-width="0.5"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom9;
      &minscale_zoom9;
      <LineSymbolizer stroke="#ec989a" stroke-width="1.2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom10;
      &minscale_zoom10;
      <LineSymbolizer stroke="#ec989a" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary' or [highway] = 'primary_link'</Filter>
      &maxscale_zoom11;
      &minscale_zoom11;
      <LineSymbolizer stroke="#ec989a" stroke-width="2.5"/>
    </Rule>
    <!-- SECONDARY -->
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom9;
      &minscale_zoom10;
      <LineSymbolizer stroke="#fecc8b" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' or [highway] = 'secondary_link'</Filter>
      &maxscale_zoom11;
      &minscale_zoom11;
      <LineSymbolizer stroke="#fecc8b" stroke-width="2"/>
    </Rule>
    <!-- RAIL -->
    <Rule>
      &maxscale_zoom6;
      &minscale_zoom8;
      <Filter>[railway] = 'rail'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="0.6"/>
    </Rule>
    <Rule>
      &maxscale_zoom9;
      &minscale_zoom9;
      <Filter>[railway] = 'rail' and not [tunnel]='yes'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom9;
      &minscale_zoom9;
      <Filter>[railway] = 'rail' and [tunnel]='yes'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="1" stroke-dasharray="5,2"/>
    </Rule>
    <Rule>
      &maxscale_zoom8;
      &minscale_zoom9;
      <Filter>[railway] = 'tram' or [railway] = 'light_rail' or [railway] = 'narrow_gauge' or [railway]='funicular'</Filter>
      <LineSymbolizer stroke="#ccc" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom10;
      &minscale_zoom12;
      <Filter>[railway] = 'rail' and not [tunnel]='yes'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="2"/>
    </Rule>
    <Rule>
      &maxscale_zoom10;
      &minscale_zoom12;
      <Filter>[railway] = 'rail' and [tunnel]='yes'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="2" stroke-dasharray="5,2"/>
    </Rule>
    <Rule>
      &maxscale_zoom10;
      &minscale_zoom12;
      <Filter>[railway] = 'tram' or [railway] = 'light_rail' or [railway] = 'narrow_gauge' or [railway]='funicular'</Filter>
      <LineSymbolizer stroke="#aaa" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom12;
      &minscale_zoom12;
      <Filter>[railway] = 'preserved'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#aaa" stroke-width="1.5"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'preserved'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#999999" stroke-width="3"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1" stroke-dasharray="0,1,8,1"/>
    </Rule>
    <Rule>
      &maxscale_zoom12;
      &minscale_zoom12;
      <Filter>[railway] = 'INT-preserved-ssy'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#aaa" stroke-width="1"/>
    </Rule>
    <Rule>
      &maxscale_zoom13;
      &minscale_zoom18;
      <Filter>[railway] = 'INT-preserved-ssy'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#999999" stroke-width="2"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="0.8" stroke-dasharray="0,1,8,1"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <Filter>[railway]='monorail'</Filter>
      <LineSymbolizer stroke-linejoin="round" stroke="#fff" stroke-width="4" stroke-linecap="round" stroke-opacity="0.4"/>
      <LineSymbolizer stroke-linejoin="round" stroke="#777" stroke-width="3.0" stroke-dasharray="2,3" stroke-linecap="round"/>
    </Rule>
</Style>
<Style name="trams">
    <Rule>
      <Filter>[railway] = 'tram'</Filter>
      &maxscale_zoom13;
      &minscale_zoom14;
      <LineSymbolizer stroke="#444" stroke-width="1"/>
    </Rule>
    <Rule>
      <Filter>[railway] = 'tram' and not [bridge]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="#444" stroke-width="2"/>
    </Rule>
    <Rule>
      <Filter>[railway] = 'tram' and [bridge]='yes'</Filter>
      &maxscale_zoom15;
      &minscale_zoom18;
      <LineSymbolizer stroke="black" stroke-width="5"/>
      <LineSymbolizer stroke="white" stroke-width="4"/>
      <LineSymbolizer stroke="#444" stroke-width="2"/>
    </Rule>
</Style>
<Style name="guideways">
<Rule>
      &maxscale_zoom13;
      &minscale_zoom13;
      <LineSymbolizer stroke-linejoin="round" stroke="#6666ff" stroke-width="3"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1" stroke-dasharray="8,12"/>
    </Rule>
    <Rule>
      &maxscale_zoom14;
      &minscale_zoom18;
      <LineSymbolizer stroke-linejoin="round" stroke="#6666ff" stroke-width="3"/>
      <LineSymbolizer stroke-linejoin="round" stroke="white" stroke-width="1" stroke-dasharray="0,11,8,1"/>
    </Rule>
</Style>
<Style name="roads-text-ref-low-zoom">
    <Rule>
      <Filter>[highway] = 'motorway' and [length] le 6</Filter>
      &maxscale_zoom10;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' and [length] = 7</Filter>
      &maxscale_zoom10;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield6.png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' and [length] = 8</Filter>
      &maxscale_zoom10;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield7.png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk'</Filter>
      &maxscale_zoom11;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/tru_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary'</Filter>
      &maxscale_zoom11;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/pri_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary'</Filter>
      &maxscale_zoom12;
      &minscale_zoom12;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/sec_shield[length].png" spacing="750" minimum-distance="40" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
</Style>
<Style name="roads-text-ref">
    <Rule>
      <Filter>[highway] = 'motorway' and [length] le 6</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' and [length] = 7</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield6.png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'motorway' and [length] = 8</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/mot_shield7.png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'trunk'</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/tru_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'primary'</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/pri_shield[length].png" spacing="750" minimum-distance="30" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'secondary' and not [bridge]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/sec_shield[length].png" spacing="750" minimum-distance="40" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>[highway] = 'tertiary' and not [bridge]='yes'</Filter>
      &maxscale_zoom13;
      &minscale_zoom18;
      <ShieldSymbolizer size="10" fill="#fff" placement="line" file="&symbols;/ter_shield[length].png" spacing="750" minimum-distance="40" fontset-name="bold-fonts">[ref]</ShieldSymbolizer>
    </Rule>
    <Rule>
      <Filter>([highway] = 'unclassified' or [highway]='residential') and not [bridge]='yes'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="#000" spacing="750" minimum-distance="18" fontset-name="bold-fonts" halo-radius="1">[ref]</TextSymbolizer>
    </Rule>
    <Rule>
      <Filter>([aeroway] = 'runway' or [aeroway]='taxiway') and not [bridge]='yes'</Filter>
      &maxscale_zoom15;
      <TextSymbolizer size="10" fill="#333" spacing="750" placement="line" minimum-distance="18" fontset-name="book-fonts" halo-radius="1">[ref]</TextSymbolizer>
    </Rule>
</Style>

*/

#roads-text-name {
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: #fed7a5;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'tertiary'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 11;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-spacing: 300;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  /* Other roads */
  [zoom >= 15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000;
    text-placement: line;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  }
  [zoom >= 17] {
      text-size: 11;
  }
}

.cliffs {
  [natural = 'cliff'][zoom >= 13] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#barriers_area {
  [zoom >= 16] {
    line-color: #444;
    line-width: 0.4;
    [barrier = 'hedge'] {
      polygon-fill: #aed1a0;
    }
  }
}

.barriers {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
}

.directions {
  [zoom >= 16] {
    [oneway = 'yes'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      b/line-width: 2;
      b/line-dasharray: 0,12,9,153;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      c/line-width: 3;
      c/line-dasharray: 0,18,2,154;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      d/line-width: 4;
      d/line-dasharray: 0,18,1,155;
      d/line-color: #6c70d5;
      d/line-join: bevel;
    }
    [oneway = '-1'] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      b/line-width: 2;
      b/line-dasharray: 0,13,9,152;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      c/line-width: 3;
      c/line-dasharray: 0,14,2,158;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      d/line-width: 4;
      d/line-dasharray: 0,15,1,158;
      d/line-color: #6c70d5;
      d/line-join: bevel;
    }
  }
}

#misc-boundaries {
  [zoom >= 7] {
    [zoom < 14] {
      polygon-opacity: 0.05;
      polygon-fill: green;
    }
    line-color: green;
    line-width: 1.5;
    line-dasharray: 4,2;
    line-opacity: 0.15;
    [zoom >= 10] {
      line-width: 3;
      line-dasharray: 6,2;
    }
  }
}

#theme-park {
  [tourism = 'theme_park'][zoom >= 13] {
    line-color: #734a08;
    line-width: 1.5;
    line-dasharray: 9,3;
    line-opacity: 0.6;
    [zoom >= 15] {
      line-width: 2.5;
    }
  }
}

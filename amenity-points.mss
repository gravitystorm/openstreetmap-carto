/*
<Style name="points">
     <Rule>
      &maxscale_zoom13;
      <Filter>[tourism]='alpine_hut'</Filter>
      <PointSymbolizer file="&symbols;/alpinehut.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='shelter'</Filter>
      <PointSymbolizer file="&symbols;/shelter2.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='atm'</Filter>
      <PointSymbolizer file="&symbols;/atm2.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='bank'</Filter>
      <PointSymbolizer file="&symbols;/bank2.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='bar'</Filter>
      <PointSymbolizer file="&symbols;/bar.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='bicycle_rental'</Filter>
      <PointSymbolizer file="&symbols;/rental_bicycle.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[amenity]='bus_stop' or [highway]='bus_stop'</Filter>
      <PointSymbolizer file="&symbols;/bus_stop_small.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='bus_stop' or [highway]='bus_stop'</Filter>
      <PointSymbolizer file="&symbols;/bus_stop.p.12.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='bus_station'</Filter>
      <PointSymbolizer file="&symbols;/bus_station.n.16.png" allow-overlap="false" placement="interior"/>
    </Rule>
    <Rule>
    &maxscale_zoom17;
    <Filter>[highway]='traffic_signals'</Filter>
    <PointSymbolizer file="&symbols;/traffic_light.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='cafe'</Filter>
      <PointSymbolizer file="&symbols;/cafe.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[tourism]='camp_site'</Filter>
      <PointSymbolizer file="&symbols;/camping.n.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[highway]='ford'</Filter>
      <PointSymbolizer file="&symbols;/transport_ford.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[tourism]='caravan_site'</Filter>
      <PointSymbolizer file="&symbols;/caravan_park.p.24.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='car_sharing'</Filter>
      <PointSymbolizer file="&symbols;/car_share.p.16.png" allow-overlap="false" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='chalet'</Filter>
      <PointSymbolizer file="&symbols;/chalet.p.16.png" placement="interior"/>
    </Rule>
     <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='cinema'</Filter>
      <PointSymbolizer file="&symbols;/cinema.p.24.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='fire_station'</Filter>
      <PointSymbolizer file="&symbols;/firestation.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='fuel'</Filter>
      <PointSymbolizer file="&symbols;/fuel.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='guest_house'</Filter>
      <PointSymbolizer file="&symbols;/guest_house.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='bed_and_breakfast'</Filter>
      <PointSymbolizer file="&symbols;/bandb.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[amenity]='hospital'</Filter>
      <PointSymbolizer file="&symbols;/hospital.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='hostel'</Filter>
      <PointSymbolizer file="&symbols;/hostel.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='hotel'</Filter>
      <PointSymbolizer file="&symbols;/hotel2.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='motel'</Filter>
      <PointSymbolizer file="&symbols;/motel.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[tourism]='information'</Filter>
      <PointSymbolizer file="&symbols;/information.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='embassy'</Filter>
      <PointSymbolizer file="&symbols;/embassy.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='library'</Filter>
      <PointSymbolizer file="&symbols;/library.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='courthouse'</Filter>
      <PointSymbolizer file="&symbols;/amenity_court.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[waterway]='lock' or [lock]='yes'</Filter>
      <PointSymbolizer file="&symbols;/lock_gate.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[man_made]='mast'</Filter>
      <PointSymbolizer file="&symbols;/communications.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[tourism]='museum'</Filter>
      <PointSymbolizer file="&symbols;/museum.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[amenity] = 'parking' and ([access] = 'public' or [access] = 'yes' or not [access] != '')</Filter>
      <PointSymbolizer file="&symbols;/parking.p.16.png" allow-overlap="false" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom15;
      <Filter>[amenity] = 'parking' and ([access] != '' and not [access] = 'public' and not [access] = 'yes')</Filter>
      <PointSymbolizer file="&symbols;/parking_private.p.16.png" allow-overlap="false" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='pharmacy'</Filter>
      <PointSymbolizer file="&symbols;/pharmacy.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='place_of_worship' and [religion] = 'christian'</Filter>
      <PointSymbolizer file="&symbols;/christian3.p.14.png" allow-overlap="false" placement="interior"/>
     </Rule>
     <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='place_of_worship' and [religion] = 'muslim'</Filter>
      <PointSymbolizer file="&symbols;/islamic3.p.16.png" allow-overlap="false" placement="interior"/>
     </Rule>
     <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='place_of_worship' and [religion] = 'sikh'</Filter>
      <PointSymbolizer file="&symbols;/sikh3.p.16.png" allow-overlap="false" placement="interior"/>
     </Rule>
     <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='place_of_worship' and [religion] = 'jewish'</Filter>
      <PointSymbolizer file="&symbols;/jewish3.p.16.png" allow-overlap="false" placement="interior"/>
     </Rule>
     <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='place_of_worship'</Filter>
      <PointSymbolizer file="&symbols;/place_of_worship3.p.16.png" allow-overlap="false" placement="interior"/>
     </Rule>
     <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='police'</Filter>
      <PointSymbolizer file="&symbols;/police.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='post_box'</Filter>
      <PointSymbolizer file="&symbols;/post_box.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='post_office'</Filter>
      <PointSymbolizer file="&symbols;/post_office.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='pub'</Filter>
      <PointSymbolizer file="&symbols;/pub.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='biergarten'</Filter>
      <PointSymbolizer file="&symbols;/biergarten.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='recycling'</Filter>
      <PointSymbolizer file="&symbols;/recycling.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='restaurant'</Filter>
      <PointSymbolizer file="&symbols;/restaurant.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='fast_food'</Filter>
      <PointSymbolizer file="&symbols;/fast_food.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='telephone'</Filter>
      <PointSymbolizer file="&symbols;/telephone.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='emergency_phone'</Filter>
      <PointSymbolizer file="&symbols;/sosphone.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='theatre'</Filter>
      <PointSymbolizer file="&symbols;/theatre.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='toilets'</Filter>
      <PointSymbolizer file="&symbols;/toilets.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[amenity]='drinking_water'</Filter>
      <PointSymbolizer file="&symbols;/food_drinkingtap.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='prison'</Filter>
      <PointSymbolizer file="&symbols;/amenity_prison.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[tourism]='viewpoint'</Filter>
      <PointSymbolizer file="&symbols;/view_point.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[man_made]='water_tower'</Filter>
      <PointSymbolizer file="&symbols;/tower_water.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[historic]='memorial'</Filter>
      <PointSymbolizer file="&symbols;/tourist_memorial.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[historic]='archaeological_site'</Filter>
      <PointSymbolizer file="&symbols;/tourist_archaeological2.glow.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[shop]='supermarket'</Filter>
      <PointSymbolizer file="&symbols;/shop_supermarket.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='bakery'</Filter>
      <PointSymbolizer file="&symbols;/shop_bakery.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='butcher'</Filter>
      <PointSymbolizer file="&symbols;/shop_butcher.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='clothes' or [shop]='fashion'</Filter>
      <PointSymbolizer file="&symbols;/shop_clothes.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='convenience'</Filter>
      <PointSymbolizer file="&symbols;/shop_convenience.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[shop]='department_store'</Filter>
      <PointSymbolizer file="&symbols;/department_store.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='doityourself'</Filter>
      <PointSymbolizer file="&symbols;/shop_diy.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='florist'</Filter>
      <PointSymbolizer file="&symbols;/florist.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='hairdresser'</Filter>
      <PointSymbolizer file="&symbols;/shop_hairdresser.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='car'</Filter>
      <PointSymbolizer file="&symbols;/shopping_car.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='car_repair'</Filter>
      <PointSymbolizer file="&symbols;/shopping_car_repair.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[shop]='bicycle'</Filter>
      <PointSymbolizer file="&symbols;/shopping_bicycle.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[leisure]='playground'</Filter>
      <PointSymbolizer file="&symbols;/playground.p.20.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom16;
      <Filter>[amenity]='picnic_site'</Filter>
      <PointSymbolizer file="&symbols;/picnic.p.16.png" placement="interior"/>
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[leisure]='slipway'</Filter>
      <PointSymbolizer file="&symbols;/transport_slipway.p.20.png" placement="interior"/>
    </Rule>
</Style>

*/
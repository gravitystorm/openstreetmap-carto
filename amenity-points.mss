@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for marsh and mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #0092da;
@transportation-text: #0066ff;
@airtransport: #8461C4;
@health-color: #da0092;
@amenity-brown: #734a08;
@man-made-icon: #555;
@landform-color: #d08f55;

@landcover-font-size: 10;
@landcover-font-size-big: 12;
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size: 25;
@landcover-wrap-width-size-big: 35;
@landcover-wrap-width-size-bigger: 45;
@landcover-face-name: @oblique-fonts;

@standard-wrap-width: 30;

/* Note that .points is also used in water-features.mss */
.points {
  [feature = 'tourism_alpine_hut'][zoom >= 13] {
    point-file: url('symbols/alpinehut.p.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_shelter'][zoom >= 16] {
    point-file: url('symbols/shelter2.p.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_atm'][zoom >= 17] {
    marker-file: url('symbols/atm.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_bank'][zoom >= 17] {
    marker-file: url('symbols/bank.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_bar'][zoom >= 17] {
    marker-file: url('symbols/bar.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_bicycle_rental'][zoom >= 17] {
    marker-file: url('symbols/rental_bicycle.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'highway_bus_stop'] {
    [zoom >= 16] {
      marker-file: url('symbols/square.svg');
      marker-fill: @transportation-icon;
      marker-placement: interior;
      marker-width: 6;
      marker-clip: false;
    }
    [zoom >= 17] {
      marker-file: url('symbols/bus_stop.12.svg');
      marker-width: 12;
    }
  }

  [feature = 'highway_elevator'][zoom >= 18] {
    [access = null],
    [access = 'yes'] {
      marker-file: url('symbols/elevator-12.svg');
      marker-fill: @transportation-icon;
      marker-placement: interior;
    }
  }

  [feature = 'amenity_bus_station'][zoom >= 16] {
    point-file: url('symbols/bus_station.n.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_taxi'][zoom >= 17] {
    marker-file: url('symbols/taxi.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'highway_traffic_signals'][zoom >= 17] {
    marker-file: url('symbols/traffic_light.svg');
    marker-fill: #0a0a0a;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_cafe'][zoom >= 17] {
    marker-file: url('symbols/cafe.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_camp_site'][zoom >= 16] {
    marker-file: url('symbols/camping.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'highway_ford'][zoom >= 16] {
    marker-file: url('symbols/ford.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_caravan_site'][zoom >= 16] {
    marker-file: url('symbols/caravan_park.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
  }

  [feature = 'amenity_car_rental'][zoom >= 17] {
    marker-file: url('symbols/rental_car.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_car_wash'][zoom >= 17] {
    marker-file: url('symbols/car_wash-14.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_chalet'][zoom >= 17] {
    point-file: url('symbols/chalet.p.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_cinema'][zoom >= 16] {
    marker-file: url('symbols/cinema.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_nightclub'][zoom >= 17] {
    marker-file: url('symbols/nightclub.14.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_fire_station'][zoom >= 16] {
    marker-file: url('symbols/firestation.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_fountain'] {
    ::basin {
      [zoom = 17] {
        marker-fill: @water-color;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-width: 10;
        marker-height: 10;
        marker-ignore-placement: true;
      }
    }
    ::nozzle {
      [zoom = 17] {
        nozzle/marker-fill: @marina-text;
        nozzle/marker-line-width: 0;
        nozzle/marker-width: 3;
        nozzle/marker-height: 3;
      }
      [zoom >= 18] {
        nozzle/marker-file: url('symbols/fountain-14.svg');
        nozzle/marker-fill: @marina-text;
        nozzle/marker-placement: interior;
        nozzle/marker-clip: false;
      }
    }
  }

  [feature = 'amenity_fuel'][zoom >= 17] {
    marker-file: url('symbols/fuel.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_guest_house'][zoom >= 17] {
    point-file: url('symbols/guest_house.p.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_hospital'][zoom >= 15] {
    marker-file: url('symbols/hospital.16.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_hostel'][zoom >= 17] {
    marker-file: url('symbols/hostel.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
  }

  [feature = 'tourism_hotel'][zoom >= 17] {
    marker-file: url('symbols/hotel.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
  }

  [feature = 'tourism_motel'][zoom >= 17] {
    marker-file: url('symbols/motel.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
  }

  [feature = 'amenity_ice_cream'][zoom >= 17] {
    marker-file: url('symbols/ice-cream-14.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_information'][zoom >= 17] {
    point-file: url('symbols/information.p.16.png');
    point-placement: interior;
  }

  [feature = 'amenity_embassy'][zoom >= 17] {
    marker-file: url('symbols/embassy.16.svg');
    marker-fill: @transportation-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_library'][zoom >= 16] {
    point-file: url('symbols/library.p.20.png');
    point-placement: interior;
  }

  [feature = 'amenity_courthouse'][zoom >= 16] {
    marker-file: url('symbols/courthouse-16.svg');
    marker-placement: interior;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_community_centre'][zoom >= 17] {
    marker-file: url('symbols/community_centre-14.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_townhall'][zoom >= 16] {
    marker-file: url('symbols/town_hall.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'man_made_mast'][zoom >= 17] {
    marker-file: url('symbols/communications.16.svg');
    marker-fill: @man-made-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_museum'][zoom >= 16] {
    marker-file: url('symbols/museum.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_parking'][way_pixels > 900],
  [feature = 'amenity_bicycle_parking'][way_pixels > 900],
  [feature = 'amenity_motorcycle_parking'][way_pixels > 900] {
    [feature = 'amenity_parking'] {
      marker-file: url('symbols/parking.svg');
    }
    [feature = 'amenity_bicycle_parking'] {
      marker-file: url('symbols/bicycle_parking.16.svg');
    }
    [feature = 'amenity_motorcycle_parking'] {
      marker-file: url('symbols/motorcycle_parking.16.svg');
    }
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
    [access != ''][access != 'public'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_pharmacy'][zoom >= 17] {
    marker-file: url('symbols/pharmacy.16.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_clinic'][zoom >= 16],
  [feature = 'amenity_doctors'][zoom >= 17] {
    marker-file: url('symbols/doctors.16.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_dentist'][zoom >= 17] {
    marker-file: url('symbols/dentist.16.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_veterinary'][zoom >= 17] {
    marker-file: url('symbols/veterinary-14.svg');
    marker-fill: @health-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_place_of_worship'][zoom >= 16] {
    marker-file: url('symbols/place_of_worship.16.svg');
    marker-fill: #000000;
    marker-placement: interior;
    marker-clip: false;
    [religion = 'christian'] {
      marker-file: url('symbols/christian.16.svg');
      [denomination = 'jehovahs_witness']{
        marker-file: url('symbols/place_of_worship.16.svg');
      }
    }
    [religion = 'muslim'] {
      marker-file: url('symbols/muslim.16.svg');
    }
    [religion = 'sikh'] {
      marker-file: url('symbols/sikhist.16.svg');
    }
    [religion = 'jewish'] {
      marker-file: url('symbols/jewish.16.svg');
    }
    [religion = 'hindu'] {
      marker-file: url('symbols/hinduist.16.svg');
    }
    [religion = 'buddhist'] {
      marker-file: url('symbols/buddhist.16.svg');
    }
    [religion = 'shinto'] {
      marker-file: url('symbols/shintoist.16.svg');
    }
    [religion = 'taoist'] {
      marker-file: url('symbols/taoist.16.svg');
    }
  }

  [feature = 'man_made_cross'][zoom >= 17],
  [feature = 'historic_wayside_cross'][zoom >= 17] {
    marker-file: url('symbols/christian.9.svg');
    marker-fill: #000000;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_police'][zoom >= 16] {
    marker-file: url('symbols/police.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_post_box'][zoom >= 17] {
    marker-file: url('symbols/post_box-12.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_post_office'][zoom >= 17] {
    marker-file: url('symbols/post_office-14.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_pub'][zoom >= 17] {
    marker-file: url('symbols/pub.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_biergarten'][zoom >= 17] {
    marker-file: url('symbols/biergarten.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_recycling'][zoom >= 17] {
    marker-file: url('symbols/recycling.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
    [access != ''][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'amenity_restaurant'][zoom >= 17],
  [feature = 'amenity_food_court'][zoom >= 17] {
    marker-file: url('symbols/restaurant.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_fast_food'][zoom >= 17] {
    marker-file: url('symbols/fast_food.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_telephone'][zoom >= 17] {
    marker-file: url('symbols/telephone.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_emergency_phone'][zoom >= 17] {
    marker-file: url('symbols/emergency_phone.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_theatre'][zoom >= 16] {
    marker-file: url('symbols/theatre.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_toilets'][zoom >= 17] {
    marker-file: url('symbols/toilets.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_drinking_water'][zoom >= 17] {
    marker-file: url('symbols/drinking_water.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_prison'][zoom >= 17] {
    marker-file: url('symbols/prison.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'tourism_viewpoint'][zoom >= 16] {
    marker-file: url('symbols/viewpoint.16.svg');
    marker-placement: interior;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'man_made_water_tower'][zoom >= 17] {
    marker-file: url('symbols/water_tower.16.svg');
    marker-fill: @man-made-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'historic_memorial'][zoom >= 17] {
    marker-file: url('symbols/tourist_memorial.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'historic_monument'][zoom >= 16] {
    marker-file: url('symbols/monument.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'historic_archaeological_site'][zoom >= 16] {
    marker-file: url('symbols/archaeological_site.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_other'][zoom >= 17] {
    marker-fill: @shop-icon;
    marker-width: 6;
    marker-line-width: 0;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_supermarket'][zoom >= 16] {
    marker-file: url('symbols/shop_supermarket.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_bag'][zoom >= 17] {
    marker-file: url('symbols/bag-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_bakery'][zoom >= 17] {
    marker-file: url('symbols/shop_bakery.16.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_beauty'][zoom >= 17] {
    marker-file: url('symbols/beauty-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_beverages'][zoom >= 17] {
    marker-file: url('symbols/beverages-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_books'][zoom >= 17] {
    marker-file: url('symbols/shop_books.16.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_butcher'][zoom >= 17] {
    marker-file: url('symbols/shop_butcher.png');
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_chemist'][zoom >= 17] {
    marker-file: url('symbols/chemist-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_clothes'],
  [feature = 'shop_fashion'] {
    [zoom >= 17] {
      marker-file: url('symbols/shop_clothes.16.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_computer'][zoom >= 17] {
    marker-file: url('symbols/computer-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_convenience'][zoom >= 17] {
    marker-file: url('symbols/shop_convenience.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_confectionery'][zoom >= 17] {
    marker-file: url('symbols/confectionery-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_cosmetics'],
  [feature = 'shop_perfumery'] {
    [zoom >= 17] {
      marker-file: url('symbols/perfumery-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_department_store'][zoom >= 16] {
    point-file: url('symbols/department_store.p.16.png');
    point-placement: interior;
  }

  [feature = 'shop_doityourself'],
  [feature = 'shop_hardware'] {
    [zoom >= 17] {
      marker-file: url('symbols/shop_diy.16.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_dry_cleaning'],
  [feature = 'shop_laundry'] {
    [zoom >= 17] {
      marker-file: url('symbols/laundry-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_fishmonger'],
  [feature = 'shop_seafood'] {
    [zoom >= 17] {
      marker-file: url('symbols/seafood-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_florist'][zoom >= 17] {
    marker-file: url('symbols/florist.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_garden_centre'][zoom >= 17] {
    marker-file: url('symbols/garden_centre-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_greengrocer'],
  [feature = 'shop_farm'] {
    [zoom >= 17] {
      marker-file: url('symbols/greengrocer-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_hairdresser'][zoom >= 17] {
    marker-file: url('symbols/shop_hairdresser.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_hifi'][zoom >= 17] {
    marker-file: url('symbols/hifi-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_ice_cream'][zoom >= 17] {
    marker-file: url('symbols/ice-cream-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_car'][zoom >= 17] {
    marker-file: url('symbols/shop_car.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_car_parts'][zoom >= 17] {
    marker-file: url('symbols/car_parts-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_car_repair'][zoom >= 17] {
    marker-file: url('symbols/shopping_car_repair.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @amenity-brown;
  }

  [feature = 'shop_bicycle'][zoom >= 17] {
    marker-file: url('symbols/shop_bicycle.16.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_pet'][zoom >= 17] {
    marker-file: url('symbols/shop_pet.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_photo'],
  [feature = 'shop_photo_studio'],
  [feature = 'shop_photography'] {
    [zoom >= 17] {
      marker-file: url('symbols/photo-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_shoes'][zoom >= 17] {
    marker-file: url('symbols/shop_shoes.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_gift'][zoom >= 17] {
    marker-file: url('symbols/shop_gift.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  
  [feature = 'shop_electronics'][zoom >= 17] {
    marker-file: url('symbols/shop_electronics.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  
  [feature = 'shop_alcohol'],
  [feature = 'shop_wine'] {
    [zoom >= 17] {
      marker-file: url('symbols/shop_alcohol.16.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }
  
  [feature = 'shop_optician'][zoom >= 17] {
    marker-file: url('symbols/shop_optician.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  
  [feature = 'shop_outdoor'][zoom >= 17] {
    marker-file: url('symbols/outdoor-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  
  [feature = 'shop_furniture'][zoom >= 17] {
    marker-file: url('symbols/shop_furniture.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }
  
  [feature = 'shop_mobile_phone'][zoom >= 17] {
    marker-file: url('symbols/shop_mobile_phone.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_motorcycle'][zoom >= 17] {
    marker-file: url('symbols/motorcycle-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_musical_instrument'][zoom >= 17] {
    marker-file: url('symbols/musical_instrument-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_kiosk'],
  [feature = 'shop_newsagent'] {
    [zoom >= 17] {
      marker-file: url('symbols/newsagent-14.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_jewelry'],
  [feature = 'shop_jewellery'] {
    [zoom >= 17] {
      marker-file: url('symbols/shop_jewelry.16.svg');
      marker-placement: interior;
      marker-clip: false;
      marker-fill: @shop-icon;
    }
  }

  [feature = 'shop_toys'][zoom >= 17] {
    marker-file: url('symbols/toys-14.svg');
    marker-fill: @shop-icon;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'shop_travel_agency'][zoom >= 17] {
    marker-file: url('symbols/travel_agency-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_stationery'][zoom >= 17] {
    marker-file: url('symbols/stationery-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'shop_variety_store'][zoom >= 17] {
    marker-file: url('symbols/variety_store-14.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @shop-icon;
  }

  [feature = 'leisure_water_park'][zoom >= 17] {
    marker-file: url('symbols/water_park.16.svg');
    marker-placement: interior;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'leisure_playground'][zoom >= 17] {
    marker-file: url('symbols/playground.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
    [access != ''][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'leisure_miniature_golf'][zoom >= 17] {
    point-file: url('symbols/miniature_golf.p.20.png');
    point-placement: interior;
  }

  [feature = 'leisure_golf_course'][zoom >= 15] {
    point-file: url('symbols/golf.p.20.png');
    point-placement: interior;
  }

  [feature = 'tourism_picnic_site'][zoom >= 16] {
    marker-file: url('symbols/picnic.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'leisure_picnic_table'][zoom >= 17] {
    marker-file: url('symbols/picnic.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'leisure_slipway'][zoom >= 17] {
    point-file: url('symbols/transport_slipway.p.20.png');
    point-placement: interior;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    marker-file: url('symbols/helipad.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @airtransport;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 10][zoom < 14] {
    marker-file: url('symbols/aerodrome.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @airtransport;
  }

  [feature = 'man_made_lighthouse'][zoom >= 15] {
    marker-file: url('symbols/lighthouse.16.svg');
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
  }

  [feature = 'natural_peak'][zoom >= 11] {
    marker-file: url('symbols/peak.svg');
    marker-fill: @landform-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'natural_volcano'][zoom >= 11] {
    marker-file: url('symbols/peak.svg');
    marker-fill: #d40000;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'natural_saddle'][zoom >= 15] {
    marker-file: url('symbols/saddle.svg');
    marker-fill: @landform-color;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'natural_cave_entrance'][zoom >= 15] {
    point-file: url('symbols/poi_cave.p.16.png');
    point-placement: interior;
  }

  [feature = 'natural_spring'][zoom >= 14] {
    marker-file: url('symbols/spring.svg');
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'power_generator']['generator:source' = 'wind'],
  [feature = 'power_generator'][power_source = 'wind'] {
    [zoom >= 15] {
      marker-file: url('symbols/power_wind-16.svg');
      marker-placement: interior;
      marker-fill: black;
      marker-clip: false;
    }
  }

  [feature = 'man_made_windmill'][zoom >= 16] {
    marker-file: url('symbols/windmill.16.svg');
    marker-placement: interior;
    marker-fill: @amenity-brown;
    marker-clip: false;
  }

  [feature = 'amenity_hunting_stand'][zoom >= 16] {
    marker-file: url('symbols/hunting-stand.16.svg');
    marker-fill: @man-made-icon;
    marker-placement: interior;
    marker-clip: false;
  }
}

.amenity-low-priority {
  [man_made = 'cross'][zoom >= 16],
  [historic = 'wayside_cross'][zoom >= 16] {
    marker-file: url('symbols/christian.9.svg');
    marker-fill: #000000;
    marker-placement: interior;
    marker-clip: false;
  }

  [amenity = 'parking'][zoom >= 17],
  [amenity = 'bicycle_parking'][zoom >= 17],
  [amenity = 'motorcycle_parking'][zoom >= 17] {
    [amenity = 'parking'] {
      marker-file: url('symbols/parking.svg');
    }
    [amenity = 'bicycle_parking'] {
      marker-file: url('symbols/bicycle_parking.16.svg');
    }
    [amenity = 'motorcycle_parking'] {
      marker-file: url('symbols/motorcycle_parking.16.svg');
    }
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
    [access != ''][access != 'public'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [railway = 'level_crossing'][zoom >= 14]::railway {
    point-file: url('symbols/level_crossing.svg');
    point-placement: interior;
    [zoom >= 16] {
      point-file: url('symbols/level_crossing2.svg');
    }
  }

  [highway = 'mini_roundabout'][zoom >= 16]::highway {
    marker-file: url('symbols/mini_roundabout.svg');
    marker-placement: interior;
    marker-clip: false;
  }

  [barrier = 'gate']::barrier {
    [zoom >= 16] {
      marker-file: url('symbols/gate.svg');
      marker-placement: interior;
      marker-clip: false;
    }
  }

  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    marker-file: url('symbols/liftgate.svg');
    marker-fill: #3f3f3f;
    marker-placement: interior;
    marker-clip: false;
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      marker-width: 3;
      marker-line-width: 0;
      marker-fill: #7d7c7c;
      marker-placement: interior;

      [zoom >= 18] {
        marker-width: 4;
      }
    }
  }

  [amenity = 'bench'][zoom >= 19]::amenity {
    marker-file: url('symbols/bench.16.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
  }

  [amenity = 'waste_basket'][zoom >= 19]::amenity {
    marker-file: url('symbols/waste_basket.10.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
  }
}

/* Note that .text is also used in water.mss */
.text-low-zoom[zoom < 10],
.text[zoom >= 10] {
  [feature = 'place_island'][zoom >= 7][way_pixels > 3000][way_pixels < 800000],
  [feature = 'place_island'][zoom >= 16][way_pixels < 800000],
  [feature = 'place_islet'][zoom >= 14][way_pixels > 3000][way_pixels < 800000],
  [feature = 'place_islet'][zoom >= 17][way_pixels < 800000] {
    text-name: "[name]";
    text-fill: #000;
    text-size: 10;
    [way_pixels > 12000] { text-size: 12; }
    [way_pixels > 48000] { text-size: 15; }
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'amenity_pub'],
  [feature = 'amenity_restaurant'],
  [feature = 'amenity_food_court'],
  [feature = 'amenity_cafe'],
  [feature = 'amenity_fast_food'],
  [feature = 'amenity_biergarten'],
  [feature = 'amenity_bar'],
  [feature = 'amenity_ice_cream'],
  [feature = 'amenity_nightclub'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: @amenity-brown;
      text-size: 10;
      text-dy: 11;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
      [feature = 'amenity_bar']{
        text-dy: 13;
      }
      [feature = 'amenity_nightclub']{
        text-dy: 12;
      }
    }
  }

  [feature = 'amenity_library'],
  [feature = 'tourism_museum'],
  [feature = 'amenity_theatre'],
  [feature = 'amenity_courthouse'],
  [feature = 'amenity_townhall'],
  [feature = 'amenity_cinema'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @amenity-brown;
      text-dy: 13;
      text-face-name: @bold-fonts;
      [feature = 'tourism_museum'] { text-face-name: @book-fonts; }
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
      [feature = 'tourism_museum'],
      [feature = 'amenity_theatre'],
      [feature = 'amenity_cinema'] {
        text-dy: 11;
      }
    }
  }

  [feature = 'amenity_car_rental'][zoom >= 17],
  [feature = 'amenity_bicycle_rental'][zoom >= 17],
  [feature = 'leisure_slipway'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @transportation-text;
    [feature = 'amenity_car_rental']     { text-dy: 10; }
    [feature = 'amenity_bicycle_rental'] { text-dy: 10; }
    [feature = 'leisure_slipway']        { text-dy: 13; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'amenity_parking'][zoom >= 10][way_pixels > 900],
  [feature = 'amenity_bicycle_parking'][zoom >= 10][way_pixels > 900],
  [feature = 'amenity_motorcycle_parking'][zoom >= 10][way_pixels > 900] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @transportation-text;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
    [feature = 'amenity_bicycle_parking'],
    [feature = 'amenity_motorcycle_parking'] {
      text-dy: 12;
    }
  }


  [feature = 'amenity_police'][zoom >= 17],
  [feature = 'amenity_car_wash'][zoom >= 17],
  [feature = 'amenity_community_centre'][zoom >= 17],
  [feature = 'amenity_fire_station'][zoom >= 17],
  [feature = 'amenity_drinking_water'][zoom >= 17],
  [feature = 'tourism_picnic_site'][zoom >= 17],
  [feature = 'leisure_picnic_table'][zoom >= 17],
  [feature = 'amenity_post_office'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @amenity-brown;
    text-dy: 10;
    [feature = 'amenity_police'] { text-dy: 11; }
    [feature = 'amenity_fire_station'] { text-dy: 11; }
    [feature = 'amenity_post_office'] { text-dy: 11; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'amenity_place_of_worship'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'natural_peak'][zoom >= 13],
  [feature = 'natural_volcano'][zoom >= 13],
  [feature = 'natural_saddle'][zoom >= 15],
  [feature = 'tourism_viewpoint'][zoom >= 16] {
    text-name: "[name]";
    text-size: 10;
    text-fill: darken(@landform-color, 30%);
    [feature = 'natural_volcano'] { text-fill: #d40000; }
    text-dy: 7;
    [feature = 'tourism_viewpoint'] { text-dy: 11; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'man_made_cross'][zoom >= 17],
  [feature = 'historic_wayside_cross'][zoom >= 17],
  [feature = 'natural_cave_entrance'][zoom >= 15],
  [feature = 'man_made_mast'][zoom >= 17],
  [feature = 'man_made_water_tower'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: black;
    [feature = 'natural_cave_entrance'],
    [feature = 'man_made_water_tower'] {
      text-dy: 11;
    }
    [feature = 'man_made_cross'],
    [feature = 'historic_wayside_cross'] {
      text-dy: 6;
    }
    [feature = 'man_made_mast']         { text-dy: 10; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'historic_memorial'][zoom >= 17],
  [feature = 'historic_monument'][zoom >= 16],
  [feature = 'historic_archaeological_site'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @amenity-brown;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'leisure_miniature_golf'][zoom >= 17],
  [feature = 'leisure_golf_course'][zoom >= 15] {
    text-name: "[name]";
    text-size: 11;
    text-fill: darken(@park, 60%);
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-placement: interior;
    text-dy: 13;
    text-wrap-width: 40;
  }

  [feature = 'leisure_water_park'] {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 11;
      text-fill: darken(@park, 60%);
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
    }
  }

  [feature = 'leisure_swimming_pool'][is_building = 'no'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'leisure_playground'] {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 11;
      text-dy: 13;
      text-fill: darken(@park, 60%);
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
      [access != ''][access != 'yes'] {
        text-fill: darken(@park, 50%);
      }
    }
  }

  [feature = 'landuse_military'],
  [feature = 'natural_wood'],
  [feature = 'landuse_forest'],
  [feature = 'boundary_national_park'],
  [feature = 'leisure_nature_reserve'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17] {  
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
      [feature = 'landuse_military'] {
        text-fill: darken(@military, 40%);
      }
      [feature = 'natural_wood'],
      [feature = 'landuse_forest'] {
        text-fill: @forest-text;
      }
      [feature = 'boundary_national_park'],
      [feature = 'leisure_nature_reserve'] {
        text-fill: darken(@park, 70%);
      }
    }
  }

  [feature = 'military_danger_area'][is_building = 'no'] {
    [zoom >= 9][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: darken(@danger_area, 40%);
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'landuse_garages'][is_building = 'no'] {
    [zoom >= 13][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: darken(@garages, 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'natural_wetland'],
  [feature = 'natural_marsh'],
  [feature = 'natural_mud'],
  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'],
  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_village_green'],
  [feature = 'leisure_common'],
  [feature = 'leisure_garden'],
  [feature = 'landuse_quarry'],
  [feature = 'landuse_vineyard'],
  [feature = 'landuse_orchard'],
  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'],
  [feature = 'landuse_residential'],
  [feature = 'landuse_meadow'],
  [feature = 'natural_grassland'],
  [feature = 'landuse_grass'],
  [feature = 'landuse_allotments'],
  [feature = 'landuse_farmyard'],
  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'],
  [feature = 'landuse_greenhouse_horticulture'],
  [feature = 'shop_mall'],
  [feature = 'landuse_retail'],
  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'],
  [feature = 'landuse_commercial'],
  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_theme_park'],
  [feature = 'tourism_zoo'],
  [feature = 'tourism_attraction'],
  [feature = 'amenity_kindergarten'],
  [feature = 'amenity_school'],
  [feature = 'amenity_college'],
  [feature = 'amenity_university'],
  [feature = 'natural_heath'],
  [feature = 'natural_scrub'],
  [feature = 'natural_beach'],
  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'],
  [feature = 'leisure_track'],
  [feature = 'leisure_pitch'] {
    [zoom >= 10][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'],
    [zoom >= 10][way_pixels > 3000][feature = 'shop_mall'],
    [zoom >= 17][feature = 'shop_mall'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
      [feature = 'natural_wetland'],
      [feature = 'natural_marsh'],
      [feature = 'natural_mud'] {
        text-fill: @wetland-text;
      }
      [feature = 'leisure_park'],
      [feature = 'leisure_recreation_ground'],
      [feature = 'landuse_recreation_ground'],
      [feature = 'landuse_village_green'],
      [feature = 'leisure_common'],
      [feature = 'leisure_garden'] {
        text-fill: darken(@park, 60%);
      }
      [feature = 'landuse_quarry'] {
        text-fill: darken(@quarry, 60%);
      }
      [feature = 'landuse_vineyard'],
      [feature = 'landuse_orchard'] {
        text-fill: darken(@orchard, 50%);
      }
      [feature = 'landuse_cemetery'],
      [feature = 'amenity_grave_yard'] {
        text-fill: darken(@cemetery, 50%);
        text-halo-radius: 1.5; /* extra halo needed to overpower the cemetery polygon pattern */
      }
      [feature = 'landuse_residential'] {
        text-fill: darken(@residential, 50%);
      }
      [feature = 'landuse_meadow'],
      [feature = 'natural_grassland'],
      [feature = 'landuse_grass'] {
        text-fill: darken(@grass, 50%);
      }
      [feature = 'landuse_allotments'] {
        text-fill: darken(@allotments, 50%);
      }
      [feature = 'landuse_farmyard'] {
        text-fill: darken(@farmyard, 50%);
      }
      [feature = 'landuse_farm'],
      [feature = 'landuse_farmland'],
      [feature = 'landuse_greenhouse_horticulture'] {
        text-fill: darken(@farmland, 50%);
      }
      [feature = 'shop_mall'],
      [feature = 'landuse_retail'] {
        text-fill: darken(@retail, 50%);
      }
      [feature = 'landuse_industrial'],
      [feature = 'landuse_railway'] {
        text-fill: darken(@industrial, 60%);
      }
      [feature = 'landuse_commercial'] {
        text-fill: darken(@commercial, 60%);
      }
      [feature = 'landuse_brownfield'],
      [feature = 'landuse_landfill'],
      [feature = 'landuse_construction'] {
        text-fill: darken(@construction, 50%);
      }
      [feature = 'tourism_caravan_site'] {
        text-fill: darken(@campsite, 50%);
        text-dy: 15;
      }
      [feature = 'tourism_theme_park'],
      [feature = 'tourism_zoo'] {
        text-fill: @tourism;
        text-face-name: @bold-fonts; /*rendered bold to improve visibility since theme parks tend to have crowded backgrounds*/
      }
      [feature = 'tourism_attraction'] {
        text-fill: #660033;
        text-face-name: @book-fonts;
      }
      [feature = 'amenity_kindergarten'],
      [feature = 'amenity_school'],
      [feature = 'amenity_college'],
      [feature = 'amenity_university'] {
        text-fill: darken(@educational_areas_and_hospital, 70%);
      }
      [feature = 'natural_heath'] {
        text-fill: darken(@heath, 40%);
      }
      [feature = 'natural_scrub'] {
        text-fill: darken(@scrub, 60%);
      }
      [feature = 'natural_beach'] {
        text-fill: darken(@beach, 60%);
      }
      [feature = 'leisure_sports_centre'],
      [feature = 'leisure_stadium'] {
        text-fill: darken(@stadium, 30%);
      }
      [feature = 'leisure_track'] {
        text-fill: darken(@track, 40%);
      }
      [feature = 'leisure_pitch'] {
        text-fill: darken(@pitch, 40%);
      }
    }
  }

  [feature = 'natural_bay'][zoom >= 14],
  [feature = 'natural_spring'][zoom >= 16] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @water-text;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
    [feature = 'natural_spring'] {
      text-dy: 6;
    }
  }

  [feature = 'amenity_bank'][zoom >= 17],
  [feature = 'amenity_atm'][zoom >= 17] {
    text-name: "[name]";
    [feature = 'amenity_atm'] {
      text-name: "[operator]";
    }
    text-size: 10;
    [feature = 'amenity_bank'] { text-dy: 9; }
    [feature = 'amenity_atm']  { text-dy: 10; }
    text-fill: @amenity-brown;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
    text-face-name: @book-fonts;
  }

  [feature = 'tourism_alpine_hut'][zoom >= 15],
  [feature = 'amenity_shelter'][zoom >= 17],
  [feature = 'tourism_hotel'][zoom >= 17],
  [feature = 'tourism_motel'][zoom >= 17],
  [feature = 'tourism_hostel'][zoom >= 17],
  [feature = 'tourism_chalet'][zoom >= 17],
  [feature = 'tourism_guest_house'][zoom >= 17],
  [feature = 'tourism_camp_site'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
    [feature = 'tourism_motel'] {
      text-dy: 13;
    }
    [feature = 'tourism_camp_site'] {
      text-dy: 15;
    }
  }

  [feature = 'amenity_embassy'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'amenity_taxi'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'highway_bus_stop'],
  [feature = 'amenity_fuel'],
  [feature = 'amenity_bus_station'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @transportation-text;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
      [feature = 'highway_bus_stop'] {
        text-dy: 9;
      }
    }
  }

  [feature = 'leisure_marina'][zoom >= 15] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'amenity_fountain'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @marina-text;
    text-dy: 4;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
    [zoom >= 18] {
      text-dy: 10;
    }
  }


  [feature = 'amenity_prison'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @amenity-brown;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }


  [feature = 'man_made_lighthouse'][zoom >= 15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @transportation-text;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'man_made_windmill'][zoom >= 17],
  [feature = 'amenity_recycling'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @amenity-brown;
    text-dy: 12;
    [feature = 'amenity_recycling'] { text-dy: 10; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'amenity_hospital'][zoom >= 16] {
    text-name: "[name]";
    text-fill: @health-color;
    text-size: 8;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }


  [feature = 'amenity_clinic'],
  [feature = 'amenity_pharmacy'],
  [feature = 'amenity_doctors'],
  [feature = 'amenity_dentist'],
  [feature = 'amenity_veterinary'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 8;
      text-dy: 12;
      text-fill: @health-color;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
    }
  }

  [feature = 'shop_bag'],
  [feature = 'shop_bakery'],
  [feature = 'shop_beauty'],
  [feature = 'shop_beverages'],
  [feature = 'shop_books'],
  [feature = 'shop_clothes'],
  [feature = 'shop_computer'],
  [feature = 'shop_fashion'],
  [feature = 'shop_convenience'],
  [feature = 'shop_confectionery'],
  [feature = 'shop_doityourself'],
  [feature = 'shop_dry_cleaning'],
  [feature = 'shop_hardware'],
  [feature = 'shop_hairdresser'],
  [feature = 'shop_hifi'],
  [feature = 'shop_ice_cream'],
  [feature = 'shop_butcher'],
  [feature = 'shop_car'],
  [feature = 'shop_car_repair'],
  [feature = 'shop_car_parts'],
  [feature = 'shop_cosmetics'],
  [feature = 'shop_bicycle'],
  [feature = 'shop_farm'],
  [feature = 'shop_fishmonger'],
  [feature = 'shop_florist'],
  [feature = 'shop_garden_centre'],
  [feature = 'shop_greengrocer'],
  [feature = 'shop_pet'],
  [feature = 'shop_photo'],
  [feature = 'shop_photo_studio'],
  [feature = 'shop_photography'],
  [feature = 'shop_shoes'],
  [feature = 'shop_gift'],
  [feature = 'shop_electronics'],
  [feature = 'shop_alcohol'],
  [feature = 'shop_optician'],
  [feature = 'shop_outdoor'],
  [feature = 'shop_perfumery'],
  [feature = 'shop_furniture'],
  [feature = 'shop_kiosk'],
  [feature = 'shop_mobile_phone'],
  [feature = 'shop_motorcycle'],
  [feature = 'shop_musical_instrument'],
  [feature = 'shop_newsagent'],
  [feature = 'shop_jewelry'],
  [feature = 'shop_jewellery'],
  [feature = 'shop_laundry'],
  [feature = 'shop_chemist'],
  [feature = 'shop_toys'],
  [feature = 'shop_travel_agency'],
  [feature = 'shop_seafood'],
  [feature = 'shop_stationery'],
  [feature = 'shop_variety_store'],
  [feature = 'shop_wine'],
  [feature = 'shop_other']{
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
      [feature = 'shop_car_repair'] {
        text-fill: @amenity-brown;
      }
    }
  }

  [feature = 'shop_supermarket'],
  [feature = 'shop_department_store'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 10;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-wrap-width: @standard-wrap-width;
      text-placement: interior;
    }
  }

  [feature = 'aeroway_gate'][zoom >= 17] {
    text-name: "[ref]";
    text-size: 10;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }

  [feature = 'power_plant'][is_building = 'no'][zoom >= 10],
  [feature = 'power_station'][is_building = 'no'][zoom >= 10],
  [feature = 'power_generator'][is_building = 'no'][zoom >= 10],
  [feature = 'power_sub_station'][is_building = 'no'][zoom >= 13],
  [feature = 'power_substation'][is_building = 'no'][zoom >= 13]{
    [way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: darken(@power, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'natural_scree'],
  [feature = 'natural_shingle'],
  [feature = 'natural_bare_rock'],
  [feature = 'natural_sand'] {
    [zoom >= 9][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
      [feature = 'natural_scree'],
      [feature = 'natural_shingle'],
      [feature = 'natural_bare_rock'] {
        text-fill: darken(@bare_ground, 50%);
      }
      [feature = 'natural_sand'] {
        text-fill: darken(@sand, 50%);
      }
    }
  }

  [feature = 'aeroway_apron'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: darken(@apron, 60%);
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'highway_services'][is_building = 'no'],
  [feature = 'highway_rest_area'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: darken(@rest_area, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'natural_glacier'][is_building = 'no'] {
    [zoom >= 8][way_pixels > 10000],
    [zoom >= 10][way_pixels > 750],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      [way_pixels > 12000] { text-size: @landcover-font-size-big; }
      [way_pixels > 48000] { text-size: @landcover-font-size-bigger; }
      text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: 1;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: @landcover-wrap-width-size;
      [way_pixels > 12000] {text-wrap-width: @landcover-wrap-width-size-big; }
      [way_pixels > 48000] {text-wrap-width: @landcover-wrap-width-size-bigger; }
      text-placement: interior;
    }
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    text-name: "[name]";
    text-size: 8;
    text-fill: @airtransport;
    text-dy: -10;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 10][zoom < 14] {
    text-name: "[name]";
    text-size: 8;
    text-fill: darken(@airtransport, 15%);
    text-dy: -10;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }

  [feature = 'amenity_hunting_stand'][zoom >= 17] {
    text-name: "[name]";
    text-size: 10;
    text-dy: 11;
    text-fill: @man-made-icon;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }

  [feature = 'natural_tree'][zoom >= 17] {
    text-name: "[name]";
    text-size: 9;
    text-fill: green;
    text-dy: 7;
    [zoom >= 18] { text-dy: 8; }
    [zoom >= 19] { text-dy: 11; }
    [zoom >= 20] { text-dy: 18; }
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-placement: interior;
    text-wrap-width: @standard-wrap-width;
  }
}

#trees [zoom >= 16] {
  ::canopy {
    opacity: 0.3;
    [natural = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 17] {
        line-width: 5;
      }
      [zoom >= 18] {
        line-width: 10;
      }
      [zoom >= 19] {
        line-width: 15;
      }
      [zoom >= 20] {
        line-width: 30;
      }
    }
    [natural = 'tree'] {
      marker-fill: green;
      marker-allow-overlap: true;
      marker-line-width: 0;
      marker-width: 2.5;
      marker-height: 2.5;
      marker-ignore-placement: true;
      [zoom >= 17] {
        marker-width: 5;
        marker-height: 5;
      }
      [zoom >= 18] {
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 19] {
        marker-width: 15;
        marker-height: 15;
      }
      [zoom >= 20] {
        marker-width: 30;
        marker-height: 30;
      }
    }
  }
  [natural = 'tree']::trunk {
    [zoom >= 18] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;
    }
  }
}


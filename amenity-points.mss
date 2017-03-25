@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for marsh and mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #0092da;
@transportation-text: #0066ff;
@airtransport: #8461c4;
@health-color: #da0092;
@amenity-brown: #734a08;
@man-made-icon: #555;
@landform-color: #d08f55;

@standard-wrap-width: 30;
@standard-text-size: 10;
@standard-font: @book-fonts;

/* Note that .points is also used in water-features.mss */
.points {
  // markers with text (shields)

  [feature = 'tourism_alpine_hut'][zoom >= 14],
  [feature = 'tourism_wilderness_hut'][zoom >= 14],
  [feature = 'amenity_shelter'][zoom >= 17],
  [feature = 'amenity_atm'][zoom >= 17],
  [feature = 'amenity_bank'][zoom >= 17],
  [feature = 'amenity_bar'][zoom >= 17],
  [feature = 'amenity_bicycle_rental'][zoom >= 17],
  [feature = 'amenity_taxi'][zoom >= 17],
  [feature = 'amenity_bus_station'][zoom >= 17],
  [feature = 'amenity_cafe'][zoom >= 17],
  [feature = 'tourism_artwork'][zoom >= 17],
  [feature = 'amenity_cinema'][zoom >= 17],
  [feature = 'highway_bus_stop'][zoom >= 17],
  [feature = 'amenity_car_rental'][zoom >= 17],
  [feature = 'amenity_car_wash'][zoom >= 17],
  [feature = 'tourism_chalet'][zoom >= 17],
  [feature = 'amenity_nightclub'][zoom >= 17],
  [feature = 'amenity_fire_station'][zoom >= 17],
  [feature = 'amenity_charging_station'][zoom >= 17],
  [feature = 'amenity_fuel'][zoom >= 17],
  [feature = 'tourism_guest_house'][zoom >= 17],
  [feature = 'amenity_hospital'][zoom >= 16],
  [feature = 'tourism_hostel'][zoom >= 17],
  [feature = 'tourism_hotel'][zoom >= 17],
  [feature = 'tourism_motel'][zoom >= 17],
  [feature = 'amenity_ice_cream'][zoom >= 17],
  [feature = 'amenity_embassy'][zoom >= 17],
  [feature = 'amenity_library'][zoom >= 17],
  [feature = 'amenity_courthouse'][zoom >= 17],
  [feature = 'amenity_community_centre'][zoom >= 17],
  [feature = 'amenity_social_facility'][zoom >= 17],
  [feature = 'amenity_townhall'][zoom >= 17],
  [feature = 'tourism_museum'][zoom >= 17],
  [feature = 'man_made_mast'][zoom >= 17],
  [feature = 'amenity_pharmacy'][zoom >= 17],
  [feature = 'amenity_clinic'][zoom >= 17],
  [feature = 'amenity_doctors'][zoom >= 17],
  [feature = 'amenity_dentist'][zoom >= 17],
  [feature = 'amenity_veterinary'][zoom >= 17],
  [feature = 'amenity_place_of_worship'][zoom >= 17],
  [feature = 'man_made_cross'][zoom >= 17],
  [feature = 'historic_wayside_cross'][zoom >= 17],
  [feature = 'amenity_police'][zoom >= 17],
  [feature = 'amenity_post_office'][zoom >= 17],
  [feature = 'amenity_pub'][zoom >= 17],
  [feature = 'amenity_biergarten'][zoom >= 17],
  [feature = 'amenity_restaurant'][zoom >= 17],
  [feature = 'amenity_food_court'][zoom >= 17],
  [feature = 'amenity_fast_food'][zoom >= 17],
  [feature = 'amenity_recycling'][zoom >= 17],
  [feature = 'amenity_theatre'][zoom >= 17],
  [feature = 'amenity_arts_centre'][zoom >= 17],
  [feature = 'amenity_drinking_water'][zoom >= 17],
  [feature = 'amenity_prison'][zoom >= 17],
  [feature = 'tourism_viewpoint'][zoom >= 16],
  [feature = 'man_made_water_tower'][zoom >= 17],
  [feature = 'historic_memorial'][zoom >= 17],
  [feature = 'man_made_obelisk'][zoom >= 16],
  [feature = 'historic_monument'][zoom >= 16],
  [feature = 'historic_archaeological_site'][zoom >= 17],
  [feature = 'leisure_picnic_table'][zoom >= 17],
  [feature = 'leisure_slipway'][zoom >= 17],
  [feature = 'man_made_lighthouse'][zoom >= 15],
  [feature = 'natural_peak'][zoom >= 13],
  [feature = 'natural_volcano'][zoom >= 13],
  [feature = 'natural_saddle'][zoom >= 15],
  [feature = 'natural_cave_entrance'][zoom >= 15],
  [feature = 'natural_spring'][zoom >= 16],
  [feature = 'man_made_windmill'][zoom >= 17],
  [feature = 'amenity_hunting_stand'][zoom >= 17],
  [feature = 'leisure_miniature_golf'][zoom >= 17],
  [feature = 'leisure_golf_course'][zoom >= 15],
  [feature = 'aeroway_helipad'][zoom >= 16],
  [feature = 'aeroway_aerodrome'][zoom >= 10][zoom < 14],
  [feature = 'tourism_caravan_site'][zoom >= 16],
  [feature = 'tourism_picnic_site'][zoom >= 16],
  [feature = 'tourism_camp_site'][zoom >= 17],
  [feature = 'leisure_water_park'][zoom >= 17],
  [feature = 'leisure_dog_park'][zoom >= 17],
  [feature = 'leisure_playground'][zoom >= 17] {
    shield-placement: interior;
    shield-clip: false;
    shield-name: "[name]";
    shield-size: @standard-text-size;
    shield-face-name: @standard-font;
    shield-halo-radius: @standard-halo-radius;
    shield-halo-fill: @standard-halo-fill;
    shield-wrap-width: @standard-wrap-width;
    shield-fill: @amenity-brown;
    shield-text-dy: 11;
    shield-unlock-image: true;

    // second pass for icons without text where there is still space
    a/marker-fill: @amenity-brown;
    a/marker-placement: interior;
    a/marker-clip: false;

    [feature = 'tourism_alpine_hut'] {
      shield-file: url('symbols/alpinehut.p.16.png');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/alpinehut.p.16.png');
    }
    [feature = 'tourism_wilderness_hut'] {
      shield-file: url('symbols/wilderness_hut.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/wilderness_hut.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_shelter'] {
      shield-file: url('symbols/shelter.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/shelter.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_atm'] {
      shield-file: url('symbols/atm.svg');
      shield-name: "[operator]";
      a/marker-file: url('symbols/atm.svg');
    }
    [feature = 'amenity_bank'] {
      shield-file: url('symbols/bank.svg');
      a/marker-file: url('symbols/bank.svg');
    }
    [feature = 'amenity_bar'] {
      shield-file: url('symbols/bar.svg');
      a/marker-file: url('symbols/bar.svg');
    }
    [feature = 'amenity_bicycle_rental'] {
      shield-file: url('symbols/rental_bicycle.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/rental_bicycle.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_taxi'] {
      shield-file: url('symbols/taxi.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/taxi.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_bus_station'] {
      shield-file: url('symbols/bus_station.n.16.png');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/bus_station.n.16.png');
    }
    [feature = 'amenity_cafe'] {
      shield-file: url('symbols/cafe.svg');
      a/marker-file: url('symbols/cafe.svg');
    }
    [feature = 'tourism_artwork'] {
      shield-file: url('symbols/artwork.svg');
      a/marker-file: url('symbols/artwork.svg');
    }
    [feature = 'amenity_cinema'] {
      shield-file: url('symbols/cinema.svg');
      a/marker-file: url('symbols/cinema.svg');
    }
    [feature = 'highway_bus_stop'] {
      shield-file: url('symbols/bus_stop.12.svg');
      shield-fill: @transportation-text;
      shield-text-dy: 9;
      a/marker-file: url('symbols/bus_stop.12.svg');
      a/marker-fill: @transportation-icon;
      a/marker-width: 12;
    }
    [feature = 'amenity_car_rental'] {
      shield-file: url('symbols/rental_car.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/rental_car.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_car_wash'] {
      shield-file: url('symbols/car_wash.svg');
      a/marker-file: url('symbols/car_wash.svg');
    }
    [feature = 'tourism_chalet'] {
      shield-file: url('symbols/chalet.p.16.png');
      a/marker-file: url('symbols/chalet.p.16.png');
    }
    [feature = 'amenity_nightclub'] {
      shield-file: url('symbols/nightclub.svg');
      a/marker-file: url('symbols/nightclub.svg');
    }
    [feature = 'amenity_fire_station'] {
      shield-file: url('symbols/firestation.svg');
      a/marker-file: url('symbols/firestation.svg');
    }
    [feature = 'amenity_charging_station'] {
      shield-file: url('symbols/charging_station.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/charging_station.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_fuel'] {
      shield-file: url('symbols/fuel.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/fuel.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'tourism_guest_house'] {
      shield-file: url('symbols/guest_house.p.16.png');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/guest_house.p.16.png');
    }
    [feature = 'amenity_hospital'] {
      shield-file: url('symbols/hospital.svg');
      shield-fill: @health-color;
      a/marker-file: url('symbols/hospital.svg');
      a/marker-fill: @health-color;
    }
    [feature = 'tourism_hostel'] {
      shield-file: url('symbols/hostel.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/hostel.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'tourism_hotel'] {
      shield-file: url('symbols/hotel.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/hotel.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'tourism_motel'] {
      shield-file: url('symbols/motel.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/motel.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_ice_cream'] {
      shield-file: url('symbols/ice_cream.svg');
      a/marker-file: url('symbols/ice_cream.svg');
    }
    [feature = 'amenity_embassy'] {
      shield-file: url('symbols/embassy.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/embassy.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'amenity_library'] {
      shield-file: url('symbols/library.svg');
      a/marker-file: url('symbols/library.svg');
    }
    [feature = 'amenity_courthouse'] {
      shield-file: url('symbols/courthouse.svg');
      a/marker-file: url('symbols/courthouse.svg');
    }
    [feature = 'amenity_community_centre'] {
      shield-file: url('symbols/community_centre.svg');
      a/marker-file: url('symbols/community_centre.svg');
    }
    [feature = 'amenity_social_facility'] {
      shield-file: url('symbols/social_facility.svg');
      a/marker-file: url('symbols/social_facility.svg');
    }
    [feature = 'amenity_townhall'] {
      shield-file: url('symbols/town_hall.svg');
      a/marker-file: url('symbols/town_hall.svg');
    }
    [feature = 'tourism_museum'] {
      shield-file: url('symbols/museum.svg');
      a/marker-file: url('symbols/museum.svg');
    }
    [feature = 'man_made_mast'] {
      shield-file: url('symbols/communications.svg');
      shield-fill: @man-made-icon;
      a/marker-file: url('symbols/communications.svg');
      a/marker-fill: @man-made-icon;
    }
    [feature = 'amenity_pharmacy'] {
      shield-file: url('symbols/pharmacy.svg');
      shield-fill: @health-color;
      a/marker-file: url('symbols/pharmacy.svg');
      a/marker-fill: @health-color;
    }
    [feature = 'amenity_clinic'],
    [feature = 'amenity_doctors'] {
      shield-file: url('symbols/doctors.svg');
      shield-fill: @health-color;
      a/marker-file: url('symbols/doctors.svg');
      a/marker-fill: @health-color;
    }
    [feature = 'amenity_dentist'] {
      shield-file: url('symbols/dentist.svg');
      shield-fill: @health-color;
      a/marker-file: url('symbols/dentist.svg');
      a/marker-fill: @health-color;
    }
    [feature = 'amenity_veterinary'] {
      shield-file: url('symbols/veterinary.svg');
      shield-fill: @health-color;
      a/marker-file: url('symbols/veterinary.svg');
      a/marker-fill: @health-color;
    }
    [feature = 'amenity_place_of_worship'] {
      shield-fill: black;
      a/marker-fill: black;
      shield-file: url('symbols/place_of_worship.svg');
      a/marker-file: url('symbols/place_of_worship.svg');
      [religion = 'christian'] {
        shield-file: url('symbols/christian.svg');
        a/marker-file: url('symbols/christian.svg');
        [denomination = 'jehovahs_witness']{
          shield-file: url('symbols/place_of_worship.svg');
          a/marker-file: url('symbols/place_of_worship.svg');
        }
      }
      [religion = 'muslim'] {
        shield-file: url('symbols/muslim.svg');
        a/marker-file: url('symbols/muslim.svg');
      }
      [religion = 'sikh'] {
        shield-file: url('symbols/sikhist.svg');
        a/marker-file: url('symbols/sikhist.svg');
      }
      [religion = 'jewish'] {
        shield-file: url('symbols/jewish.svg');
        a/marker-file: url('symbols/jewish.svg');
      }
      [religion = 'hindu'] {
        shield-file: url('symbols/hinduist.svg');
        a/marker-file: url('symbols/hinduist.svg');
      }
      [religion = 'buddhist'] {
        shield-file: url('symbols/buddhist.svg');
        a/marker-file: url('symbols/buddhist.svg');
      }
      [religion = 'shinto'] {
        shield-file: url('symbols/shintoist.svg');
        a/marker-file: url('symbols/shintoist.svg');
      }
      [religion = 'taoist'] {
        shield-file: url('symbols/taoist.svg');
        a/marker-file: url('symbols/taoist.svg');
      }
    }
    [feature = 'man_made_cross'],
    [feature = 'historic_wayside_cross'] {
      shield-file: url('symbols/christian.9.svg');
      shield-fill: black;
      shield-text-dy: 8;
      a/marker-file: url('symbols/christian.9.svg');
      a/marker-fill: black;
    }
    [feature = 'amenity_police'] {
      shield-file: url('symbols/police.svg');
      a/marker-file: url('symbols/police.svg');
    }
    [feature = 'amenity_post_office'] {
      shield-file: url('symbols/post_office.svg');
      a/marker-file: url('symbols/post_office.svg');
    }
    [feature = 'amenity_pub'] {
      shield-file: url('symbols/pub.svg');
      a/marker-file: url('symbols/pub.svg');
    }
    [feature = 'amenity_biergarten'] {
      shield-file: url('symbols/biergarten.svg');
      a/marker-file: url('symbols/biergarten.svg');
    }
    [feature = 'amenity_restaurant'],
    [feature = 'amenity_food_court'] {
      shield-file: url('symbols/restaurant.svg');
      a/marker-file: url('symbols/restaurant.svg');
    }
    [feature = 'amenity_fast_food'] {
      shield-file: url('symbols/fast_food.svg');
      a/marker-file: url('symbols/fast_food.svg');
    }
    [feature = 'amenity_recycling'] {
      shield-file: url('symbols/recycling.svg');
      a/marker-file: url('symbols/recycling.svg');
      [access != ''][access != 'permissive'][access != 'yes'] {
        shield-opacity: 0.33;
        a/marker-opacity: 0.33;
      }
    }
    [feature = 'amenity_theatre'] {
      shield-file: url('symbols/theatre.svg');
      a/marker-file: url('symbols/theatre.svg');
    }
    [feature = 'amenity_arts_centre'] {
      shield-file: url('symbols/arts_centre.svg');
      a/marker-file: url('symbols/arts_centre.svg');
    }
    [feature = 'amenity_drinking_water'] {
      shield-file: url('symbols/drinking_water.svg');
      a/marker-file: url('symbols/drinking_water.svg');
    }
    [feature = 'amenity_prison'] {
      shield-file: url('symbols/prison.svg');
      a/marker-file: url('symbols/prison.svg');
    }
    [feature = 'tourism_viewpoint'] {
      shield-file: url('symbols/viewpoint.svg');
      a/marker-file: url('symbols/viewpoint.svg');
    }
    [feature = 'man_made_water_tower'] {
      shield-file: url('symbols/water_tower.svg');
      a/marker-file: url('symbols/water_tower.svg');
    }
    [feature = 'historic_memorial'] {
      shield-file: url('symbols/memorial.svg');
      a/marker-file: url('symbols/memorial.svg');
    }
    [feature = 'man_made_obelisk'],
    [feature = 'historic_monument'] {
      shield-file: url('symbols/monument.svg');
      a/marker-file: url('symbols/monument.svg');
    }
    [feature = 'historic_archaeological_site'] {
      shield-file: url('symbols/archaeological_site.svg');
      a/marker-file: url('symbols/archaeological_site.svg');
    }
    [feature = 'leisure_picnic_table'],
    [feature = 'tourism_picnic_site'] {
      shield-file: url('symbols/picnic.svg');
      a/marker-file: url('symbols/picnic.svg');
    }
    [feature = 'leisure_slipway'] {
      shield-file: url('symbols/transport_slipway.p.20.png');
      shield-fill: @transportation-text;
      shield-text-dy: 13;
      a/marker-file: url('symbols/transport_slipway.p.20.png');
    }
    [feature = 'man_made_lighthouse'] {
      shield-file: url('symbols/lighthouse.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/lighthouse.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'natural_peak'] {
      shield-file: url('symbols/peak.svg');
      shield-fill: darken(@landform-color, 30%);
      shield-text-dy: 8;
      a/marker-file: url('symbols/peak.svg');
      a/marker-fill: @landform-color;
    }
    [feature = 'natural_volcano'] {
      shield-file: url('symbols/volcano.svg');
      shield-fill: #d40000;
      shield-text-dy: 8;
      a/marker-file: url('symbols/volcano.svg');
      a/marker-fill: #d40000;
    }
    [feature = 'natural_saddle'] {
      shield-file: url('symbols/saddle.svg');
      shield-fill: darken(@landform-color, 30%);
      shield-text-dy: 8;
      a/marker-file: url('symbols/saddle.svg');
      a/marker-fill: @landform-color;
    }
    [feature = 'natural_cave_entrance'] {
      shield-file: url('symbols/cave.svg');
      shield-fill: black;
      a/marker-file: url('symbols/cave.svg');
      a/marker-fill: black;
    }
    [feature = 'natural_spring'] {
      shield-file: url('symbols/spring.svg');
      shield-fill: @water-text;
      shield-text-dy: 8;
      a/marker-file: url('symbols/spring.svg');
    }
    [feature = 'man_made_windmill'] {
      shield-file: url('symbols/windmill.svg');
      a/marker-file: url('symbols/windmill.svg');
    }
    [feature = 'amenity_hunting_stand'] {
      shield-file: url('symbols/hunting_stand.svg');
      shield-fill: @man-made-icon;
      a/marker-file: url('symbols/hunting_stand.svg');
      a/marker-fill: @man-made-icon;
    }
    [feature = 'leisure_miniature_golf'] {
      shield-file: url('symbols/miniature_golf.p.20.png');
      shield-fill: darken(@park, 60%);
      shield-text-dy: 13;
      a/marker-file: url('symbols/miniature_golf.p.20.png');
    }
    [feature = 'leisure_golf_course'] {
      shield-file: url('symbols/golf.p.20.png');
      shield-fill: darken(@park, 60%);
      shield-text-dy: 13;
      a/marker-file: url('symbols/golf.p.20.png');
    }
    [feature = 'aeroway_helipad'] {
      shield-file: url('symbols/helipad.16.svg');
      shield-fill: darken(@airtransport, 15%);
      shield-text-dy: -11;
      a/marker-file: url('symbols/helipad.16.svg');
      a/marker-fill: @airtransport;
    }
    [feature = 'aeroway_aerodrome'] {
      shield-file: url('symbols/aerodrome.12.svg');
      shield-fill: darken(@airtransport, 15%);
      shield-face-name: @oblique-fonts;
      shield-text-dy: -11;
      a/marker-file: url('symbols/aerodrome.12.svg');
      a/marker-fill: @airtransport;
    }
    [feature = 'tourism_caravan_site'] {
      shield-file: url('symbols/caravan_park.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/caravan_park.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'tourism_camp_site'] {
      shield-file: url('symbols/camping.svg');
      shield-fill: @transportation-text;
      a/marker-file: url('symbols/camping.svg');
      a/marker-fill: @transportation-icon;
    }
    [feature = 'leisure_water_park'] {
      shield-file: url('symbols/water_park.svg');
      a/marker-file: url('symbols/water_park.svg');
    }
    [feature = 'leisure_dog_park'] {
      shield-file: url('symbols/dog_park.svg');
      a/marker-file: url('symbols/dog_park.svg');
    }
    [feature = 'leisure_playground'] {
      shield-file: url('symbols/playground.svg');
      a/marker-file: url('symbols/playground.svg');

      [access != ''][access != 'permissive'][access != 'yes'] {
        shield-opacity: 0.33;
        shield-text-opacity: 0.33;
        a/marker-opacity: 0.33;
      }
    }
  }
  [feature = 'amenity_fountain'][zoom >= 17] {
    shield-placement: interior;
    shield-clip: false;
    shield-name: "[name]";
    shield-size: @standard-text-size;
    shield-face-name: @standard-font;
    shield-halo-radius: @standard-halo-radius;
    shield-halo-fill: @standard-halo-fill;
    shield-wrap-width: @standard-wrap-width;
    shield-fill: @marina-text;
    shield-unlock-image: true;

    // second pass for icons without text where there is still space
    a/marker-placement: interior;
    a/marker-clip: false;

    [zoom >= 17][zoom < 18] {
      shield-file: url('symbols/fountain_z17.svg');
      a/marker-file: url('symbols/fountain_z17.svg');
      shield-text-dy: 8;
    }
    [zoom >= 18] {
      shield-file: url('symbols/fountain.svg');
      a/marker-file: url('symbols/fountain.svg');
      shield-text-dy: 11;
    }
  }
  [feature = 'amenity_parking'][way_pixels > 900],
  [feature = 'amenity_bicycle_parking'][way_pixels > 900],
  [feature = 'amenity_motorcycle_parking'][way_pixels > 900] {
    [zoom < 10] {
      marker-placement: interior;

      [feature = 'amenity_parking'] {
        marker-file: url('symbols/parking.svg');
      }
      [feature = 'amenity_bicycle_parking'] {
        marker-file: url('symbols/bicycle_parking.svg');
      }
      [feature = 'amenity_motorcycle_parking'] {
        marker-file: url('symbols/motorcycle_parking.svg');
      }
      [access != ''][access != 'permissive'][access != 'yes'] {
        marker-opacity: 0.33;
      }
    }
    [zoom >= 10] {
      shield-placement: interior;
      shield-clip: false;
      shield-name: "[name]";
      shield-size: @standard-text-size;
      shield-face-name: @standard-font;
      shield-halo-radius: @standard-halo-radius;
      shield-halo-fill: @standard-halo-fill;
      shield-wrap-width: @standard-wrap-width;
      shield-fill: @transportation-text;
      shield-text-dy: 11;
      shield-unlock-image: true;

      // second pass for icons without text where there is still space
      a/marker-placement: interior;
      a/marker-clip: false;
      a/marker-fill: @transportation-icon;

      [access != ''][access != 'permissive'][access != 'yes'] {
        shield-opacity: 0.33;
        shield-text-opacity: 0.33;
        a/marker-opacity: 0.33;
      }

      [feature = 'amenity_parking'] {
        shield-file: url('symbols/parking.svg');
        a/marker-file: url('symbols/parking.svg');
      }
      [feature = 'amenity_bicycle_parking'] {
        shield-file: url('symbols/bicycle_parking.svg');
        a/marker-file: url('symbols/bicycle_parking.svg');
      }
      [feature = 'amenity_motorcycle_parking'] {
        shield-file: url('symbols/motorcycle_parking.svg');
        a/marker-file: url('symbols/motorcycle_parking.svg');
      }
    }
  }

  // markers without text

  [feature = 'tourism_alpine_hut'][zoom >= 13][zoom < 14],
  [feature = 'tourism_wilderness_hut'][zoom >= 13][zoom < 14],
  [feature = 'amenity_shelter'][zoom >= 16][zoom < 17],
  [feature = 'highway_elevator'][zoom >= 18],
  [feature = 'amenity_bus_station'][zoom >= 16][zoom < 17],
  [feature = 'highway_traffic_signals'][zoom >= 17],
  [feature = 'amenity_cinema'][zoom >= 16][zoom < 17],
  [feature = 'highway_bus_stop'][zoom >= 16][zoom < 17],
  [feature = 'highway_ford'][zoom >= 16],
  [feature = 'amenity_fire_station'][zoom >= 16][zoom < 17],
  [feature = 'amenity_hospital'][zoom >= 15][zoom < 16],
  [feature = 'tourism_information'][zoom >= 17],
  [feature = 'amenity_library'][zoom >= 16][zoom < 17],
  [feature = 'amenity_courthouse'][zoom >= 16][zoom < 17],
  [feature = 'amenity_townhall'][zoom >= 16][zoom < 17],
  [feature = 'tourism_museum'][zoom >= 16][zoom < 17],
  [feature = 'amenity_clinic'][zoom >= 16][zoom < 17],
  [feature = 'amenity_place_of_worship'][zoom >= 16][zoom < 17],
  [feature = 'amenity_police'][zoom >= 16][zoom < 17],
  [feature = 'amenity_post_box'][zoom >= 17],
  [feature = 'amenity_telephone'][zoom >= 17],
  [feature = 'amenity_emergency_phone'][zoom >= 17],
  [feature = 'amenity_theatre'][zoom >= 16][zoom < 17],
  [feature = 'amenity_toilets'][zoom >= 17],
  [feature = 'historic_archaeological_site'][zoom >= 16][zoom < 17],
  [feature = 'natural_peak'][zoom >= 11][zoom < 13],
  [feature = 'natural_volcano'][zoom >= 11][zoom < 13],
  [feature = 'power_generator']['generator:source' = 'wind'][zoom >= 15],
  [feature = 'power_generator'][power_source = 'wind'][zoom >= 15],
  [feature = 'man_made_windmill'][zoom >= 16][zoom < 17],
  [feature = 'amenity_hunting_stand'][zoom >= 16][zoom < 17],
  [feature = 'natural_spring'][zoom >= 14][zoom < 16] {
    marker-fill: @amenity-brown;
    marker-placement: interior;
    marker-clip: false;

    [feature = 'tourism_alpine_hut'] {
      marker-file: url('symbols/alpinehut.p.16.png');
      marker-fill: @transportation-icon;
    }
    [feature = 'tourism_wilderness_hut'] {
      marker-file: url('symbols/wilderness_hut.svg');
      marker-fill: @transportation-icon;
    }
    [feature = 'amenity_shelter'] {
      marker-file: url('symbols/shelter.svg');
      marker-fill: @transportation-icon;
    }
    [feature = 'highway_elevator'] {
      [access = null],
      [access = 'yes'] {
        marker-file: url('symbols/elevator.12.svg');
        marker-fill: @transportation-icon;
      }
    }
    [feature = 'amenity_bus_station'] {
      marker-file: url('symbols/bus_station.n.16.png');
      marker-fill: @transportation-icon;
    }
    [feature = 'highway_traffic_signals'] {
      marker-file: url('symbols/traffic_light.16.svg');
      marker-fill: #0a0a0a;
    }
    [feature = 'amenity_cinema'] {
      marker-file: url('symbols/cinema.svg');
    }
    [feature = 'highway_bus_stop'] {
      marker-file: url('symbols/square.svg');
      marker-fill: @transportation-icon;
      marker-width: 6;
    }
    [feature = 'highway_ford'] {
      marker-file: url('symbols/ford.svg');
      marker-fill: @transportation-icon;
    }
    [feature = 'amenity_fire_station'] {
      marker-file: url('symbols/firestation.svg');
    }
    [feature = 'amenity_hospital'] {
      marker-file: url('symbols/hospital.svg');
      marker-fill: @health-color;
    }
    [feature = 'tourism_information'] {
      marker-file: url('symbols/information.12.svg');
    }
    [feature = 'amenity_library'] {
      marker-file: url('symbols/library.svg');
    }
    [feature = 'amenity_courthouse'] {
      marker-file: url('symbols/courthouse.svg');
    }
    [feature = 'amenity_townhall'] {
      marker-file: url('symbols/town_hall.svg');
    }
    [feature = 'tourism_museum'] {
      marker-file: url('symbols/museum.svg');
    }
    [feature = 'amenity_clinic'] {
      marker-file: url('symbols/doctors.svg');
      marker-fill: @health-color;
    }
    [feature = 'amenity_place_of_worship'] {
      marker-fill: black;
      marker-file: url('symbols/place_of_worship.svg');
      [religion = 'christian'] {
        marker-file: url('symbols/christian.svg');
        [denomination = 'jehovahs_witness']{
          marker-file: url('symbols/place_of_worship.svg');
        }
      }
      [religion = 'muslim'] {
        marker-file: url('symbols/muslim.svg');
      }
      [religion = 'sikh'] {
        marker-file: url('symbols/sikhist.svg');
      }
      [religion = 'jewish'] {
        marker-file: url('symbols/jewish.svg');
      }
      [religion = 'hindu'] {
        marker-file: url('symbols/hinduist.svg');
      }
      [religion = 'buddhist'] {
        marker-file: url('symbols/buddhist.svg');
      }
      [religion = 'shinto'] {
        marker-file: url('symbols/shintoist.svg');
      }
      [religion = 'taoist'] {
        marker-file: url('symbols/taoist.svg');
      }
    }
    [feature = 'amenity_police'] {
      marker-file: url('symbols/police.svg');
    }
    [feature = 'amenity_post_box'] {
      marker-file: url('symbols/post_box.12.svg');
    }
    [feature = 'amenity_telephone'] {
      marker-file: url('symbols/telephone.svg');
    }
    [feature = 'amenity_emergency_phone'] {
      marker-file: url('symbols/emergency_phone.svg');
    }
    [feature = 'amenity_theatre'] {
      marker-file: url('symbols/theatre.svg');
    }
    [feature = 'amenity_toilets'] {
      marker-file: url('symbols/toilets.svg');
    }
    [feature = 'historic_archaeological_site'] {
      marker-file: url('symbols/archaeological_site.svg');
    }
    [feature = 'natural_peak'] {
      marker-file: url('symbols/peak.svg');
      marker-fill: @landform-color;
    }
    [feature = 'natural_volcano'] {
      marker-file: url('symbols/volcano.svg');
      marker-fill: #d40000;
    }
    [feature = 'power_generator']['generator:source' = 'wind'],
    [feature = 'power_generator'][power_source = 'wind'] {
      marker-file: url('symbols/power_wind.svg');
      marker-fill: black;
    }
    [feature = 'man_made_windmill'] {
      marker-file: url('symbols/windmill.svg');
    }
    [feature = 'amenity_hunting_stand'] {
      marker-file: url('symbols/hunting_stand.svg');
    }
    [feature = 'natural_spring'] {
      marker-fill: none;
      marker-file: url('symbols/spring.svg');
    }
  }

  // shops

  [feature = 'shop'] {
    [zoom >= 17][zoom < 18] {
      marker-fill: @shop-icon;
      marker-width: 4;
      marker-line-width: 0;
      marker-placement: interior;
      marker-clip: false;
    }
    [zoom >= 18] {
      [shop = 'other'],
      [shop = 'art'],
      [shop = 'bag'],
      [shop = 'bakery'],
      [shop = 'beauty'],
      [shop = 'beverages'],
      [shop = 'books'],
      [shop = 'butcher'],
      [shop = 'chemist'],
      [shop = 'clothes'],
      [shop = 'fashion'],
      [shop = 'coffee'],
      [shop = 'computer'],
      [shop = 'convenience'],
      [shop = 'confectionery'],
      [shop = 'copyshop'],
      [shop = 'cosmetics'],
      [shop = 'perfumery'],
      [shop = 'deli'],
      [shop = 'doityourself'],
      [shop = 'hardware'],
      [shop = 'dry_cleaning'],
      [shop = 'laundry'],
      [shop = 'fishmonger'],
      [shop = 'seafood'],
      [shop = 'florist'],
      [shop = 'garden_centre'],
      [shop = 'greengrocer'],
      [shop = 'farm'],
      [shop = 'hairdresser'],
      [shop = 'hifi'],
      [shop = 'ice_cream'],
      [shop = 'car'],
      [shop = 'car_parts'],
      [shop = 'car_repair'],
      [shop = 'bicycle'],
      [shop = 'pet'],
      [shop = 'photo'],
      [shop = 'photo_studio'],
      [shop = 'photography'],
      [shop = 'shoes'],
      [shop = 'gift'],
      [shop = 'electronics'],
      [shop = 'alcohol'],
      [shop = 'wine'],
      [shop = 'optician'],
      [shop = 'outdoor'],
      [shop = 'furniture'],
      [shop = 'mobile_phone'],
      [shop = 'motorcycle'],
      [shop = 'musical_instrument'],
      [shop = 'kiosk'],
      [shop = 'newsagent'],
      [shop = 'jewelry'],
      [shop = 'jewellery'],
      [shop = 'toys'],
      [shop = 'travel_agency'],
      [shop = 'sports'],
      [shop = 'stationery'],
      [shop = 'tobacco'],
      [shop = 'tea'],
      [shop = 'variety_store'] {
        shield-fill: @shop-icon;
        shield-placement: interior;
        shield-clip: false;
        shield-name: "[name]";
        shield-size: @standard-text-size;
        shield-face-name: @standard-font;
        shield-halo-radius: @standard-halo-radius;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-fill: @shop-text;
        shield-text-dy: 11;
        shield-unlock-image: true;

        // second pass for icons without text where there is still space
        a/marker-fill: @shop-icon;
        a/marker-placement: interior;
        a/marker-clip: false;

        [shop = 'other'] {
          shield-file: url('symbols/shop/other.svg');
          shield-text-dy: 8;
          a/marker-file: url('symbols/shop/other.svg');
        }
        [shop = 'art'] {
          shield-file: url('symbols/shop/art.svg');
          a/marker-file: url('symbols/shop/art.svg');
        }
        [shop = 'bag'] {
          shield-file: url('symbols/shop/bag.svg');
          a/marker-file: url('symbols/shop/bag.svg');
        }
        [shop = 'bakery'] {
          shield-file: url('symbols/shop/bakery.svg');
          a/marker-file: url('symbols/shop/bakery.svg');
        }
        [shop = 'beauty'] {
          shield-file: url('symbols/shop/beauty.svg');
          a/marker-file: url('symbols/shop/beauty.svg');
        }
        [shop = 'beverages'] {
          shield-file: url('symbols/shop/beverages.svg');
          a/marker-file: url('symbols/shop/beverages.svg');
        }
        [shop = 'books'] {
          shield-file: url('symbols/shop/books.svg');
          a/marker-file: url('symbols/shop/books.svg');
        }
        [shop = 'butcher'] {
          shield-file: url('symbols/shop/butcher.png');
          a/marker-file: url('symbols/shop/butcher.png');
        }
        [shop = 'chemist'] {
          shield-file: url('symbols/shop/chemist.svg');
          a/marker-file: url('symbols/shop/chemist.svg');
        }
        [shop = 'clothes'],
        [shop = 'fashion'] {
          shield-file: url('symbols/shop/clothes.svg');
          a/marker-file: url('symbols/shop/clothes.svg');
        }
        [shop = 'coffee'] {
          shield-file: url('symbols/shop/coffee.svg');
          a/marker-file: url('symbols/shop/coffee.svg');
        }
        [shop = 'computer'] {
          shield-file: url('symbols/shop/computer.svg');
          a/marker-file: url('symbols/shop/computer.svg');
        }
        [shop = 'convenience'] {
          shield-file: url('symbols/shop/convenience.svg');
          a/marker-file: url('symbols/shop/convenience.svg');
        }
        [shop = 'confectionery'] {
          shield-file: url('symbols/shop/confectionery.svg');
          a/marker-file: url('symbols/shop/confectionery.svg');
        }
        [shop = 'copyshop'] {
          shield-file: url('symbols/shop/copyshop.svg');
          a/marker-file: url('symbols/shop/copyshop.svg');
        }
        [shop = 'cosmetics'],
        [shop = 'perfumery'] {
          shield-file: url('symbols/shop/perfumery.svg');
          a/marker-file: url('symbols/shop/perfumery.svg');
        }
        [shop = 'deli'] {
          shield-file: url('symbols/shop/deli.svg');
          a/marker-file: url('symbols/shop/deli.svg');
        }
        [shop = 'doityourself'],
        [shop = 'hardware'] {
          shield-file: url('symbols/shop/diy.svg');
          a/marker-file: url('symbols/shop/diy.svg');
        }
        [shop = 'dry_cleaning'],
        [shop = 'laundry'] {
          shield-file: url('symbols/shop/laundry.svg');
          a/marker-file: url('symbols/shop/laundry.svg');
        }
        [shop = 'fishmonger'],
        [shop = 'seafood'] {
          shield-file: url('symbols/shop/seafood.svg');
          a/marker-file: url('symbols/shop/seafood.svg');
        }
        [shop = 'florist'] {
          shield-file: url('symbols/shop/florist.svg');
          a/marker-file: url('symbols/shop/florist.svg');
        }
        [shop = 'garden_centre'] {
          shield-file: url('symbols/shop/garden_centre.svg');
          a/marker-file: url('symbols/shop/garden_centre.svg');
        }
        [shop = 'greengrocer'],
        [shop = 'farm'] {
          shield-file: url('symbols/shop/greengrocer.svg');
          a/marker-file: url('symbols/shop/greengrocer.svg');
        }
        [shop = 'hairdresser'] {
          shield-file: url('symbols/shop/hairdresser.svg');
          a/marker-file: url('symbols/shop/hairdresser.svg');
        }
        [shop = 'hifi'] {
          shield-file: url('symbols/shop/hifi.svg');
          a/marker-file: url('symbols/shop/hifi.svg');
        }
        [shop = 'ice_cream'] {
          shield-file: url('symbols/shop/ice_cream.svg');
          a/marker-file: url('symbols/shop/ice_cream.svg');
        }
        [shop = 'car'] {
          shield-file: url('symbols/shop/car.svg');
          a/marker-file: url('symbols/shop/car.svg');
        }
        [shop = 'car_parts'] {
          shield-file: url('symbols/shop/car_parts.svg');
          a/marker-file: url('symbols/shop/car_parts.svg');
        }
        [shop = 'car_repair'] {
          shield-file: url('symbols/shop/car_repair.svg');
          a/marker-file: url('symbols/shop/car_repair.svg');
        }
        [shop = 'bicycle'] {
          shield-file: url('symbols/shop/bicycle.svg');
          a/marker-file: url('symbols/shop/bicycle.svg');
        }
        [shop = 'pet'] {
          shield-file: url('symbols/shop/pet.svg');
          a/marker-file: url('symbols/shop/pet.svg');
        }
        [shop = 'photo'],
        [shop = 'photo_studio'],
        [shop = 'photography'] {
          shield-file: url('symbols/shop/photo.svg');
          a/marker-file: url('symbols/shop/photo.svg');
        }
        [shop = 'shoes'] {
          shield-file: url('symbols/shop/shoes.svg');
          a/marker-file: url('symbols/shop/shoes.svg');
        }
        [shop = 'gift'] {
          shield-file: url('symbols/shop/gift.svg');
          a/marker-file: url('symbols/shop/gift.svg');
        }
        [shop = 'electronics'] {
          shield-file: url('symbols/shop/electronics.svg');
          a/marker-file: url('symbols/shop/electronics.svg');
        }
        [shop = 'alcohol'],
        [shop = 'wine'] {
          shield-file: url('symbols/shop/alcohol.svg');
          a/marker-file: url('symbols/shop/alcohol.svg');
        }
        [shop = 'optician'] {
          shield-file: url('symbols/shop/optician.svg');
          a/marker-file: url('symbols/shop/optician.svg');
        }
        [shop = 'outdoor'] {
          shield-file: url('symbols/shop/outdoor.svg');
          a/marker-file: url('symbols/shop/outdoor.svg');
        }
        [shop = 'furniture'] {
          shield-file: url('symbols/shop/furniture.svg');
          a/marker-file: url('symbols/shop/furniture.svg');
        }
        [shop = 'mobile_phone'] {
          shield-file: url('symbols/shop/mobile_phone.svg');
          a/marker-file: url('symbols/shop/mobile_phone.svg');
        }
        [shop = 'motorcycle'] {
          shield-file: url('symbols/shop/motorcycle.svg');
          a/marker-file: url('symbols/shop/motorcycle.svg');
        }
        [shop = 'musical_instrument'] {
          shield-file: url('symbols/shop/musical_instrument.svg');
          a/marker-file: url('symbols/shop/musical_instrument.svg');
        }
        [shop = 'kiosk'],
        [shop = 'newsagent'] {
          shield-file: url('symbols/shop/newsagent.svg');
          a/marker-file: url('symbols/shop/newsagent.svg');
        }
        [shop = 'jewelry'],
        [shop = 'jewellery'] {
          shield-file: url('symbols/shop/jewelry.svg');
          a/marker-file: url('symbols/shop/jewelry.svg');
        }
        [shop = 'toys'] {
          shield-file: url('symbols/shop/toys.svg');
          a/marker-file: url('symbols/shop/toys.svg');
        }
        [shop = 'travel_agency'] {
          shield-file: url('symbols/shop/travel_agency.svg');
          a/marker-file: url('symbols/shop/travel_agency.svg');
        }
        [shop = 'sports'] {
          shield-file: url('symbols/shop/sports.svg');
          a/marker-file: url('symbols/shop/sports.svg');
        }
        [shop = 'stationery'] {
          shield-file: url('symbols/shop/stationery.svg');
          a/marker-file: url('symbols/shop/stationery.svg');
        }
        [shop = 'tobacco'] {
          shield-file: url('symbols/shop/tobacco.svg');
          a/marker-file: url('symbols/shop/tobacco.svg');
        }
        [shop = 'tea'] {
          shield-file: url('symbols/shop/tea.svg');
          a/marker-file: url('symbols/shop/tea.svg');
        }
        [shop = 'variety_store'] {
          shield-file: url('symbols/shop/variety_store.svg');
          a/marker-file: url('symbols/shop/variety_store.svg');
        }
      }
    }
    [shop = 'supermarket'],
    [shop = 'department_store'] {
      [zoom >= 16] {
        shield-fill: @shop-icon;
        shield-placement: interior;
        shield-clip: false;
        shield-name: "[name]";
        shield-size: @standard-text-size;
        shield-face-name: @standard-font;
        shield-halo-radius: @standard-halo-radius;
        shield-halo-fill: @standard-halo-fill;
        shield-wrap-width: @standard-wrap-width;
        shield-fill: @shop-icon;
        shield-text-dy: 11;
        shield-unlock-image: true;

        // second pass for icons without text where there is still space
        a/marker-fill: @shop-icon;
        a/marker-placement: interior;
        a/marker-clip: false;

        [shop = 'supermarket'] {
          shield-file: url('symbols/shop/supermarket.svg');
          a/marker-file: url('symbols/shop/supermarket.svg');
        }
        [shop = 'department_store'] {
          shield-file: url('symbols/shop/department_store.svg');
          a/marker-file: url('symbols/shop/department_store.svg');
        }
      }
    }
  }
}

.amenity-low-priority {
  [feature = 'man_made_cross'][zoom >= 16],
  [feature = 'historic_wayside_cross'][zoom >= 16] {
    marker-file: url('symbols/christian.9.svg');
    marker-fill: black;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'amenity_parking'][zoom >= 17],
  [feature = 'amenity_bicycle_parking'][zoom >= 17],
  [feature = 'amenity_motorcycle_parking'][zoom >= 17] {
    [feature = 'amenity_parking'] {
      marker-file: url('symbols/parking.svg');
    }
    [feature = 'amenity_bicycle_parking'] {
      marker-file: url('symbols/bicycle_parking.svg');
    }
    [feature = 'amenity_motorcycle_parking'] {
      marker-file: url('symbols/motorcycle_parking.svg');
    }
    marker-placement: interior;
    marker-clip: false;
    marker-fill: @transportation-icon;
    [access != ''][access != 'permissive'][access != 'yes'] {
      marker-opacity: 0.33;
    }
  }

  [feature = 'railway_level_crossing'][zoom >= 14]::railway,
  [feature = 'railway_crossing'][zoom >= 15]::railway{
    marker-file: url('symbols/level_crossing.svg');
    marker-placement: interior;
    [zoom >= 16] {
      marker-file: url('symbols/level_crossing2.svg');
    }
  }

  [feature = 'highway_mini_roundabout'][zoom >= 16]::highway {
    marker-file: url('symbols/mini_roundabout.svg');
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'barrier_gate']::barrier {
    [zoom >= 16] {
      marker-file: url('symbols/gate.svg');
      marker-placement: interior;
      marker-clip: false;
    }
  }

  [feature = 'barrier_lift_gate'][zoom >= 16]::barrier,
  [feature = 'barrier_swing_gate'][zoom >= 16]::barrier {
    marker-file: url('symbols/liftgate.svg');
    marker-fill: #3f3f3f;
    marker-placement: interior;
    marker-clip: false;
  }

  [feature = 'barrier_bollard'],
  [feature = 'barrier_block'] {
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

  [feature = 'amenity_bench'][zoom >= 19]::amenity {
    marker-file: url('symbols/bench.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
  }

  [feature = 'amenity_waste_basket'][zoom >= 19]::amenity {
    marker-file: url('symbols/waste_basket.10.svg');
    marker-fill: @amenity-brown;
    marker-placement: interior;
  }
}

/* Note that .text is also used in water.mss, landcover.mss and placenames.mss */
.text[zoom >= 17] {
  [feature = 'aeroway_gate'] {
    text-name: "[ref]";
    text-size: @standard-text-size;
    text-fill: #aa66cc;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-wrap-width: @standard-wrap-width;
    text-placement: interior;
  }
}

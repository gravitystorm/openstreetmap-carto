.points {
  ::amenity {
    [amenity = 'hospital'][zoom >= 15],
    [amenity = 'clinic'][zoom >= 15] {
      point-file: url('symbols/fr/hopital.svg');
      point-placement: interior;
    }

    [amenity = 'post_office'][zoom >= 16][operator='La Poste'],
    [amenity = 'post_office'][zoom >= 16][ref_laposte!=''] {
      [poi_type =~ '(post_annex|post_partner)'] {
        point-file: url('symbols/fr/LaPoste3-gris.png');
      }
      point-file: url('symbols/fr/LaPoste3.png');
      point-transform: "scale(0.5)";
      // point-file: url('symbols/post_office_yellow.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'post_office'][zoom >= 16][operator='bpost'] {
      [indoor='yes'] { point-opacity: 0.5; }
      point-file: url('symbols/fr/logo_bpost.png');
      point-placement: interior;
      point-transform: "scale(0.5)";
        text-name: "[name]";
        text-face-name: @book-fonts;
        text-fill: black;
        text-halo-radius: 1;
        text-wrap-width: 0;
        text-placement: interior;
        text-size: 8;
        text-dy: 10;
    }

    [amenity = 'post_office'][zoom >= 17] {
      point-file: url('symbols/post_office.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'shelter'][poi_type!='public_transport'][zoom >= 16] {
      point-file: url('symbols/shelter2.svg');
      point-placement: interior;
    }

    [amenity = 'atm'][zoom >=17] {
      point-file: url('symbols/atm_euro.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bank'][zoom >= 17] {
      point-file: url('symbols/bank_euro.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bar'][zoom >=17] {
      point-file: url('symbols/bar.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bicycle_rental'][zoom >= 17] {
    	[network=~'^Vélib.?'] {
    		point-file: url('symbols/fr/Velib.svg');
    		point-transform: "scale(2)";
    	}
    	[network=~"^Vélo.v"] {
    		point-file: url('symbols/fr/velov.png');
    		point-transform: "scale(0.5)";
    	}
    	[network=~"^V.Lille"] {
    		point-file: url('symbols/fr/v-lille.png');
    		point-transform: "scale(0.33)";
    	}
    	[network=~"^V.EOL"] {
    		point-file: url('symbols/fr/veol-caen.png');
    		point-transform: "scale(0.75)";
    	}
      point-file: url('symbols/rental_bicycle.svg');
      point-placement: interior;
    }

    [amenity = 'car_rental'][zoom >= 17] {
      point-file: url('symbols/rental_car.svg');
      point-placement: interior;
    }

    [amenity = 'taxi'][zoom >= 17] {
      point-file: url('symbols/taxi_rank.svg');
      point-placement: interior;
    }

    [amenity = 'cafe'][zoom >=17] {
      point-file: url('symbols/cafe.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'car_sharing'][zoom >= 16] {
      point-file: url('symbols/car_share.svg');
      point-placement: interior;
    }

    [amenity = 'chalet'][zoom >= 17] {
      point-file: url('symbols/chalet.svg');
      point-placement: interior;
    }

    [amenity = 'cinema'][zoom >= 17] {
      marker-file: url('symbols/2016/cinema.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'fire_station'][zoom >= 17] {
      marker-file: url('symbols/2016/firestation.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'fountain'][zoom >= 18] {
      marker-file: url('symbols/2016/fountain-14.svg');
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'fuel'][zoom >= 17] {
      [lpg='yes'] { point-file: url('symbols/fuel_gpl.svg'); }
      point-file: url('symbols/fuel.svg');
      point-placement: interior;
    }

    [amenity = 'embassy'][zoom >= 17] {
      point-file: url('symbols/embassy.svg');
      point-placement: interior;
    }

    [amenity = 'townhall'][zoom >= 13] {
      marker-file: url('symbols/town_hall.16.svg');
      [zoom <=14] { marker-transform: "scale(0.66)"; }
      marker-placement: interior;
      marker-clip: false;
      marker-fill: #666;
    }

    [amenity = 'library'][zoom >= 17] {
      marker-file: url('symbols/2016/library.14.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'courthouse'][zoom > 17] {
      marker-file: url('symbols/2016/courthouse-16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'doctors'][zoom > 17] {
      marker-file: url('symbols/doctors.16.svg');
      marker-fill: @health-color;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'dentist'][zoom > 17] {
      marker-file: url('symbols/2016/dentist.16.svg');
      marker-fill: @health-color;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'veterinary'][zoom > 17] {
      marker-file: url('symbols/2016/veterinary-14.svg');
      marker-fill: @shop-icon;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'parking'][zoom >= 15][way_area>5000],
    [amenity = 'parking'][zoom >= 15][parking='multi-storey'],
    [amenity = 'parking'][zoom >= 16][name != ''],
    [amenity = 'parking'][zoom >= 16][way_area>2000],
    [amenity = 'parking'][zoom >= 17] {
      point-file: url('symbols/parking.svg');
      point-placement: interior;
      [access != ''][access != 'public'][access != 'yes'] {
        point-file: url('symbols/parking_private2.svg');
      }
    }

    [amenity = 'bicycle_parking'][zoom >= 18] {
      point-file: url('symbols/parking_bicycle.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'pharmacy'][zoom >= 16] {
      point-file: url('symbols/fr/pharmacie.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'place_of_worship'][zoom >= 16] {
      [indoor='yes'] { point-opacity: 0.5; }
      marker-file: url('symbols/place_of_worship3.p.16.png');
      marker-placement: interior;
      marker-clip: false;
      [religion = 'christian'] {
        marker-file: url('symbols/2016/christian.16.svg');
      }
      [religion = 'muslim'] {
        marker-file: url('symbols/2016/muslim.16.svg');
      }
      [religion = 'sikh'] {
        marker-file: url('symbols/2016/sikhist.16.svg');
      }
      [religion = 'jewish'] {
        marker-file: url('symbols/2016/jewish.16.svg');
      }
      [religion = 'buddhist'] {
        marker-file: url('symbols/2016/buddhist.16.svg');
      }
      // monument classé...
      [heritage!=''] {
        marker-fill: @brown-poi;
      }
    }

    [amenity = 'police'][zoom >= 17] {
      marker-file: url('symbols/police.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
      [indoor='yes'] { marker-opacity: 0.5; }
    }

    [amenity = 'post_box'][zoom >= 17] {
      [operator='La Poste'] { point-file: url('symbols/post_box_yellow.svg'); }
      point-file: url('symbols/post_box.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'pub'][zoom >= 17] {
      point-file: url('symbols/pub.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'biergarten'][zoom >= 16] {
      point-file: url('symbols/biergarten.p.16.png');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'recycling'][zoom >= 17] {
      point-file: url('symbols/recycling.svg');
      point-placement: interior;
      [poi_type='centre'] { point-file: url('symbols/recycling_centre.svg'); }
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'restaurant'][zoom >= 17] {
      point-file: url('symbols/restaurant.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'fast_food'][zoom >= 17] {
      point-file: url('symbols/fastfood.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'telephone'][zoom >= 17] {
      point-file: url('symbols/telephone.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [emergency = 'phone'][zoom >= 17],
    [amenity = 'emergency_phone'][zoom >= 17] {
      point-file: url('symbols/emergency_phone.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'theatre'][zoom >= 17] {
      point-file: url('symbols/theatre.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'toilets'][zoom >= 17] {
      point-file: url('symbols/toilets.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'drinking_water'][zoom >= 17] {
      point-file: url('symbols/food_drinkingtap.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'prison'][zoom >= 17] {
      point-file: url('symbols/prison.svg');
      point-placement: interior;
    }

    [amenity = 'charging_station'][zoom >= 17]   {
      marker-file: url('symbols/fr/IRVE_blue.svg');
      marker-transform: "scale(0.04)";
      marker-clip: false;
      marker-placement: interior;
    }

    [amenity = 'bench'][zoom >= 19] {
      point-file: url('symbols/bench.svg');
      point-placement: interior;
    }

    [emergency = 'aed'][zoom >= 17],
    [emergency = 'defibrillator'][zoom >= 17] {
      point-file: url('symbols/fr/aed2.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

  } // ::amenity

  ::highway {
    [highway = 'traffic_signals'][zoom >= 17] {
      point-file: url('symbols/traffic_lights.svg');
      point-placement: interior;
    }

    [highway = 'ford'][zoom >= 16] {
      point-file: url('symbols/transport_ford.svg');
      point-placement: interior;
    }
  }

  ::tourism {
    [tourism = 'alpine_hut'][zoom >= 13]::tourism {
      point-file: url('symbols/alpinehut.svg');
      point-placement: interior;
    }

    [tourism = 'camp_site'][zoom >= 16]::tourism {
      point-file: url('symbols/camping.svg');
      point-placement: interior;
    }

    [tourism = 'caravan_site'][zoom >= 16]::tourism {
      point-file: url('symbols/caravan_park.svg');
      point-placement: interior;
    }

    [tourism = 'guest_house'][zoom >= 17]::tourism {
      point-file: url('symbols/guest_house.svg');
      point-placement: interior;
    }

    [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
      point-file: url('symbols/bandb.svg');
      point-placement: interior;
    }

    [tourism = 'hostel'][zoom >= 17]::tourism {
      point-file: url('symbols/hostel.svg');
      point-placement: interior;
    }

    [tourism = 'hotel'][zoom >= 17]::tourism {
      point-file: url('symbols/hotel2.svg');
      point-placement: interior;
    }

    [tourism = 'motel'][zoom >= 17]::tourism {
      point-file: url('symbols/motel.svg');
      point-placement: interior;
    }

    [tourism = 'information'][poi_type!='trail_blaze'][zoom >= 16]::tourism {
      point-file: url('symbols/information.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [tourism = 'museum'][zoom >= 17]::tourism {
      point-file: url('symbols/museum.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [tourism = 'zoo'][zoom >= 15]::tourism {
      point-file: url('symbols/zoo.svg');
      point-placement: interior;
    }

    [tourism = 'viewpoint'][zoom >= 16]::tourism {
      marker-file: url('symbols/2016/viewpoint.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [man_made = 'windmill'][zoom >= 16]::tourism {
      marker-file: url('symbols/2016/windmill.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [man_made = 'lighthouse'][zoom >= 15]::tourism {
      marker-file: url('symbols/2016/lighthouse.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }
  }

  [zoom >= 15][waterway = 'lock']::waterway,
  [zoom >= 15][lock = 'yes']::lock {
      point-file: url('symbols/lock_gate.svg');
      point-placement: interior;
  }

  ::historic {
    [historic = 'memorial'][zoom >= 17] {
      marker-file: url('symbols/2016/tourist_memorial.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [historic = 'archaeological_site'][zoom >= 16] {
      marker-file: url('symbols/2016/archaeological_site.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [historic = 'castle'][zoom >= 15] {
      point-file: url('symbols/castle2.svg');
      point-placement: interior;
    }

    [heritage = '1'][zoom >= 14] {
      point-file: url('symbols/view_point.svg');
      point-transform: "scale(0.75)";
      point-placement: interior;
    }
  }

  ::misc {
    [man_made = 'mast'][zoom >= 17] {
      point-file: url('symbols/tower_communications.svg');
      point-placement: interior;
    }

    [man_made = 'water_tower'][zoom >= 16] {
      point-file: url('symbols/fr/water_tower.svg');
      point-placement: interior;
    }
  }

  ::mall [zoom >= 16] {
    [shop = 'supermarket'] {
      marker-file: url('symbols/supermarket.svg');
      marker-clip: false;
      marker-placement: interior;
      marker-clip: false;
     [organic='yes'],[organic='only'] { marker-file: url('symbols/supermarket-organic.svg');}
    }

    [shop = 'mall'],
    [shop = 'department_store'] {
      marker-file: url('symbols/shopping.svg');
      marker-clip: false;
      marker-placement: interior;
      marker-clip: false;
    }
  }

  ::shop [zoom >= 17]{
    [shop!=''],
    [amenity =~ '(ice_cream|car_wash|vehicle_inspection)'] {
      [shop = 'bakery']   {
        point-file: url('symbols/shop_bakery.16.svg');
        point-placement: interior;
      }

      [shop = 'beauty'][zoom >= 17]   {
        marker-file: url('symbols/2016/beauty-14.svg');
      }

      [shop = 'butcher'][zoom >= 17]   {
        point-file: url('symbols/butcher2.svg');
        point-placement: interior;
      }

      [shop =~ '(fishmonger|seafood)'][zoom >= 17]   {
        marker-file: url('symbols/2016/seafood-14.svg');
      }

      [shop = 'beverages'][zoom >= 17]   {
        marker-file: url('symbols/2016/beverages-14.svg');
      }

      [shop = 'alcohol'][zoom >= 17]   {
        point-file: url('symbols/alcohol.svg');
        point-placement: interior;
      }

      [shop = 'greengrocer'][zoom >= 17]    {
        point-file: url('symbols/greengrocer.svg');
        point-placement: interior;
      }

      [shop = 'confectionery'][zoom >= 17]    {
        point-file: url('symbols/confectionery.svg');
        point-placement: interior;
      }

      [shop =~ '(clothes|fashion)'][zoom >= 17]   {
          marker-file: url('symbols/2016/shop_clothes.16.svg');
      }

      [shop = 'bag'][zoom >= 17]   {
          marker-file: url('symbols/2016/bag-14.svg');
      }

      [shop = 'convenience'][zoom >= 17]   {
        point-file: url('symbols/convenience.svg');
        point-placement: interior;
        [organic='yes'],[organic='only'] { point-file: url('symbols/convenience-organic.svg');}
      }

      [shop = 'doityourself'][zoom >= 17]   {
        point-file: url('symbols/diy.svg');
        point-placement: interior;
      }

      [shop = 'florist'][zoom >= 17]   {
        marker-file: url('symbols/2016/florist.16.svg');
      }

      [shop =~ '(photo|photo_studio)'][zoom >= 17]   {
        marker-file: url('symbols/2016/photo-14.svg');
      }

      [shop = 'garden_centre'][zoom >= 17]   {
        marker-file: url('symbols/2016/garden_centre-14.svg');
      }

      [shop = 'hairdresser'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_hairdresser.16.svg');
      }

      [shop = 'optician'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_optician.16.svg');
      }

      [shop = 'toys'][zoom >= 17]   {
        marker-file: url('symbols/2016/toys-14.svg');
      }

      [shop = 'computer'][zoom >= 17]   {
        marker-file: url('symbols/2016/computer-14.svg');
      }

      [shop = 'car'][zoom >= 17]   {
        point-file: url('symbols/shop_car.svg');
        point-placement: interior;
      }

      [shop = 'car_repair'][zoom >= 17]   {
        point-file: url('symbols/car_repair.svg');
        point-placement: interior;
      }

      [shop = 'car_parts'][zoom >= 17]   {
        marker-file: url('symbols/2016/car_parts-14.svg');
      }

      [shop = 'bicycle'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_bicycle.16.svg');
      }

      [shop = 'copyshop'][zoom >= 17]   {
        marker-file: url('symbols/2016/copyshop-14.svg');
      }

      [shop = 'hifi'][zoom >= 17]   {
        marker-file: url('symbols/2016/hifi-14.svg');
      }

      [shop = 'travel_agency'][zoom >= 17]   {
        point-file: url('symbols/travel_agency.svg');
        point-placement: interior;
      }

      [shop = 'jewelry'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_jewelry.16.svg');
      }

      [shop = 'shoes'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_shoes.16.svg');
      }

      [shop =~ '(laundry|dry_cleaning)'][zoom >= 17]   {
        marker-file: url('symbols/2016/laundry-14.svg');
      }

      [shop = 'mobile_phone'][zoom >= 17]   {
        marker-file: url('symbols/2016/shop_mobile_phone.16.svg');
      }

      [shop = 'motorcycle'][zoom >= 17] {
        marker-file: url('symbols/motorcycle.svg');
      }

      [shop = 'musical_instrument'][zoom >= 17] {
        marker-file: url('symbols/2016/musical_instrument-14.svg');
      }

      [shop =~ '(furniture|interior_decoration)'][zoom >= 17] {
        marker-file: url('symbols/furniture.svg');
      }

      [shop = 'perfumery'][zoom >= 17] {
        marker-file: url('symbols/2016/perfumery-14.svg');
      }

      [shop = 'sports'][zoom >= 17] {
        marker-file: url('symbols/2016/sports-14.svg');
      }

      [shop = 'ice_cream'][zoom >= 17] {
        marker-file: url('symbols/2016/ice-cream-14.svg');
      }

      [shop = 'electronics'][zoom >= 17] {
        marker-file: url('symbols/2016/shop_electronics.16.svg');
      }

      [amenity = 'ice_cream'][zoom >= 17] {
        marker-file: url('symbols/2016/ice-cream-14.svg');
      }

      [amenity = 'car_wash'][zoom >= 17]   {
        marker-file: url('symbols/2016/car_wash-14.svg');
      }

      [amenity = 'vehicle_inspection'][zoom >= 17]   {
        point-file: url('symbols/vehicle_inspection.svg');
        point-placement: interior;
      }

      marker-fill: @shop-icon;
      marker-line-color: @shop-icon;
      marker-clip: false;
      marker-placement: interior;
      marker-file: url('symbols/disque.svg');
    }
  }

  ::leisure {
    [leisure = 'playground'][zoom >= 17] {
      point-file: url('symbols/playground.svg');
      point-placement: interior;
    }

    [leisure = 'water_park'][zoom >= 16] {
      marker-file: url('symbols/2016/water_park.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'picnic_site'][zoom >= 16],
    [leisure = 'picnic_table'][zoom >= 18] {
      point-file: url('symbols/picnic.svg');
      point-placement: interior;
    }

    [leisure = 'slipway'][zoom >= 17] {
      point-file: url('symbols/transport_slipway.p.20.png');
      point-placement: interior;
    }

    [leisure = 'golf_course'][zoom >= 14][zoom < 16] {
      marker-file: url('symbols/fr/golf-maki.svg');
      marker-fill: #040; // un peu de vert...
      marker-transform: "scale(0.15)";
      marker-placement: interior;
      marker-clip: false;
    }
  }

  [entrance != ''][zoom >= 17]::entrance {
    marker-fill: black;
    marker-width: 3;
    marker-line-width: 0;
    [entrance='main'] { text-fill: black; marker-width: 3; }
    [entrance='emergency'] { marker-fill: #080; text-fill: #080; } // sorties de secours en vert foncé
  	[ref!=''][nom!=''] { text-name: [nom]+" / "+[ref]; }
  	[nom!=''] { text-name: [nom]; }
  	text-name: "[ref]";
    text-fill: #666;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    text-size: 9;
    text-dy: -4;
  }

}

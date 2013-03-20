.points {
  [amenity = 'post_office'][zoom >= 16]::amenity[operator='La Poste'],[zoom >= 16][ref_laposte!=''] {
    point-file: url('symbols/fr/laposte.png');
    point-placement: interior;
  }
  
  [amenity = 'post_office'][zoom >= 17]::amenity {
    point-file: url('symbols/post_office.p.16.png');
    point-placement: interior;
  }

  [tourism = 'alpine_hut'][zoom >= 13]::tourism {
    point-file: url('symbols/alpinehut.p.16.png');
    point-placement: interior;
  }

  [amenity = 'shelter'][zoom >= 16]::amenity {
    point-file: url('symbols/shelter2.p.16.png');
    point-placement: interior;
  }

  [amenity = 'atm'][zoom >=17]::amenity {
    point-file: url('symbols/fr/dab-16.png');
    point-placement: interior;
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    point-file: url('symbols/fr/banque-16.png');
    point-placement: interior;
  }

  [amenity = 'bar'][zoom >=17]::amenity {
    point-file: url('symbols/bar.p.20.png');
    point-placement: interior;
  }

  [amenity = 'bicycle_rental'][zoom >= 17]::amenity {
  	[network='Vélib’'] {
  		point-file: url('symbols/fr/Velib.svg');
  		point-transform: "scale(2)";
  	}
  	[network="Vélo\'v"] {
  		point-file: url('symbols/fr/velov.png');
  		point-transform: "scale(0.5)";
  	}
  	[network="V\'Lille"] {
  		point-file: url('symbols/fr/v-lille.png');
  		point-transform: "scale(0.33)";
  	}
  	[network="V\'EOL"] {
  		point-file: url('symbols/fr/veol-caen.png');
  		point-transform: "scale(0.75)";
  	}
    point-file: url('symbols/rental_bicycle.p.20.png');
    point-placement: interior;
  }

  [highway = 'traffic_signals'][zoom >= 17]::highway {
    point-file: url('symbols/traffic_light.png');
    point-placement: interior;
  }

  [amenity = 'cafe'][zoom >=17]::amenity {
    point-file: url('symbols/cafe.p.16.png');
    point-placement: interior;
  }

  [tourism = 'camp_site'][zoom >= 16]::tourism {
    point-file: url('symbols/camping.n.16.png');
    point-placement: interior;
  }

  [highway = 'ford'][zoom >= 16]::highway {
    point-file: url('symbols/transport_ford.p.16.png');
    point-placement: interior;
  }

  [tourism = 'caravan_site'][zoom >= 16]::tourism {
    point-file: url('symbols/caravan_park.p.24.png');
    point-placement: interior;
  }

  [amenity = 'car_sharing'][zoom >= 16]::amenity {
    point-file: url('symbols/car_share.p.16.png');
    point-placement: interior;
  }

  [amenity = 'chalet'][zoom >= 17]::amenity {
    point-file: url('symbols/chalet.p.16.png');
    point-placement: interior;
  }

  [amenity = 'cinema'][zoom >= 17]::amenity {
    point-file: url('symbols/cinema.p.24.png');
    point-placement: interior;
  }

  [amenity = 'fire_station'][zoom >= 17]::amenity {
    point-file: url('symbols/firestation.p.16.png');
    point-placement: interior;
  }

  [amenity = 'fuel'][zoom >= 17]::amenity {
    point-file: url('symbols/fuel.p.16.png');
    point-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    point-file: url('symbols/guest_house.p.16.png');
    point-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    point-file: url('symbols/bandb.p.20.png');
    point-placement: interior;
  }

  [amenity = 'hospital'][zoom >= 15]::amenity {
    point-file: url('symbols/fr/hopital-16.png');
    point-placement: interior;
  }

  [tourism = 'hostel'][zoom >= 17]::tourism {
    point-file: url('symbols/hostel.p.20.png');
    point-placement: interior;
  }

  [tourism = 'hotel'][zoom >= 17]::tourism {
    point-file: url('symbols/hotel2.p.20.png');
    point-placement: interior;
  }

  [tourism = 'motel'][zoom >= 17]::tourism {
    point-file: url('symbols/motel.p.20.png');
    point-placement: interior;
  }

  [tourism = 'information'][zoom >= 16]::tourism {
    point-file: url('symbols/information.p.16.png');
    point-placement: interior;
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    point-file: url('symbols/embassy.png');
    point-placement: interior;
  }

  [amenity = 'townhall'][zoom >= 13]::amenity {
    point-file: url('symbols/fr/mairie.png');
    [zoom <=14] { point-transform: "scale(0.75)"; }
    point-placement: interior;
  }

  [amenity = 'library'][zoom >= 17]::amenity {
    point-file: url('symbols/library.p.20.png');
    point-placement: interior;
  }

  [amenity = 'courthouse'][zoom > 17]::amenity {
    point-file: url('symbols/amenity_court.p.20.png');
    point-placement: interior;
  }

  [zoom >= 15][waterway = 'lock']::waterway,
  [zoom >= 15][lock = 'yes']::lock {
      point-file: url('symbols/lock_gate.png');
      point-placement: interior;
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [tourism = 'museum'][zoom >= 17]::tourism {
    point-file: url('symbols/museum.p.16.png');
    point-placement: interior;
  }

  [amenity = 'parking'][zoom >= 15]::amenity {
    point-file: url('symbols/parking.p.16.png');
    point-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      point-file: url('symbols/parking_private.p.16.png');
    }
  }

  [amenity = 'pharmacy'][zoom >= 16]::amenity {
    point-file: url('symbols/fr/pharmacie.png');
    point-placement: interior;
  }

  [amenity = 'place_of_worship'][zoom >= 16]::amenity {
    point-file: url('symbols/place_of_worship3.p.16.png');
    point-placement: interior;
    [religion = 'christian'] {
      point-file: url('symbols/christian3.p.14.png');
    }
    [religion = 'muslim'] {
      point-file: url('symbols/islamic3.p.16.png');
    }
    [religion = 'sikh'] {
      point-file: url('symbols/sikh3.p.16.png');
    }
    [religion = 'jewish'] {
      point-file: url('symbols/jewish3.p.16.png');
    }
  }

  [amenity = 'police'][zoom >= 17]::amenity {
    point-file: url('symbols/police.p.16.png');
    point-placement: interior;
  }

  [amenity = 'post_box'][zoom >= 17]::amenity {
    point-file: url('symbols/post_box.p.16.png');
    point-placement: interior;
  }

  [amenity = 'pub'][zoom >= 16]::amenity {
    point-file: url('symbols/pub.p.16.png');
    point-placement: interior;
  }

  [amenity = 'biergarten'][zoom >= 16]::amenity {
    point-file: url('symbols/biergarten.p.16.png');
    point-placement: interior;
  }

  [amenity = 'recycling'][zoom >= 17]::amenity {
    point-file: url('symbols/fr/recyclage.png');
    point-placement: interior;
  }

  [amenity = 'restaurant'][zoom >= 17]::amenity {
    point-file: url('symbols/restaurant.p.16.png');
    point-placement: interior;
  }

  [amenity = 'fast_food'][zoom >= 17]::amenity {
    point-file: url('symbols/fast_food.png');
    point-placement: interior;
  }

  [amenity = 'telephone'][zoom >= 17]::amenity {
    point-file: url('symbols/telephone.p.16.png');
    point-placement: interior;
  }

  [emergency = 'phone'][zoom >= 17],
  [amenity = 'emergency_phone'][zoom >= 17]::amenity {
    point-file: url('symbols/sosphone.png');
    point-placement: interior;
  }

  [amenity = 'theatre'][zoom >= 17]::amenity {
    point-file: url('symbols/theatre.p.20.png');
    point-placement: interior;
  }

  [amenity = 'toilets'][zoom >= 17]::amenity {
    point-file: url('symbols/toilets.p.20.png');
    point-placement: interior;
  }

  [amenity = 'drinking_water'][zoom >= 17]::amenity {
    point-file: url('symbols/food_drinkingtap.p.20.png');
    point-placement: interior;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    point-file: url('symbols/amenity_prison.p.20.png');
    point-placement: interior;
  }

  [tourism = 'viewpoint'][zoom >= 16]::tourism {
    point-file: url('symbols/view_point.p.16.png');
    point-placement: interior;
  }

  [man_made = 'water_tower'][zoom >= 17]::man_made {
    point-file: url('symbols/tower_water.p.20.png');
    point-placement: interior;
  }

  [historic = 'memorial'][zoom >= 17]::historic {
    point-file: url('symbols/tourist_memorial.p.20.png');
    point-placement: interior;
  }

  [historic = 'archaeological_site'][zoom >= 16]::historic {
    point-file: url('symbols/tourist_archaeological2.glow.16.png');
    point-placement: interior;
  }

  [historic = 'castle'][zoom >= 15]::historic {
    point-file: url('symbols/fr/castle.png');
    point-placement: interior;
  }

  [shop = 'supermarket'][zoom >= 16]::shop {
    point-file: url('symbols/shop_supermarket.p.16.png');
    point-placement: interior;
  }

  [shop = 'bakery'][zoom >= 17]::shop {
    point-file: url('symbols/fr/boulangerie2.png');
    point-placement: interior;
  }

  [shop = 'butcher'][zoom >= 17]::shop {
    point-file: url('symbols/shop_butcher.png');
    point-placement: interior;
  }

  [zoom >= 17][shop = 'clothes']::shop,
  [zoom >= 17][shop = 'fashion']::shop {
      point-file: url('symbols/shop_clothes.p.16.png');
      point-placement: interior;
  }

  [shop = 'convenience'][zoom >= 17]::shop {
    point-file: url('symbols/shop_convenience.p.16.png');
    point-placement: interior;
  }

  [zoom >= 16][shop = 'mall'],[shop = 'department_store'][zoom >= 16]::shop {
    point-file: url('symbols/department_store.p.16.png');
    point-placement: interior;
  }

  [shop = 'doityourself'][zoom >= 17]::shop {
    point-file: url('symbols/shop_diy.p.16.png');
    point-placement: interior;
  }

  [shop = 'florist'][zoom >= 17]::shop {
    point-file: url('symbols/florist.p.16.png');
    point-placement: interior;
  }

  [shop = 'hairdresser'][zoom >= 17]::shop {
    point-file: url('symbols/shop_hairdresser.p.16.png');
    point-placement: interior;
  }

  [shop = 'car'][zoom >= 17]::shop {
    point-file: url('symbols/shopping_car.p.16.png');
    point-placement: interior;
  }

  [shop = 'car_repair'][zoom >= 17]::shop {
    point-file: url('symbols/shopping_car_repair.p.16.png');
    point-placement: interior;
  }

  [shop = 'bicycle'][zoom >= 17]::shop {
    point-file: url('symbols/shopping_bicycle.p.16.png');
    point-placement: interior;
  }

  [leisure = 'playground'][zoom >= 17]::leisure {
    point-file: url('symbols/playground.p.20.png');
    point-placement: interior;
  }

  [amenity = 'picnic_site'][zoom >= 16]::amenity {
    point-file: url('symbols/picnic.p.16.png');
    point-placement: interior;
  }

  [leisure = 'slipway'][zoom >= 17]::leisure {
    point-file: url('symbols/transport_slipway.p.20.png');
    point-placement: interior;
  }
  
  [leisure = 'golf_course'][zoom >= 14][zoom < 16]::leisure {
    point-file: url('symbols/fr/golf-maki.svg');
	point-transform: "scale(0.25)";
    point-placement: interior;
  }
}

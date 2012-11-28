#landcover {
 [leisure = 'swimming_pool'][zoom >= 14]::leisure {
    polygon-fill: #b5d0d0;
    line-color: blue;
    line-width: 0.5;
  }

  [leisure = 'playground'][zoom >= 13]::leisure {
    polygon-fill: #ccfff1;
    line-color: #666;
    line-width: 0.3;
  }

  [tourism = 'camp_site']::tourism,
  [tourism = 'caravan_site']::tourism,
  [tourism = 'picnic_site']::tourism {
    [zoom >= 13] {
      polygon-fill: #ccff99;
      polygon-opacity: 0.5;
      line-color: #666;
      line-width: 0.3;
    }
  }

  [tourism = 'attraction'][zoom >= 10]::tourism {
    polygon-fill: #f2caea;
  }

  [landuse = 'quarry'][zoom >= 11]::landuse {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
  }

  [landuse = 'vineyard']::landuse {
    [zoom >= 10][zoom < 13] {
      polygon-fill: #abdf96;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
    }
  }

  [landuse = 'orchard'][zoom >= 10]::landuse {
    polygon-pattern-file: url('symbols/orchard.png');
  }

  [landuse = 'cemetery']::landuse,
  [landuse = 'grave_yard']::landuse,
  [amenity = 'grave_yard']::amenity {
    [zoom >= 10][zoom < 15] {
      polygon-fill: #aacbaf;
    }
    [zoom >= 15] {
      [religion = 'jewish'] { polygon-pattern-file: url('symbols/cemetery_jewish.18.png'); }
      [religion = 'christian'] { polygon-pattern-file: url('symbols/grave_yard.png'); }
      [religion = 'INT-generic'] { polygon-pattern-file: url('symbols/grave_yard_generic.png'); }
    }
  }

  [landuse = 'residential'][zoom >= 10]::landuse {
    polygon-fill: #ddd;
  }

  [landuse = 'garages'][zoom >= 12]::landuse {
    polygon-fill: #996;
    polygon-opacity: 0.2;
  }

  [military = 'barracks'][zoom >= 10]::military {
    polygon-fill: #ff8f8f;
  }

  [landuse = 'field']::landuse,
  [natural = 'field']::natural {
    [zoom >= 10] {
      polygon-fill: #666600;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: #660;
      }
    }
  }

  [military = 'danger_area']::military {
    [zoom >= 9][zoom < 11] {
      polygon-fill: pink;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [landuse = 'meadow']::landuse,
  [landuse = 'grass']::landuse {
    [zoom >= 10] {
      polygon-fill: #cfeca8;
    }
  }

  [leisure = 'park']::leisure,
  [leisure = 'recreation_ground']::leisure {
    [zoom >= 10] {
      polygon-fill: #b6fdb6;
      polygon-opacity: 0.6;
    }
  }

  [tourism = 'zoo'][zoom >= 10]::tourism {
    polygon-pattern-file: url('symbols/zoo.png');
  }

  [leisure = 'common'][zoom >= 10]::leisure {
    polygon-fill: #cfeca8;
  }

  [leisure = 'garden'][zoom >= 10]::leisure {
    polygon-fill: #cfeca8;
  }

  [leisure = 'golf_course'][zoom >= 10]::leisure {
    polygon-fill: #b5e3b5;
  }

  [landuse = 'allotments']::landuse {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #e5c7ab;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
    }
  }

  [landuse = 'forest']::landuse {
    [zoom >= 8][zoom < 14] {
      polygon-fill: #8dc56c;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/forest.png');
    }
  }

  [landuse = 'farmyard'][zoom >= 9]::landuse {
    polygon-fill: #ddbf92;
  }

  [landuse = 'farm']::landuse,
  [landuse = 'farmland']::landuse {
    [zoom >= 9] {
      polygon-fill: #ead8bd;
    }
  }

  [landuse = 'recreation_ground']::landuse,
  [landuse = 'conservation']::landuse {
    [zoom >= 10] {
      polygon-fill: #cfeca8;
    }
  }

  [landuse = 'village_green'][zoom >= 11]::landuse {
    polygon-fill: #cfeca8;
  }

  [landuse = 'retail'][zoom >= 10]::landuse {
    polygon-fill: #f1dada;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: red;
    }
  }

  [landuse = 'industrial']::landuse,
  [landuse = 'railway']::landuse {
    [zoom >= 10] {
      polygon-fill: #dfd1d6;
    }
  }

  [power = 'station']::power,
  [power = 'generator']::power {
    [zoom >= 10] {
      polygon-fill: #bbb;
      [zoom >= 12] {
        line-width: 0.4;
        line-color: #555;
      }
    }
  }

  [power = 'sub_station'][zoom >= 13]::power {
    polygon-fill: #bbb;
    line-width: 0.4;
    line-color: #555;
  }

  [landuse = 'commercial'][zoom >= 10]::landuse {
    polygon-fill: #efc8c8;
  }

  [landuse = 'brownfield'],
  [landuse = 'landfill'],
  [landuse = 'greenfield'],
  [landuse = 'construction'] {
    [zoom >= 10]::landuse {
      polygon-fill: #9d9d6c;
      polygon-opacity: 0.7;
    }
  }

  [natural = 'wood']::natural,
  [landuse = 'wood']::landuse {
    [zoom >= 8] {
      polygon-fill: #aed1a0;
    }
  }

  [natural = 'desert'][zoom >= 8]::natural {
    polygon-fill: #e3b57a;
  }

  [natural = 'sand'][zoom >= 10]::natural {
    polygon-fill: #ffdf88;
  }

  [natural = 'heath'][zoom >= 10]::natural {
    polygon-fill: #d6d99f;
  }

  [natural = 'grassland'][zoom >= 10]::natural {
    polygon-fill: #c6e4b4;
  }

  [natural = 'scrub']::natural {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #c6e4b4;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    }
  }

  [amenity = 'university'],
  [amenity = 'college'],
  [amenity = 'school'],
  [amenity = 'hospital'],
  [amenity = 'kindergarten'] {
    [zoom >= 10]::amenity {
      polygon-fill: #f0f0d8;
      [zoom >= 12] {
        line-width: 0.3;
        line-color: brown;
      }
    }
  }

  [amenity = 'parking'][zoom >= 10]::amenity {
    polygon-fill: #f7efb7;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: #eeeed1;
    }
  }

  [aeroway = 'apron'][zoom >= 12]::aeroway {
    polygon-fill: #e9d1ff;
  }

  [aeroway = 'aerodrome'][zoom >= 12]::aeroway {
    polygon-fill: #ccc;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: #555;
  }

  [natural = 'beach'][zoom >= 13]::natural {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [highway = 'services'],
  [highway = 'rest_area'] {
    [zoom >= 14]::highway {
      polygon-fill: #efc8c8;
    }
  }
}

#landcover-line {
  [zoom >= 14] {
    line-width: 3;
    line-join: round;
    line-cap: square;
    line-color: #f2efe9;
    [zoom >= 16] {
      line-width: 6;
    }
  }
}

#sports-grounds {
  [leisure = 'sports_centre'],
  [leisure = 'stadium'] {
    [zoom >= 10] {
      polygon-fill: #33cc99;
    }
  }

  [leisure = 'track'][zoom >= 10] {
    polygon-fill: #74dcba;
    line-width: 0.5;
    line-color: #888;
  }

  [leisure = 'pitch'][zoom >= 10] {
    polygon-fill: #8ad3af;
    line-width: 0.5;
    line-color: #888;
  }
}

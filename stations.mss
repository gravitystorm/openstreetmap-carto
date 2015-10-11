@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

.stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    marker-file: url('symbols/entrance.10.svg');
    marker-placement: interior;
    marker-fill: @transportation-icon;
    marker-clip: false;
  }

  [railway = 'station'][zoom >= 12] {
    marker-file: url('symbols/square.svg');
    marker-placement: interior;
    marker-fill: @station-color;
    marker-width: 4;
    marker-clip: false;
    [zoom >= 13] {
      marker-width: 6;
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: @station-text;
      text-dy: 8;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 0;
      text-placement: interior;
    }
    [zoom >= 15] {
      marker-width: 9;
      text-size: 11;
      text-dy: 10;
    }
  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: @station-text;
      text-dy: 9;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 0;
      text-placement: interior;
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: @station-text;
      text-dy: 8;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 0;
      text-placement: interior;
      [zoom >= 15] {
        text-size: 10;
        text-dy: 10;
      }
    }
  }

  [railway = 'tram_stop'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
    [zoom >= 16] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 10;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: 1.5;
      text-halo-fill: rgba(255,255,255,0.6);
      text-wrap-width: 0;
      text-placement: interior;
    }
  }
}

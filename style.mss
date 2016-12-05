Map {
  background-color: @water-color;
  buffer-size: 256;
}

@book-fonts: "DejaVu Sans Book", "Unifont Medium";
@bold-fonts: "DejaVu Sans Bold", "Unifont Medium";
@oblique-fonts: "DejaVu Sans Oblique", "Unifont Medium";
@bold-oblique-fonts: "DejaVu Sans Bold Oblique", "Unifont Medium";

@water-color: #b5d0d0;
@land-color: #f2efe9;
@trunk_color: #9de09d; // #a9dba9
@primary_color: #ec989a;
@motorway_color: #809bc0;
@motorway_toll_color: #809bc0;
@shield_spacing: 768;

@health-color: #da0092;
@shop-icon: #ac39ac;
@brown-poi: #734a08;

@casing_large_z12: 3;
@casing_large_z13: 4.5;
@casing_large_z14: 6;
@casing_large_z15: 8;
@casing_large_z16: 10;
@casing_large_z17: 12.5;
@casing_large_z18: 16;
@casing_large_z19: 32;

@casing_medium_z12: 1.5;
@casing_medium_z13: 2.5;
@casing_medium_z14: 4.5;
@casing_medium_z15: 6;
@casing_medium_z16: 8;
@casing_medium_z17: 10;
@casing_medium_z18: 14;
@casing_medium_z19: 28;

@casing_small_z12: 0;
@casing_small_z13: 0;
@casing_small_z14: 2.5;
@casing_small_z15: 4.5;
@casing_small_z16: 6;
@casing_small_z17: 8;
@casing_small_z18: 12;
@casing_small_z19: 16;

@fill_large_z12: @casing_large_z12 - 0.5;
@fill_large_z13: @casing_large_z13 - 0.5;
@fill_large_z14: @casing_large_z14 - 1;
@fill_large_z15: @casing_large_z15 - 1.25;
@fill_large_z16: @casing_large_z16 - 1.5;
@fill_large_z17: @casing_large_z17 - 1.75;
@fill_large_z18: @casing_large_z18 - 2;
@fill_large_z19: @casing_large_z19 - 2;

@fill_medium_z12: @casing_medium_z12 - 0.5;
@fill_medium_z13: @casing_medium_z13 - 0.5;
@fill_medium_z14: @casing_medium_z14 - 0.75;
@fill_medium_z15: @casing_medium_z15 - 1;
@fill_medium_z16: @casing_medium_z16 - 1.25;
@fill_medium_z17: @casing_medium_z17 - 1.5;
@fill_medium_z18: @casing_medium_z18 - 1.75;
@fill_medium_z19: @casing_medium_z19 - 2;

@fill_small_z12: 0;
@fill_small_z13: 0;
@fill_small_z14: @casing_small_z14 - 0.5;
@fill_small_z15: @casing_small_z15 - 0.5;
@fill_small_z16: @casing_small_z16 - 0.75;
@fill_small_z17: @casing_small_z17 - 1;
@fill_small_z18: @casing_small_z18 - 1.25;
@fill_small_z19: @casing_small_z19 - 1.5;



// raster pour landcover en lowzoom
#lowzoom [zoom<=7]{
  raster-opacity:0.7;
  raster-scaling: lanczos;
}

@couleur-voie: #f84;  	 // orange
@couleur-piste: #080;    // vert
@couleur-interdit: #f00; // rouge
@couleur-autorise: #08f; // bleu clair
@route: #f4f;            // rose

#cycleway [zoom>=13] {
  // double-sens cyclable (orange)
  [cycleway='opposite'] { line-width: 2; line-color:@couleur-voie;  line-opacity: 0.7; }
  // voies cyclables (orange)
  [cycleway='lane']   {    line-width: 2; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [cycleway_l='lane'] {    line-width: 2; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [cycleway_r='lane'] {    line-width: 2; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [bicycle_lanes='yes']   {    line-width: 2; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [bicycle_lanes='designated']   {    line-width: 2; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [bicycle='designated']   {    line-width: 1; line-color: @couleur-voie;  line-opacity: 0.7;  }
  // partagé avec les bus (orange épais)
  [cycleway='share_busway']    {    line-width: 4; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [cycleway_l='share_busway']  {    line-width: 4; line-color: @couleur-voie;  line-opacity: 0.7;  }
  [cycleway_r='share_busway']  {    line-width: 4; line-color: @couleur-voie;  line-opacity: 0.7;  }

  // pistes (vert épais)
  [cycleway='track']    {    line-width: 4; line-color:@couleur-piste;  line-opacity: 0.7;  }
  [cycleway_l='track']  {    line-width: 4; line-color:@couleur-piste;  line-opacity: 0.7;  }
  [cycleway_r='track']  {    line-width: 4; line-color:@couleur-piste;  line-opacity: 0.7;  }
  [highway='cycleway']  {    line-width: 4; line-color:@couleur-piste; line-opacity: 0.7;  }

  // inconnu
  [highway='footway']  {  line-dasharray: 8,6;  }
  [highway='path']  {  line-dasharray: 8,6;  }

  // interdit vélo (rouge)
  [bicycle='no'] {
    line-width: 4;
    line-color: @couleur-interdit;
    line-opacity: 0.7;
  }

  // autorisé vélo (bleu)
  [bicycle='yes'] {
    line-width: 4;
    line-color: @couleur-autorise;
    line-opacity: 0.7;
  }

  [bicycle='designated'] {
    line-width: 4;
  }


  [route='bicycle'] {
    line-color: @route;
    line-width: 6;
    line-opacity: 0.5;
    line-dasharray: 6,12;
  }

  line-width:4;
  line-color:#666;
  line-opacity: 0.5;
  line-join: round;
  line-cap: round;

}


#relief [zoom>=8][zoom<=17]{
  raster-opacity: 0.80;
  raster-scaling: bicubic;
  [zoom>=17] { raster-opacity: 0.15;}
}

#relief2 [zoom>=8][zoom<=16]{
  raster-opacity: 0.15;
  raster-scaling: bicubic;
}

#contours_text [zoom>=13] {
  [ele=~'.*[05]0'] { // 50m
    text-face-name: @book-fonts;
    text-name: [ele];
    text-fill: #444;
    text-size: 8;
    text-placement: line;
    text-halo-radius: 1;
    text-halo-fill: fadeout(white, 50%);
    text-dy: -2;
    text-max-char-angle-delta: 5;
    text-spacing: 400;
    [ele=~'.*[05]00'] { text-fill: black; } // 500m
  }
}

#contours [zoom>=11] {
  line-width: 0.2;
  line-color: grey;
  [zoom>=15] { line-smooth: 0.5; }
  [ele=~'.*[05]0'][zoom>=13] { line-color: black; } // 50m
  [ele=~'.*[05]00'][zoom>=13] { line-width: 0.33; } // 500m
}

#neige {
  [ele>=1500] { polygon-fill: white; polygon-opacity: 0.1; }
}


#contours2 {
  marker-height: 2;
}

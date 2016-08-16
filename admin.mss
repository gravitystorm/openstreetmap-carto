
@admin-boundaries: #ac46ac;
@admin-boundary-line: #6c216c;

#admin {
  [zoom>=11][admin_level<=6],
  [zoom>=13][admin_level<=8],
  [zoom>=15] /* limites administratives locales (élément de relation) */
  {
    [zoom>=15][zoom<18][nom!=''] { text-name: "[nom]"; }
    [admin_level=7][insee!=''] /* traitement spécifique des noms d'arrondissements */
    {
     	text-name: '      '+[name]+' (arrond.)      ';
    }
    text-name: '      '+[name]+'      ';
    text-fill: @admin-boundaries;
    text-size: 10;
    text-placement: line;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1.5;
    text-halo-fill: fadeout(white, 30%);
    text-min-padding: 50;
    text-min-distance: 50;
    text-max-char-angle-delta: 10;
    text-dy: -4;
  }
}


#admin-01234 {
  background/line-color: white;
  background/line-width: 6;
  comp-op: darken;
  opacity: 0.7;

  [admin_level = '2'] {
    [zoom >= 4] {
      line-color: @admin-boundary-line;
      line-width: 0.6;
      line-cap: round;
    }
    [zoom >= 5] {
      line-width: 1;
    }
    [zoom >= 7] {
      line-width: 2;
    }
    [zoom >= 8] {
    	line-color: purple;
    }
    [zoom >= 10] {
      line-opacity: 0.5;
      [admin_level = '2'] {
        line-width: 6;
      }
      [admin_level = '3'] {
        line-width: 4;
        line-dasharray: 4,2;
      }
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 2;
        line-cap: round;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }

  }
  [admin_level = '3'],
  [admin_level = '4'] {
    [zoom >= 5] {
      line-color: @admin-boundary-line;
      line-width: 0.5;
      line-cap: round;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 8] {
	    line-color: purple;
	    line-dasharray: 4,3;
    }
    [zoom >= 10] {
      line-width: 1.5;
    }
    [zoom >= 11] {
      line-width: 3;
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 0.5;
        line-cap: round;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }
  }
  [admin_level = '5'][zoom >= 7][zoom <= 10],
  [admin_level = '6'][zoom >= 7][zoom <= 10] {
    line-color: @admin-boundary-line;
    line-width: 0.33;
    line-cap: round;
  }

}

#admin-5678 {
  background/line-color: white;
  background/line-width: 3;
  comp-op: darken;
  opacity: 0.7;

  [admin_level = '5'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
  }
  [admin_level = '6'][zoom >= 11] {
    line-color: purple;
    line-width: 2;
    line-dasharray: 8,3,2,3;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: purple;
      line-width: 1.5;
      line-dasharray: 5,3;
    }
  }

  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 16] {
      line-color: purple;
      line-width: 1.5;
      line-dasharray: 3,5;
    }
  }
}

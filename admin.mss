
@admin-boundaries: #ac46ac;
@admin-boundary-line: #6c216c;

#admin-boundaries-text {
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
    text-dy: 7;
    text-spacing: 500;
  }
}


#admin-boundaries [zoom>=11] {

  background/line-color: white;
  background/line-width: 0;
  comp-op: darken;
  opacity: 0.6;
  line-cap: round;
  line-width: 0;
  line-join: round;
  line-color: @admin-boundary-line;

  [admin_level = '2']{
    [nb>=2] {
      line-width: 3;
      background/line-width: 3;
    }
    [maritime='yes'] {
    	line-color: #0041ff;
      line-dasharray: 4, 8;
      line-width: 1.5;
      background/line-width: 1.5;
    }
  }

  [admin_level = '3'],
  [admin_level = '4'] {
    [nb>=2]{
      line-width: 3;
      background/line-width: 3;
      line-dasharray: 6,5,0.1,5,0.1,5;
    }
    [maritime='yes']
    {
    	line-color: #0041ff;
      line-dasharray: 6,5,1,5,1,5;
      line-width: 1;
      background/line-width: 1;
    }
  }

  [admin_level = '5'],
  [admin_level = '6'] {
    [nb>=2]{
      line-color: @admin-boundary-line;
      line-width: 2;
      background/line-width: 2;
      line-dasharray: 6,4,0.1,4;
    }
    [maritime='yes']
    {
    	line-color: #0041ff;
      line-dasharray: 6,4,1,4;
      line-width: 0.8;
      background/line-width: 0.8;
    }
  }

  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      line-color: @admin-boundary-line;
      line-width: 1.5;
      background/line-width: 1.5;
      line-dasharray: 5,4;
      [maritime='yes']
      {
      	line-color: #0041ff;
        line-dasharray: 6,4,1,4;
        line-width: 0.8;
        background/line-width: 0.8;
      }
    }
  }

  [admin_level = '9'] {
    [zoom >= 12] {
      line-color: @admin-boundary-line;
      line-width: 1.5;
      background/line-width: 1.5;
      line-dasharray: 3,6;
    }
  }

  [admin_level = '10'] {
    [zoom >= 15] {
      line-color: @admin-boundary-line;
      line-width: 1.5;
      background/line-width: 1.5;
      line-dasharray: 1,6;
    }
  }
}

#admin-lz [zoom <= 10] {
  background/line-color: white;
  background/line-width: 0;
  comp-op: darken;
  opacity: 0.7;
  line-cap: round;
  line-width: 0;
  line-join: round;
  line-color: @admin-boundary-line;

  [admin_level = '2'] {
    [zoom >= 4] {
      line-width: 0.6;
      background/line-width: 0.6;
    }
    [zoom >= 5] {
      line-width: 1;
      background/line-width: 1;
    }
    [zoom >= 7] {
      line-width: 2;
      background/line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        line-width: 3;
        background/line-width: 3;
      }
      [admin_level = '3'] {
        line-width: 2;
        background/line-width: 2;
        line-dasharray: 4,2;
      }
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 1.5;
        background/line-width: 1.5;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }

  }
  [admin_level =~ '(3|4)'] {
    line-width: 0;
    line-dasharray: 6,5,0.1,5,0.1,5;
    [zoom >= 5] {
      line-width: 0.5;
      background/line-width: 0.5;
    }
    [zoom >= 7] {
      line-width: 1;
      background/line-width: 1;
    }
    [zoom >= 8] {
	    line-dasharray: 4,3;
    }
    [zoom >= 10] {
      line-width: 1.5;
      background/line-width: 1.5;
    }
    [zoom>=6][maritime='yes']
    {
    	line-color: #0041ff;
      	line-dasharray: 4, 8;
        line-width: 0.5;
        background/line-width: 0.5;
    }
    [zoom<6][maritime='yes']
    {
    	line-width: 0;
    }
  }
  [admin_level =~ '(5|6)'][zoom >= 7] {
    line-width: 0.33;
    background/line-width: 0.33;
  }
}

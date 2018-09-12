/* ========================================================================
    simple lightness modulation of colors in perceptual color space
    Copyright (C) 2017 Christoph Hormann <chris_hormann@gmx.de>
   ========================================================================
 */

/*
 * Compiling:
 * You need a compiler and libcms2 (header and binary lib for linking). Do:
 * gcc -o colors_bd -llcms2 colors_bd.c
 *
 * Usage:
 *
 * With
 *
 * echo "#fcd6a4" | colors_bd -40 2.6
 *
 * you get for example:
 *
 * #fcd6a4,#8b6c3f,#ffddab,88.02,48.02,90.62
 *
 * Which is
 * - the original color, as is
 * - the color darkened by -40
 * - the color brightened by 2.6
 * and the corresponding lightness values.
 *
 * This application is used by generate_unpaved_patterns.py
*/

#include <stdlib.h>
#include <stdio.h>

#include "lcms2.h"


int main(int argc,char **argv)
{
	float Darken = -5.0;
	float Brighten = 5.0;

	if (argc > 1)
		Darken = atof(argv[1]);

	if (argc > 2)
		Brighten = atof(argv[2]);

	cmsHPROFILE hsRGB = cmsCreate_sRGBProfile(); 
	cmsCIExyY D65 = {0.31271, 0.32902, 1};
	cmsHPROFILE hLab  = cmsCreateLab4Profile(&D65);

	cmsHTRANSFORM hTransform = cmsCreateTransform(hsRGB, TYPE_RGB_8, hLab, TYPE_Lab_DBL, INTENT_PERCEPTUAL, 0);
	cmsHTRANSFORM hTransformBack = cmsCreateTransform(hLab, TYPE_Lab_DBL, hsRGB, TYPE_RGB_8, INTENT_PERCEPTUAL, 0);

	int r, g, b;

	while (scanf("%*[#]%02x%02x%02x", &r, &g, &b) == 3)
	{
		unsigned long col_orig = (r<<16) | (g<<8) | b;

		unsigned char col_rgb[3];
		cmsCIELab col_lab; 
		cmsCIELab col_lab_dark; 
		cmsCIELab col_lab_bright; 

		col_rgb[0] = r;
		col_rgb[1] = g;
		col_rgb[2] = b;

		cmsDoTransform(hTransform, col_rgb, &col_lab, 1); 

		col_lab_dark = col_lab;
		col_lab_bright = col_lab;

		col_lab_dark.L += Darken;
		col_lab_bright.L += Brighten;

		cmsDoTransform(hTransformBack, &col_lab_dark, col_rgb, 1); 

		r = col_rgb[0];
		g = col_rgb[1];
		b = col_rgb[2];

		unsigned long col_dark = (r<<16) | (g<<8) | b;

		cmsDoTransform(hTransformBack, &col_lab_bright, col_rgb, 1); 

		r = col_rgb[0];
		g = col_rgb[1];
		b = col_rgb[2];

		unsigned long col_bright = (r<<16) | (g<<8) | b;

		printf("#%06x,#%06x,#%06x,%.2lf,%.2lf,%.2lf\n", col_orig, col_dark, col_bright, col_lab.L, col_lab_dark.L, col_lab_bright.L);

	}

	cmsDeleteTransform(hTransform);
	cmsDeleteTransform(hTransformBack);
	cmsCloseProfile(hsRGB);
	cmsCloseProfile(hLab);
}

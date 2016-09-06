Map {
  background-color: @water-color;
}

/* A regular style. */
@book-fonts:    "DejaVu Sans Book", "Arundina Regular", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "Gargi Regular", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

/* A bold style is available for almost all scripts. Bold text is heavier than regular text and can be used for emphasis.
   Fallback is a regular style. */
@bold-fonts:    "DejaVu Sans Bold", "Arundina Bold", "Arundina Sans Bold", "Padauk Bold", "TSCu_Paranar Bold",
                "DejaVu Sans Book", "Arundina Regular", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

/* An oblique or italic style is available for various (mostly latin-like) scripts. Oblique and italic style are not heavier than
   regular style. But they are distinguishable from regular style. Fallback is a regular style. Because many (mostly asian) scripts
   do not have an oblique or italic style by nature, be aware that for a considerable number of labels this style will make no
   difference to the regular style. */
@oblique-fonts: "DejaVu Sans Oblique", "Arundina Italic", "Arundina Sans Italic", "TSCu_Paranar Italic",
                "DejaVu Sans Book", "Arundina Regular", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "Gargi Regular", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@water-color: #b5d0d0;
@land-color: #f2efe9;

@standard-halo-radius: 1;
@standard-halo-fill: rgba(255,255,255,0.6);

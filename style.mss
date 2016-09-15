Map {
  background-color: @water-color;
}


/*
About fonts:

Noto is a font family that wants to cover most of Unicode with a harmonic
design across various scripts. We use Noto for most text, with some support
for backward-compatibility and Unifont as fallback.

By order:

1. Noto Sans is available for most scripts and it is used here. The list in is
alphabetical order. Note that the “Noto Sans” base font MUST be before the
“Noto Sans CJK *” fonts, because the CJK fonts contain non-Noto latin characters
that should not be used. Noto Serif and Noto Mono are available for various
(mostly latin-like) scripts. They are ignored here in favour of the respective
Noto Sans variant. For fonts that are known to have an UI variant (a variant
designed for user interface with tighter vertical metrics) the list contains
both - the normal and the UI variant - but prefers the UI variant.

2. Noto provides three variants of Arabic: Noto Kufi Arabic, Noto Naskh Arabic
and Noto Nastaliq Urdu. Noto Kufi Arabic is the one that is most similiar to a
Sans style, so this one is used while both other variants are ignored. Arabic
fonts are placed behind Sans fonts because they might re-define some commonly
used signs like parenthesis or quotation marks, and the arabic design should
not overwrite the standard design.

3. Noto provides two variants of Emoji: Noto Color Emoji and Noto Emoji. The
colour variant is a SVG flavoured OpenType font that contains coloured emojis.
This is not useful in cartography, so we use the “normal” monochromatic
Noto Emoji.

4. The list still includes the previously used font selection of this style
to remain backward-compatible.

5. Unifont. This is a simple and not really beautiful font, but it has an
extremely great coverage. Unifont Medium covers the hole Unicode BMP without
surrogates and without PUA. Unifont Upper Medium covers some parts of the other
Unicode planes. Unifont Medium Sample covers the BMP PUA with replacement
characters.
*/

/*
A regular style.
*/
@book-fonts:    "Noto Sans UI Regular", "Noto Sans Regular",
                "Noto Sans Armenian Regular",
                "Noto Sans Avestan Regular", "Noto Sans Balinese Regular",
                "Noto Sans Bamum Regular", "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular", "Noto Sans Bengali Regular",
                "Noto Sans Brahmi Regular",
                "Noto Sans Buginese Regular", "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Carian Regular", "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular", "Noto Sans CJK JP Regular",
                "Noto Sans CJK KR Regular", "Noto Sans CJK SC Regular",
                "Noto Sans CJK TC Regular", "Noto Sans Coptic Regular",
                "Noto Sans Cuneiform Regular", "Noto Sans Cypriot Regular",
                "Noto Sans Deseret Regular", "Noto Sans Devanagari UI Regular",
                "Noto Sans Devanagari Regular",
                "Noto Sans Egyptian Hieroglyphs Regular",
                "Noto Sans Ethiopic Regular", "Noto Sans Georgian Regular",
                "Noto Sans Glagolitic Regular", "Noto Sans Gothic Regular",
                "Noto Sans Gujarati UI Regular", "Noto Sans Gujarati Regular",
                "Noto Sans Gurmukhi UI Regular", "Noto Sans Gurmukhi Regular",
                "Noto Sans Hanunoo Regular", "Noto Sans Hebrew Regular",
                "Noto Sans Imperial Aramaic Regular",
                "Noto Sans Inscriptional Pahlavi Regular",
                "Noto Sans Inscriptional Parthian Regular",
                "Noto Sans Javanese Regular", "Noto Sans Kaithi Regular",
                "Noto Sans Kannada UI Regular", "Noto Sans Kannada Regular",
                "Noto Sans Kayah Li Regular", "Noto Sans Kharoshthi Regular",
                "Noto Sans Khmer UI Regular", "Noto Sans Khmer Regular",
                "Noto Sans Lao UI Regular", "Noto Sans Lao Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular", "Noto Sans Linear B Regular",
                "Noto Sans Lisu Regular", "Noto Sans Lycian Regular",
                "Noto Sans Lydian Regular",
                "Noto Sans Malayalam UI Regular", "Noto Sans Malayalam Regular",
                "Noto Sans Mandaic Regular", "Noto Sans Meetei Mayek Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular", "Noto Sans Myanmar Regular",
                "Noto Sans New Tai Lue Regular", "Noto Sans NKo Regular",
                "Noto Sans Ogham Regular", "Noto Sans Ol Chiki Regular",
                "Noto Sans Old Italic Regular", "Noto Sans Old Persian Regular",
                "Noto Sans Old South Arabian Regular",
                "Noto Sans Old Turkic Regular",
                "Noto Sans Oriya UI Regular", "Noto Sans Oriya Regular",
                "Noto Sans Osmanya Regular", "Noto Sans Phags Pa Regular",
                "Noto Sans Phoenician Regular", "Noto Sans Rejang Regular",
                "Noto Sans Runic Regular", "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular", "Noto Sans Shavian Regular",
                "Noto Sans Sinhala Regular", "Noto Sans Sundanese Regular",
                "Noto Sans Syloti Nagri Regular", "Noto Sans Symbols Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Syriac Estrangela Regular",
                "Noto Sans Syriac Western Regular", "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular", "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular", "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular", "Noto Sans Tamil Regular",
                "Noto Sans Telugu UI Regular", "Noto Sans Telugu Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular", "Noto Sans Thai Regular",
                "Noto Sans Tibetan Regular", "Noto Sans Tifinagh Regular",
                "Noto Sans Ugaritic Regular", "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",
                "Noto Kufi Arabic Regular", "Noto Emoji Regular",
                "DejaVu Sans Book", "Arundina Regular", "Arundina Sans Regular",
                "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "Gargi Regular", "TSCu_Paranar Regular",
                "Tibetan Machine Uni Regular", "Droid Sans Fallback Regular",
                "Unifont Medium", "unifont Medium", "Unifont Upper Medium",
                "Unifont Sample Medium";

/*
A bold style is available for almost all scripts. Bold text is heavier than
regular text and can be used for emphasis. Fallback is a regular style.
*/
@bold-fonts:    "Noto Sans UI Bold", "Noto Sans Bold",
                "Noto Sans Armenian Bold",
                "Noto Sans Avestan Bold", "Noto Sans Balinese Bold",
                "Noto Sans Bamum Bold", "Noto Sans Batak Bold",
                "Noto Sans Bengali UI Bold", "Noto Sans Bengali Bold",
                "Noto Sans Brahmi Bold",
                "Noto Sans Buginese Bold", "Noto Sans Buhid Bold",
                "Noto Sans Canadian Aboriginal Bold",
                "Noto Sans Carian Bold", "Noto Sans Cham Bold",
                "Noto Sans Cherokee Bold", "Noto Sans CJK JP Bold",
                "Noto Sans CJK KR Bold", "Noto Sans CJK SC Bold",
                "Noto Sans CJK TC Bold", "Noto Sans Coptic Bold",
                "Noto Sans Cuneiform Bold", "Noto Sans Cypriot Bold",
                "Noto Sans Deseret Bold", "Noto Sans Devanagari UI Bold",
                "Noto Sans Devanagari Bold",
                "Noto Sans Egyptian Hieroglyphs Bold",
                "Noto Sans Ethiopic Bold", "Noto Sans Georgian Bold",
                "Noto Sans Glagolitic Bold", "Noto Sans Gothic Bold",
                "Noto Sans Gujarati UI Bold", "Noto Sans Gujarati Bold",
                "Noto Sans Gurmukhi UI Bold", "Noto Sans Gurmukhi Bold",
                "Noto Sans Hanunoo Bold", "Noto Sans Hebrew Bold",
                "Noto Sans Imperial Aramaic Bold",
                "Noto Sans Inscriptional Pahlavi Bold",
                "Noto Sans Inscriptional Parthian Bold",
                "Noto Sans Javanese Bold", "Noto Sans Kaithi Bold",
                "Noto Sans Kannada UI Bold", "Noto Sans Kannada Bold",
                "Noto Sans Kayah Li Bold", "Noto Sans Kharoshthi Bold",
                "Noto Sans Khmer UI Bold", "Noto Sans Khmer Bold",
                "Noto Sans Lao UI Bold", "Noto Sans Lao Bold",
                "Noto Sans Lepcha Bold",
                "Noto Sans Limbu Bold", "Noto Sans Linear B Bold",
                "Noto Sans Lisu Bold", "Noto Sans Lycian Bold",
                "Noto Sans Lydian Bold",
                "Noto Sans Malayalam UI Bold", "Noto Sans Malayalam Bold",
                "Noto Sans Mandaic Bold", "Noto Sans Meetei Mayek Bold",
                "Noto Sans Mongolian Bold",
                "Noto Sans Myanmar UI Bold", "Noto Sans Myanmar Bold",
                "Noto Sans New Tai Lue Bold", "Noto Sans NKo Bold",
                "Noto Sans Ogham Bold", "Noto Sans Ol Chiki Bold",
                "Noto Sans Old Italic Bold", "Noto Sans Old Persian Bold",
                "Noto Sans Old South Arabian Bold",
                "Noto Sans Old Turkic Bold",
                "Noto Sans Oriya UI Bold", "Noto Sans Oriya Bold",
                "Noto Sans Osmanya Bold", "Noto Sans Phags Pa Bold",
                "Noto Sans Phoenician Bold", "Noto Sans Rejang Bold",
                "Noto Sans Runic Bold", "Noto Sans Samaritan Bold",
                "Noto Sans Saurashtra Bold", "Noto Sans Shavian Bold",
                "Noto Sans Sinhala Bold", "Noto Sans Sundanese Bold",
                "Noto Sans Syloti Nagri Bold", "Noto Sans Symbols Bold",
                "Noto Sans Syriac Eastern Bold",
                "Noto Sans Syriac Estrangela Bold",
                "Noto Sans Syriac Western Bold", "Noto Sans Tagalog Bold",
                "Noto Sans Tagbanwa Bold", "Noto Sans Tai Le Bold",
                "Noto Sans Tai Tham Bold", "Noto Sans Tai Viet Bold",
                "Noto Sans Tamil UI Bold", "Noto Sans Tamil Bold",
                "Noto Sans Telugu UI Bold", "Noto Sans Telugu Bold",
                "Noto Sans Thaana Bold",
                "Noto Sans Thai UI Bold", "Noto Sans Thai Bold",
                "Noto Sans Tibetan Bold", "Noto Sans Tifinagh Bold",
                "Noto Sans Ugaritic Bold", "Noto Sans Vai Bold",
                "Noto Sans Yi Bold",
                "Noto Kufi Arabic Bold", "Noto Emoji Bold",
                "Noto Sans UI Regular", "Noto Sans Regular",
                "Noto Sans Armenian Regular",
                "Noto Sans Avestan Regular", "Noto Sans Balinese Regular",
                "Noto Sans Bamum Regular", "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular", "Noto Sans Bengali Regular",
                "Noto Sans Brahmi Regular",
                "Noto Sans Buginese Regular", "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Carian Regular", "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular", "Noto Sans CJK JP Regular",
                "Noto Sans CJK KR Regular", "Noto Sans CJK SC Regular",
                "Noto Sans CJK TC Regular", "Noto Sans Coptic Regular",
                "Noto Sans Cuneiform Regular", "Noto Sans Cypriot Regular",
                "Noto Sans Deseret Regular", "Noto Sans Devanagari UI Regular",
                "Noto Sans Devanagari Regular",
                "Noto Sans Egyptian Hieroglyphs Regular",
                "Noto Sans Ethiopic Regular", "Noto Sans Georgian Regular",
                "Noto Sans Glagolitic Regular", "Noto Sans Gothic Regular",
                "Noto Sans Gujarati UI Regular", "Noto Sans Gujarati Regular",
                "Noto Sans Gurmukhi UI Regular", "Noto Sans Gurmukhi Regular",
                "Noto Sans Hanunoo Regular", "Noto Sans Hebrew Regular",
                "Noto Sans Imperial Aramaic Regular",
                "Noto Sans Inscriptional Pahlavi Regular",
                "Noto Sans Inscriptional Parthian Regular",
                "Noto Sans Javanese Regular", "Noto Sans Kaithi Regular",
                "Noto Sans Kannada UI Regular", "Noto Sans Kannada Regular",
                "Noto Sans Kayah Li Regular", "Noto Sans Kharoshthi Regular",
                "Noto Sans Khmer UI Regular", "Noto Sans Khmer Regular",
                "Noto Sans Lao UI Regular", "Noto Sans Lao Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular", "Noto Sans Linear B Regular",
                "Noto Sans Lisu Regular", "Noto Sans Lycian Regular",
                "Noto Sans Lydian Regular",
                "Noto Sans Malayalam UI Regular", "Noto Sans Malayalam Regular",
                "Noto Sans Mandaic Regular", "Noto Sans Meetei Mayek Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular", "Noto Sans Myanmar Regular",
                "Noto Sans New Tai Lue Regular", "Noto Sans NKo Regular",
                "Noto Sans Ogham Regular", "Noto Sans Ol Chiki Regular",
                "Noto Sans Old Italic Regular", "Noto Sans Old Persian Regular",
                "Noto Sans Old South Arabian Regular",
                "Noto Sans Old Turkic Regular",
                "Noto Sans Oriya UI Regular", "Noto Sans Oriya Regular",
                "Noto Sans Osmanya Regular", "Noto Sans Phags Pa Regular",
                "Noto Sans Phoenician Regular", "Noto Sans Rejang Regular",
                "Noto Sans Runic Regular", "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular", "Noto Sans Shavian Regular",
                "Noto Sans Sinhala Regular", "Noto Sans Sundanese Regular",
                "Noto Sans Syloti Nagri Regular", "Noto Sans Symbols Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Syriac Estrangela Regular",
                "Noto Sans Syriac Western Regular", "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular", "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular", "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular", "Noto Sans Tamil Regular",
                "Noto Sans Telugu UI Regular", "Noto Sans Telugu Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular", "Noto Sans Thai Regular",
                "Noto Sans Tibetan Regular", "Noto Sans Tifinagh Regular",
                "Noto Sans Ugaritic Regular", "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",
                "Noto Kufi Arabic Regular", "Noto Emoji Regular",
                "DejaVu Sans Bold", "Arundina Bold", "Arundina Sans Bold",
                "Padauk Bold", "TSCu_Paranar Bold", "DejaVu Sans Book",
                "Arundina Regular", "Arundina Sans Regular", "Padauk Regular",
                "Khmer OS Metal Chrieng Regular", "Mukti Narrow Regular",
                "gargi Medium", "TSCu_Paranar Regular",
                "Tibetan Machine Uni Regular",
                "Unifont Medium", "unifont Medium", "Unifont Upper Medium",
                "Unifont Sample Medium";

/*
An oblique or italic style is available for various (mostly latin-like) scripts.
Oblique and italic style are not heavier than regular style. But they are
distinguishable from regular style. Fallback is a regular style. Because many
(mostly asian) scripts do not have an oblique or italic style by nature, be
aware that for a considerable number of labels this style will make no
difference to the regular style.
*/
@oblique-fonts: "Noto Sans UI Italic", "Noto Sans Italic",
                "Noto Sans UI Regular", "Noto Sans Regular",
                "Noto Sans Armenian Regular",
                "Noto Sans Avestan Regular", "Noto Sans Balinese Regular",
                "Noto Sans Bamum Regular", "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular", "Noto Sans Bengali Regular",
                "Noto Sans Brahmi Regular",
                "Noto Sans Buginese Regular", "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Carian Regular", "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular", "Noto Sans CJK JP Regular",
                "Noto Sans CJK KR Regular", "Noto Sans CJK SC Regular",
                "Noto Sans CJK TC Regular", "Noto Sans Coptic Regular",
                "Noto Sans Cuneiform Regular", "Noto Sans Cypriot Regular",
                "Noto Sans Deseret Regular", "Noto Sans Devanagari UI Regular",
                "Noto Sans Devanagari Regular",
                "Noto Sans Egyptian Hieroglyphs Regular",
                "Noto Sans Ethiopic Regular", "Noto Sans Georgian Regular",
                "Noto Sans Glagolitic Regular", "Noto Sans Gothic Regular",
                "Noto Sans Gujarati UI Regular", "Noto Sans Gujarati Regular",
                "Noto Sans Gurmukhi UI Regular", "Noto Sans Gurmukhi Regular",
                "Noto Sans Hanunoo Regular", "Noto Sans Hebrew Regular",
                "Noto Sans Imperial Aramaic Regular",
                "Noto Sans Inscriptional Pahlavi Regular",
                "Noto Sans Inscriptional Parthian Regular",
                "Noto Sans Javanese Regular", "Noto Sans Kaithi Regular",
                "Noto Sans Kannada UI Regular", "Noto Sans Kannada Regular",
                "Noto Sans Kayah Li Regular", "Noto Sans Kharoshthi Regular",
                "Noto Sans Khmer UI Regular", "Noto Sans Khmer Regular",
                "Noto Sans Lao UI Regular", "Noto Sans Lao Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular", "Noto Sans Linear B Regular",
                "Noto Sans Lisu Regular", "Noto Sans Lycian Regular",
                "Noto Sans Lydian Regular",
                "Noto Sans Malayalam UI Regular", "Noto Sans Malayalam Regular",
                "Noto Sans Mandaic Regular", "Noto Sans Meetei Mayek Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular", "Noto Sans Myanmar Regular",
                "Noto Sans New Tai Lue Regular", "Noto Sans NKo Regular",
                "Noto Sans Ogham Regular", "Noto Sans Ol Chiki Regular",
                "Noto Sans Old Italic Regular", "Noto Sans Old Persian Regular",
                "Noto Sans Old South Arabian Regular",
                "Noto Sans Old Turkic Regular",
                "Noto Sans Oriya UI Regular", "Noto Sans Oriya Regular",
                "Noto Sans Osmanya Regular", "Noto Sans Phags Pa Regular",
                "Noto Sans Phoenician Regular", "Noto Sans Rejang Regular",
                "Noto Sans Runic Regular", "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular", "Noto Sans Shavian Regular",
                "Noto Sans Sinhala Regular", "Noto Sans Sundanese Regular",
                "Noto Sans Syloti Nagri Regular", "Noto Sans Symbols Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Syriac Estrangela Regular",
                "Noto Sans Syriac Western Regular", "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular", "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular", "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular", "Noto Sans Tamil Regular",
                "Noto Sans Telugu UI Regular", "Noto Sans Telugu Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular", "Noto Sans Thai Regular",
                "Noto Sans Tibetan Regular", "Noto Sans Tifinagh Regular",
                "Noto Sans Ugaritic Regular", "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",
                "Noto Kufi Arabic Regular", "Noto Emoji Regular",
                "DejaVu Sans Oblique", "Arundina Italic",
                "Arundina Sans Italic", "TSCu_Paranar Italic",
                "DejaVu Sans Book", "Arundina Regular", "Arundina Sans Regular",
                "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "Gargi Regular", "TSCu_Paranar Regular",
                "Tibetan Machine Uni Regular", "Droid Sans Fallback Regular",
                "Unifont Medium", "unifont Medium", "Unifont Upper Medium",
                "Unifont Sample Medium";

@water-color: #b5d0d0;
@land-color: #f2efe9;

@standard-halo-radius: 1;
@standard-halo-fill: rgba(255,255,255,0.6);

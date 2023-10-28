#!/bin/sh
set -e

FONTDIR="./fonts"

mkdir -p "${FONTDIR}"

# download filename url
download() {
  ## Download if newer, and if curl fails, clean up and exit
  curl --fail --compressed -A "get-fonts.sh/osm-carto" -o "$1" -z "$1" -L "$2" || { echo "Failed to download $1 $2"; rm -f "$1"; exit 1; }
}

# TTF Hinted Noto Fonts

# Fonts available in regular, bold, and italic
REGULAR_BOLD_ITALIC="NotoSans"

# Fonts available in regular and bold
REGULAR_BOLD="NotoSansAdlamUnjoined;adlam
NotoSansArabicUI;arabic
NotoSansArmenian;armenian
NotoSansBalinese;balinese
NotoSansBamum;bamum
NotoSansBengaliUI;bengali
NotoSansCanadianAboriginal;canadian-aboriginal
NotoSansCham;cham
NotoSansCherokee;cherokee
NotoSansDevanagariUI;devanagari
NotoSansEthiopic;ethiopic
NotoSansGeorgian;georgian
NotoSansGujaratiUI;gujarati
NotoSansGurmukhiUI;gurmukhi
NotoSansHebrew;hebrew
NotoSansJavanese;javanese
NotoSansKannadaUI;kannada
NotoSansKayahLi;kayah-li
NotoSansKhmerUI;khmer
NotoSansLaoUI;lao
NotoSansLisu;lisu
NotoSansMalayalamUI;malayalam
NotoSansMyanmarUI;myanmar
NotoSansOlChiki;ol-chiki
NotoSansOriya;oriya
NotoSansSinhalaUI;sinhala
NotoSansSundanese;sundanese
NotoSansSymbols;symbols
NotoSansTaiTham;tai-tham
NotoSansTamilUI;tamil
NotoSansTeluguUI;telugu
NotoSansThaana;thaana
NotoSansThaiUI;thai
NotoSerifTibetan;tibetan"

# Fonts with regular and black, but no bold
REGULAR_BLACK="NotoSansSyriac;syriac"

# Fonts only available in regular
REGULAR="NotoSansBatak;batak
NotoSansBuginese;buginese
NotoSansBuhid;buhid
NotoSansChakma;chakma
NotoSansCoptic;coptic
NotoSansHanunoo;hanunoo
NotoSansLepcha;lepcha
NotoSansLimbu;limbu
NotoSansMandaic;mandaic
NotoSansMongolian;mongolian
NotoSansNewTaiLue;new-tai-lue
NotoSansNKo;nko
NotoSansOsage;osage
NotoSansOsmanya;osmanya
NotoSansSamaritan;samaritan
NotoSansSaurashtra;saurashtra
NotoSansShavian;shavian
NotoSansSymbols2;symbols
NotoSansTagalog;tagalog
NotoSansTagbanwa;tagbanwa
NotoSansTaiLe;tai-le
NotoSansTaiViet;tai-viet
NotoSansTifinagh;tifinagh
NotoSansVai;vai
NotoSansYi;yi"

# Download the fonts in the lists above

for font in $REGULAR_BOLD_ITALIC; do
  regular="$font-Regular.ttf"
  bold="$font-Bold.ttf"
  italic="$font-Italic.ttf"
  download "${FONTDIR}/${regular}" "https://notofonts.github.io/latin-greek-cyrillic/fonts/${font}/hinted/ttf/${regular}"
  download "${FONTDIR}/${bold}" "https://notofonts.github.io/latin-greek-cyrillic/fonts/${font}/hinted/ttf/${bold}"
  download "${FONTDIR}/${italic}" "https://notofonts.github.io/latin-greek-cyrillic/fonts/${font}/hinted/ttf/${italic}"
done

for fontDir in $REGULAR_BOLD; do
  IFS=";" read -r -a arr <<< "${fontDir}"
  font="${arr[0]}"
  subfolder="${arr[1]}"
  regular="$font-Regular.ttf"
  bold="$font-Bold.ttf"
  # remove UI from South Asian scripts path (not consistent with Arabic, Khmer, Thai)
  font="${font/BengaliUI/Bengali}"
  font="${font/GujaratiUI/Gujarati}"
  font="${font/GurmukhiUI/Gurmukhi}"
  font="${font/KannadaUI/Kannada}"
  font="${font/MalayalamUI/Malayalam}"
  font="${font/SinhalaUI/Sinhala}"
  font="${font/TamilUI/Tamil}"
  font="${font/TeluguUI/Telugu}"
  download "${FONTDIR}/${regular}" "https://notofonts.github.io/${subfolder}/fonts/${font}/hinted/ttf/${regular}"
  download "${FONTDIR}/${bold}" "https://notofonts.github.io/${subfolder}/fonts/${font}/hinted/ttf/${bold}"
done

for fontDir in $REGULAR_BLACK; do
  IFS=";" read -r -a arr <<< "${fontDir}"
  font="${arr[0]}"
  subfolder="${arr[1]}"
  regular="$font-Regular.ttf"
  black="$font-Black.ttf"
  download "${FONTDIR}/${regular}" "https://notofonts.github.io/${subfolder}/fonts/${font}/hinted/ttf/${regular}"
  download "${FONTDIR}/${black}" "https://notofonts.github.io/${subfolder}/fonts/${font}/hinted/ttf/${black}"
done

for fontDir in $REGULAR; do
  IFS=";" read -r -a arr <<< "${fontDir}"
  font="${arr[0]}"
  subfolder="${arr[1]}"
  regular="$font-Regular.ttf"
  download "${FONTDIR}/${regular}" "https://notofonts.github.io/${subfolder}/fonts/${font}/hinted/ttf/${regular}"
done

# Other noto fonts which don't follow the URL pattern above
download "${FONTDIR}/NotoSansCJKjp-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
download "${FONTDIR}/NotoSansCJKjp-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"

# Fonts in zipfiles need a temporary directory
TMPDIR=$(mktemp -d -t get-fonts.XXXXXXXXX)
trap "rm -rf ${TMPDIR} ${FONTDIR}/static" EXIT

# Noto Emoji B&W isn't available as a separate download, so we need to download the package and unzip it
curl --fail -A "get-fonts.sh/osm-carto" -o "${TMPDIR}/Noto_Emoji.zip" -L 'https://fonts.google.com/download?family=Noto%20Emoji'

unzip -oqq "${TMPDIR}/Noto_Emoji.zip" static/NotoEmoji-Regular.ttf static/NotoEmoji-Bold.ttf -d "${FONTDIR}"
mv "${FONTDIR}/static/NotoEmoji-Regular.ttf" "${FONTDIR}"
mv "${FONTDIR}/static/NotoEmoji-Bold.ttf" "${FONTDIR}"

curl --fail -A "get-fonts.sh/osm-carto" -o "${TMPDIR}/hanazono.zip" -L 'https://mirrors.dotsrc.org/osdn/hanazono-font/68253/hanazono-20170904.zip'

unzip -oqq "${TMPDIR}/hanazono.zip" HanaMinA.ttf HanaMinB.ttf -d "${FONTDIR}"

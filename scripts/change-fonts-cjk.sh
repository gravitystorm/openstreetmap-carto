#!/bin/sh
set -e

FONTDIR="./fonts"
prevcjk=""

mkdir -p "${FONTDIR}"

# download filename url
download() {
  ## Download if newer, and if curl fails, clean up and exit
  curl --fail --compressed -A "get-fonts.sh/osm-carto" -o "$1" -z "$1" -L "$2" || { echo "Failed to download $1 $2"; rm -f "$1"; exit 1; }
}

CJKLOCALES="jp
kr
tc
sc
hk"

echo "--------------------------------------"
echo -n "1. Japanese (default)"
if [ -e "./fonts/NotoSansCJKjp-Regular.otf" ]; then
  echo " [downloaded]"
  prevcjk=jp
else
  echo ""
fi

echo -n "2. Korean"
if [ -e "./fonts/NotoSansCJKkr-Regular.otf" ]; then
  echo " [downloaded]"
  prevcjk=kr
else
  echo ""
fi

echo -n "3. Simplified Chinese"
if [ -e "./fonts/NotoSansCJKsc-Regular.otf" ]; then
  echo " [downloaded]"
  prevcjk=sc
else
  echo ""
fi

echo -n "4. Traditional Chinese"
if [ -e "./fonts/NotoSansCJKtc-Regular.otf" ]; then
  echo " [downloaded]"
  prevcjk=tc
else
  echo ""
fi

echo -n "5. Traditional Chinese (Hong Kong)"
if [ -e "./fonts/NotoSansCJKhk-Regular.otf" ]; then
  echo " [downloaded]"
  prevcjk=hk
else
  echo ""
fi
echo "--------------------------------------"

while true; do
  read -p "Enter which CJK language is prefered above [1-5]: " cjklang

  if [ "$cjklang" = "1" ]; then
    for font in $CJKLOCALES; do
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Regular.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Regular.otf"; fi
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Bold.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Bold.otf"; fi
      sed -i "s/Noto Sans CJK `echo ${font} | tr [:lower:] [:upper:]`/Noto Sans CJK JP/g" ./style/fonts.mss
    done
    download "${FONTDIR}/NotoSansCJKjp-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
    download "${FONTDIR}/NotoSansCJKjp-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"
    break
  elif [ "$cjklang" = "2" ]; then
    for font in $CJKLOCALES; do
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Regular.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Regular.otf"; fi
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Bold.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Bold.otf"; fi
      sed -i "s/Noto Sans CJK `echo ${font} | tr [:lower:] [:upper:]`/Noto Sans CJK KR/g" ./style/fonts.mss
    done
    download "${FONTDIR}/NotoSansCJKkr-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Regular.otf"
    download "${FONTDIR}/NotoSansCJKkr-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Bold.otf"
    break
  elif [ "$cjklang" = "3" ]; then
    for font in $CJKLOCALES; do
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Regular.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Regular.otf"; fi
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Bold.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Bold.otf"; fi
      sed -i "s/Noto Sans CJK `echo ${font} | tr [:lower:] [:upper:]`/Noto Sans CJK SC/g" ./style/fonts.mss
    done
    download "${FONTDIR}/NotoSansCJKsc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Regular.otf"
    download "${FONTDIR}/NotoSansCJKsc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Bold.otf"
    break
  elif [ "$cjklang" = "4" ]; then
    for font in $CJKLOCALES; do
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Regular.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Regular.otf"; fi
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Bold.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Bold.otf"; fi
      sed -i "s/Noto Sans CJK `echo ${font} | tr [:lower:] [:upper:]`/Noto Sans CJK TC/g" ./style/fonts.mss
    done
    download "${FONTDIR}/NotoSansCJKtc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Regular.otf"
    download "${FONTDIR}/NotoSansCJKtc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Bold.otf"
    break
  elif [ "$cjklang" = "5" ]; then
    for font in $CJKLOCALES; do
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Regular.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Regular.otf"; fi
      if [ -e "${FONTDIR}/NotoSansCJK${font}-Bold.otf" ]; then rm "${FONTDIR}/NotoSansCJK${font}-Bold.otf"; fi
      sed -i "s/Noto Sans CJK `echo ${font} | tr [:lower:] [:upper:]`/Noto Sans CJK HK/g" ./style/fonts.mss
    done
    download "${FONTDIR}/NotoSansCJKhk-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChineseHK/NotoSansCJKhk-Regular.otf"
    download "${FONTDIR}/NotoSansCJKhk-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChineseHK/NotoSansCJKhk-Bold.otf"
    break
  fi
done

echo "\nDone."
echo "Execute 'carto project.mml > mapnik.xml' to apply the change."

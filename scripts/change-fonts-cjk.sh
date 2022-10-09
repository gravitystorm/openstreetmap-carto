#!/bin/sh
set -e

FONTDIR="./fonts"

mkdir -p "${FONTDIR}"

# download filename url
download() {
  ## Download if newer, and if curl fails, clean up and exit
  curl --fail --compressed -A "get-fonts.sh/osm-carto" -o "$1" -z "$1" -L "$2" || { echo "Failed to download $1 $2"; rm -f "$1"; exit 1; }
}

case "$1" in
  "JP"|"jp")
    download "${FONTDIR}/NotoSansCJKjp-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
    download "${FONTDIR}/NotoSansCJKjp-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"
    sed -i "s/Noto Sans CJK (JP|KR|SC|TC|HK)/Noto Sans CJK JP/g" ./style/fonts.mss
    ;;
  "KR"|"kr")
    download "${FONTDIR}/NotoSansCJKkr-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Regular.otf"
    download "${FONTDIR}/NotoSansCJKkr-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/Korean/NotoSansCJKkr-Bold.otf"
    sed -i "s/Noto Sans CJK (JP|KR|SC|TC|HK)/Noto Sans CJK KR/g" ./style/fonts.mss
    ;;
  "TC"|"tc")
    download "${FONTDIR}/NotoSansCJKsc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Regular.otf"
    download "${FONTDIR}/NotoSansCJKsc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/SimplifiedChinese/NotoSansCJKsc-Bold.otf"
    sed -i "s/Noto Sans CJK (JP|KR|SC|TC|HK)/Noto Sans CJK TC/g" ./style/fonts.mss
    ;;
  "SC"|"sc")
    download "${FONTDIR}/NotoSansCJKtc-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Regular.otf"
    download "${FONTDIR}/NotoSansCJKtc-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChinese/NotoSansCJKtc-Bold.otf"
    sed -i "s/Noto Sans CJK (JP|KR|SC|TC|HK)/Noto Sans CJK SC/g" ./style/fonts.mss
    ;;
  "HK"|"hk")
    download "${FONTDIR}/NotoSansCJKhk-Regular.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChineseHK/NotoSansCJKhk-Regular.otf"
    download "${FONTDIR}/NotoSansCJKhk-Bold.otf" "https://github.com/googlefonts/noto-cjk/raw/main/Sans/OTF/TraditionalChineseHK/NotoSansCJKhk-Bold.otf"
    sed -i "s/Noto Sans CJK (JP|KR|SC|TC|HK)/Noto Sans CJK HK/g" ./style/fonts.mss
    ;;
  *)
    echo "Usage: change-fonts-cjk.sh jp|kr|sc|tc|hk"
    ;;
esac

echo "Done."

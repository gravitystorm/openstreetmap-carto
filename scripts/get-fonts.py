#!/usr/bin/env python3
# This script downloads several built fonts from repos of https://github.com/notofonts
# Additional fonts can be found on https://notofonts.github.io

import os
import requests
import tempfile
import shutil
import warnings
import zipfile

FONTDIR = os.environ.get("FONTDIR", "./fonts")

try:
    os.mkdir(FONTDIR)
except FileExistsError:
    warnings.warn("Font directory already exists")

# Fonts available in regular, bold, and italic
REGULAR_BOLD_ITALIC = ["NotoSans"]

# Fonts available in regular and bold
REGULAR_BOLD = [
    "NotoSansAdlamUnjoined",
    "NotoSansArabic",
    "NotoSansArmenian",
    "NotoSansBalinese",
    "NotoSansBamum",
    "NotoSansBengaliUI",
    "NotoSansCanadianAboriginal",
    "NotoSansCham",
    "NotoSansCherokee",
    "NotoSansDevanagariUI",
    "NotoSansEthiopic",
    "NotoSansGeorgian",
    "NotoSansGujaratiUI",
    "NotoSansGurmukhiUI",
    "NotoSansHebrew",
    "NotoSansJavanese",
    "NotoSansKannadaUI",
    "NotoSansKayahLi",
    "NotoSansKhmerUI",
    "NotoSansLaoUI",
    "NotoSansLisu",
    "NotoSansMalayalamUI",
    "NotoSansMyanmarUI",
    "NotoSansOlChiki",
    "NotoSansOriya",
    "NotoSansSinhalaUI",
    "NotoSansSundanese",
    "NotoSansSymbols",
    "NotoSansTaiTham",
    "NotoSansTamilUI",
    "NotoSansTeluguUI",
    "NotoSansThaana",
    "NotoSansThaiUI",
    "NotoSerifTibetan",
]

# Fonts with regular and black, but no bold
REGULAR_BLACK = ["NotoSansSyriac"]

# Fonts only available in regular
REGULAR = [
    "NotoSansBatak",
    "NotoSansBuginese",
    "NotoSansBuhid",
    "NotoSansChakma",
    "NotoSansCoptic",
    "NotoSansHanunoo",
    "NotoSansLepcha",
    "NotoSansLimbu",
    "NotoSansMandaic",
    "NotoSansMongolian",
    "NotoSansNewTaiLue",
    "NotoSansNKo",
    "NotoSansOsage",
    "NotoSansOsmanya",
    "NotoSansSamaritan",
    "NotoSansSaurashtra",
    "NotoSansShavian",
    "NotoSansSymbols2",
    "NotoSansTagalog",
    "NotoSansTagbanwa",
    "NotoSansTaiLe",
    "NotoSansTaiViet",
    "NotoSansTifinagh",
    "NotoSansVai",
    "NotoSansYi",
]

SOUTH_ASIAN_UI_FONTS = [
    "BengaliUI",
    "DevanagariUI",
    "GujaratiUI",
    "GurmukhiUI",
    "KannadaUI",
    "MalayalamUI",
    "SinhalaUI",
    "TamilUI",
    "TeluguUI",
]

# hyphenated or irregular Noto repo names
NOTO_REPO_FOR_FONT = {
    "NotoSans": "latin-greek-cyrillic",
    "NotoSansAdlamUnjoined": "adlam",
    "NotoSansCanadianAboriginal": "canadian-aboriginal",
    "NotoSansKayahLi": "kayah-li",
    "NotoSansNewTaiLue": "new-tai-lue",
    "NotoSansOlChiki": "ol-chiki",
    "NotoSansSymbols2": "symbols",
    "NotoSansTaiLe": "tai-le",
    "NotoSansTaiTham": "tai-tham",
    "NotoSansTaiViet": "tai-viet",
    "NotoSerifTibetan": "tibetan",
}


# Download the fonts in the lists above
def findFontUrls(fontName, modifier, useRepo=False):
    # remove 'UI' from South Asian font names for subfolder name
    if fontName.replace("NotoSans", "") in SOUTH_ASIAN_UI_FONTS:
        subfolder = fontName.replace("UI", "")
    else:
        subfolder = fontName

    # pick up regular and irregular repo names for path
    repo = NOTO_REPO_FOR_FONT.get(
        fontName, fontName.replace("NotoSans", "").replace("UI", "").lower()
    )

    return [
        f"https://cdn.jsdelivr.net/gh/notofonts/notofonts.github.io/fonts/{subfolder}/hinted/ttf/{fontName}-{modifier}.ttf",
        f"https://notofonts.github.io/{repo}/fonts/{subfolder}/hinted/ttf/{fontName}-{modifier}.ttf",
    ]


def downloadToFile(urls, destination, dir=FONTDIR):
    headers = {"User-Agent": "get-fonts.py/osm-carto"}

    try:
        r = requests.get(urls[0], headers=headers)
        if r.status_code != 200:
            if len(urls) > 1:
                warnings.warn(f"Failed to download {urls[0]}, retrying with repo HEAD")
                downloadToFile(urls[1:], destination, dir=dir)
            else:
                raise Exception
        with open(os.path.join(dir, destination), "wb") as f:
            f.write(r.content)
    except:
        raise Exception(f"Failed to download {url}")


for font in REGULAR_BOLD + REGULAR_BOLD_ITALIC + REGULAR_BLACK + REGULAR:
    regularFontUrls = findFontUrls(font, "Regular")
    downloadToFile(regularFontUrls, f"{font}-Regular.ttf")

    if (font in REGULAR_BOLD) or (font in REGULAR_BOLD_ITALIC):
        boldFontUrls = findFontUrls(font, "Bold")
        downloadToFile(boldFontUrls, f"{font}-Bold.ttf")

    if font in REGULAR_BOLD_ITALIC:
        italicFontUrls = findFontUrls(font, "Italic")
        downloadToFile(italicFontUrls, f"{font}-Italic.ttf")

    if font in REGULAR_BLACK:
        blackFontUrls = findFontUrls(font, "Black")
        downloadToFile(blackFontUrls, f"{font}-Black.ttf")

# Other noto fonts which don't follow the URL pattern above

# CJK fonts
downloadToFile(
    [
        "https://github.com/notofonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf"
    ],
    "NotoSansCJKjp-Regular.otf",
)
downloadToFile(
    [
        "https://github.com/notofonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Bold.otf"
    ],
    "NotoSansCJKjp-Bold.otf",
)

# Fonts in zipfiles need a temporary directory
TMPDIR = tempfile.mkdtemp(prefix="get-fonts.")

# Noto Emoji B&W isn't available as a separate download, so we need to download the package and unzip it
downloadToFile(
    ["https://fonts.google.com/download?family=Noto%20Emoji"],
    "Noto_Emoji.zip",
    dir=TMPDIR,
)
emojiPath = os.path.join(TMPDIR, "Noto_Emoji.zip")
emojiExtract = ["NotoEmoji-Regular.ttf", "NotoEmoji-Bold.ttf"]
with zipfile.ZipFile(emojiPath, "r") as zip_ref:
    for file in emojiExtract:
        source = zip_ref.getinfo(f"static/{file}")
        zip_ref.extract(source, FONTDIR)
        # move from FONTDIR/static/x to overwrite FONTDIR/x
        unzipSrc = os.path.join(FONTDIR, file)
        if os.path.exists(unzipSrc):
            os.remove(unzipSrc)
        shutil.move(os.path.join(FONTDIR, "static", file), FONTDIR)

downloadToFile(
    ["https://mirrors.dotsrc.org/osdn/hanazono-font/68253/hanazono-20170904.zip"],
    "hanazono.zip",
    dir=TMPDIR,
)
hanazonoPath = os.path.join(TMPDIR, "hanazono.zip")
with zipfile.ZipFile(hanazonoPath, "r") as zip_ref:
    for file in ["HanaMinA.ttf", "HanaMinB.ttf"]:
        source = zip_ref.getinfo(file)
        zip_ref.extract(source, FONTDIR)

# clean up tmp directories
shutil.rmtree(TMPDIR)
fontdir_static = os.path.join(FONTDIR, "static")
if os.path.exists(fontdir_static):
    shutil.rmtree(fontdir_static)


The reef patterns are rasterized and colored versions of the provided SVG

```
convert -depth 8 reef.svg reef_raw.png

convert -depth 8 -size 256x256 xc:"#969696" \( reef_raw.png -negate \) -set colorspace RGB -alpha Off -compose CopyOpacity -composite -set colorspace sRGB +gamma - beach_coarse.png
convert -depth 8 -size 256x256 xc:"#549ccd" \( reef_raw.png -negate \) -set colorspace RGB -alpha Off -compose CopyOpacity -composite -set colorspace sRGB +gamma - reef.png
```

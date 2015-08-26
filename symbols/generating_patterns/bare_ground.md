
The bare ground patterns are rasterized and colored versions of the provided SVGs

```
convert -depth 8 -density 90 pattern.svg pattern.png

convert -depth 8 -size 256x256 xc:"$SYMBOL" \( pattern.png -negate \) -set colorspace RGB -alpha Off -compose CopyOpacity -composite -set colorspace sRGB +gamma - pattern_overlay.png
```

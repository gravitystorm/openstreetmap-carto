WOOD_SYM = "\#6f965a"

all: wood_mixed.png wood_needle.png wood_broad.png
	
wood_mixed.png: generating_patterns/wood_mixed.png
	convert -depth 8 -size 512x512 xc:$(WOOD_SYM) \( $< -negate \) -set colorspace RGB -alpha off -compose CopyOpacity -composite -set colorspace sRGB +gamma - $@

wood_needle.png: generating_patterns/wood_needle.png
	convert -depth 8 -size 512x512 xc:$(WOOD_SYM) \( $< -negate \) -set colorspace RGB -alpha off -compose CopyOpacity -composite -set colorspace sRGB +gamma - $@

wood_broad.png: generating_patterns/wood_broad.png
	convert -depth 8 -size 512x512 xc:$(WOOD_SYM) \( $< -negate \) -set colorspace RGB -alpha off -compose CopyOpacity -composite -set colorspace sRGB +gamma - $@

generating_patterns/wood_mixed.png: generating_patterns/wood_mixed.svg
	convert $< $@
	
generating_patterns/wood_needle.png: generating_patterns/wood_needle.svg
	convert $< $@
	
generating_patterns/wood_broad.png: generating_patterns/wood_broad.svg
	convert $< $@

clean:
	rm wood*.png

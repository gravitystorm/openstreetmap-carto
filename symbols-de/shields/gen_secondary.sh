#!/bin/bash
#
# Secondary roads will be rendered like primary, but with
# white background
#
#
src_color="#f0ca00"
tgt_color="#ffffff"

for f in primary*.svg; do
  if [ -h $f ]; then
    ln -sf $f secondary_${f:8}
  else
    sed -e "s/$src_color/$tgt_color/g" $f >secondary_${f:8}
  fi
done

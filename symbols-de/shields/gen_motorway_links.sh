#!/bin/bash
#
# generate symlinks for motorway shields with with 1 and 2

# motorway_1xY.svg an motorway_2xY.svg should be symbolic links
for ((x=1;x<3;x++)); do
  for ((y=1;y<5;y++)); do
    rm -f motorway_${x}x${y}.svg
    echo -n "generating symlink motorway_${x}x${y}.svg.. "
    ln -sf motorway_3x${y}.svg motorway_${x}x${y}.svg
    echo "done."
  done
done

# motorway_1xY.svg an motorway_2xY.svg should be symbolic links
for ((x=1;x<3;x++)); do
  for ((y=1;y<5;y++)); do
    for z in z16 z18; do
      rm -f motorway_${x}x${y}_${z}.svg
      echo -n "generating symlink motorway_${x}x${y}_${z}.svg.. "
      ln -sf motorway_3x${y}_${z}.svg motorway_${x}x${y}_${z}.svg
      echo "done."
    done
  done
done


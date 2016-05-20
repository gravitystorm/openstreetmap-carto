#!/bin/bash
#
# generate shield files for primary roads from master file primary_3x1.svg
#
# primary_3x1.svg has been manually modeled after the original file
# from the international style primary_XxY.svg can then be generated accordingly
# widths and heights are extracted from the respective original files during
# this process
#
MASTER=primary_3x1.svg

# location of original files
DIR=../../symbols/shields

# primary_1xY.svg an primary_2xY.svg should be symbolic links
for ((x=1;x<3;x++)); do
  for ((y=1;y<5;y++)); do
    rm -f primary_${x}x${y}.svg
    echo -n "generating symlink primary_${x}x${y}.svg.. "
    ln -sf primary_3x${y}.svg primary_${x}x${y}.svg
    echo "done."
  done
done

# generate the rest from primary_3x1.svg
for ((j=1;j<5;j++)); do
  for ((i=4;i<12;i++)); do
    echo -n "generating primary_${i}x${j}.svg.. "
    # extract width and height from the original file
    viewBox=$(grep viewBox $DIR/primary_${i}x${j}.svg | sed -e 's/.* viewBox=\"\([^\"]\+\).*/\1/g')
    viewBox=(${viewBox// / })
    w1=$(echo ${viewBox[2]} |sed -e 's/\.0\+$//g')
    w2=$(echo $w1-1.875 |bc)
    h1=$(echo ${viewBox[3]} |sed -e 's/\.0\+$//g')
    h2=$(echo $h1-1.875 |bc)
    sed -e "s/27/$w1/g" -e "s/25.125/$w2/g" -e "s/15/$h1/g" -e "s/13.125/$h2/g" $MASTER >primary_${i}x${j}.svg
    echo "done."
  done
done

# primary_1xY.svg an primary_2xY.svg should be symbolic links
for ((x=1;x<3;x++)); do
  for ((y=1;y<5;y++)); do
    for z in z16 z18; do
      rm -f primary_${x}x${y}_${z}.svg
      echo -n "generating symlink primary_${x}x${y}_${z}.svg.. "
      ln -sf primary_3x${y}_${z}.svg primary_${x}x${y}_${z}.svg
      echo "done."
    done
  done
done

# continue with z16 and z18 files
for ((j=1;j<5;j++)); do
  for ((i=3;i<12;i++)); do
    for z in z16 z18; do
      echo -n "generating primary_${i}x${j}_${z}.svg.. "
      # extract width and height from the original file
      viewBox=$(grep viewBox $DIR/primary_${i}x${j}_${z}.svg | sed -e 's/.* viewBox=\"\([^\"]\+\).*/\1/g')
      viewBox=(${viewBox// / })
      w1=$(echo ${viewBox[2]} |sed -e 's/\.0\+$//g')
      w2=$(echo $w1-1.875 |bc)
      h1=$(echo ${viewBox[3]} |sed -e 's/\.0\+$//g')
      h2=$(echo $h1-1.875 |bc)
      sed -e "s/27/$w1/g" -e "s/25.125/$w2/g" -e "s/15/$h1/g" -e "s/13.125/$h2/g" $MASTER >primary_${i}x${j}_${z}.svg
      echo "done."
    done
  done
done


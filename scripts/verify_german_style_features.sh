#!/bin/sh
#
# Render examples where german style is different from upstream
#
# Some tile positions may need to be changed in future as data will change

if ! command -v display >/dev/null; then
  echo "ERROR: this script will need imagemagick" 1>&2
  exit 1
fi

if ! [ -f osm-de.xml ]; then
  echo "ERROR: unable to find osm-de.xml in current directory" 1>&2
  exit 1
fi

# Major roads
./scripts/render_single_tile.py -s osm-de.xml -m 13 4292 2803 -o /tmp/foo.png
montage -label "motorway+shield, primary, secondary, tertiary" /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-major-roads.png
rm /tmp/foo.png
display /tmp/test-major-roads.png

# construction + proposed
./scripts/render_single_tile.py -s osm-de.xml -m 15 17092 11446 -o /tmp/foo.png
montage -label "motorway construction+proposed" /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-motorway-const.png
rm /tmp/foo.png
display /tmp/test-motorway-const.png

# cycleway, footway, path
./scripts/render_single_tile.py -s osm-de.xml -m 17 69761 45470 -o /tmp/foo.png
montage -label "cycleway, footway, path" /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-cycle-foot.png
display /tmp/test-cycle-foot.png

# soccer, tennis, grade1
./scripts/render_single_tile.py -s osm-de.xml -m 16 34299 22501 -o /tmp/foo.png
montage -label "soccer, tennis, tracktype=grade1" /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-soccer-tennis.png
display /tmp/test-soccer-tennis.png

# castle + forest type
./scripts/render_single_tile.py -s osm-de.xml -m 14 8593 5598 -o /tmp/foo.png
montage -label "castle runis=yes/no + forest type" /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-castle.png
display /tmp/test-castle.png

# l10n
./scripts/render_single_tile.py -s osm-de.xml -m 8 142 81 -o /tmp/foo.png
montage -label "l10n"  /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-l10n.png
display /tmp/test-l10n.png

# l10 and street abbrev.
./scripts/render_single_tile.py -s osm-de.xml -m 17 68359 45239 -o /tmp/foo.png
montage -label "l10n + street abbrev."  /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-street.png
display /tmp/test-street.png

# living_street
./scripts/render_single_tile.py -s osm-de.xml -m 16 34323 22481 -o /tmp/foo.png
montage -label "living street (blue casing)"  /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-lstreet.png
display /tmp/test-lstreet.png

# pharmacy
./scripts/render_single_tile.py -s osm-de.xml -m 17 68615 45025 -o /tmp/foo.png
montage -label "pharmacy"  /tmp/foo.png -frame 10  -geometry +0+0 /tmp/test-pharmacy.png
display /tmp/test-pharmacy.png

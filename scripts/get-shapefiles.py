# get-shapefiles.py, ircama, 2016

import os
import errno
import tarfile,sys
import zipfile
import subprocess

try:
    import wget
except ImportError:
    sys.exit("""   Error: you need wget!
   run 'pip install wget'.""")

print "\nChecking shapeindex version:"
try:
    err = subprocess.call("bin/shapeindex -V", shell=False)
except:
    sys.exit("""   Error: you need shapeindex inside the ./bin directory!
   Check instructions.""")

if os.path.isfile("project.mml"):
    print
else:
    sys.exit("""\n   Error: the current directory does not include project.mml.
   Are you sure you are in the correct directory?""")

if os.path.isdir("data"):
    sys.exit("""\n   A directory named 'data' already exists.
   Please consider renaming it.""")

print

print "This script generates and populates the 'data' directory with all needed shapefiles.\n\n"
raw_input("Press Enter to continue...")

if not os.path.exists("data/world_boundaries"):
    os.makedirs("data/world_boundaries")

if not os.path.exists("data/simplified-water-polygons-complete-3857"):
    os.makedirs("data/simplified-water-polygons-complete-3857")

if not os.path.exists("data/ne_110m_admin_0_boundary_lines_land"):
    os.makedirs("data/ne_110m_admin_0_boundary_lines_land")

if not os.path.exists("data/water-polygons-split-3857"):
    os.makedirs("data/water-polygons-split-3857")

print

# world_boundaries
print "Downloading world_boundaries..."
url = 'http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding world_boundaries..."
tar = tarfile.open("data/world_boundaries-spherical.tgz")
tar.extractall("data")
tar.close()

print

# simplified-water-polygons-complete-3857
print "Downloading simplified-water-polygons-complete-3857..."
url = 'http://data.openstreetmapdata.com/simplified-water-polygons-complete-3857.zip'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding simplified-water-polygons-complete-3857..."
zip = zipfile.ZipFile('data/simplified-water-polygons-complete-3857.zip')
zip.extractall("data")

print

# ne_110m_admin_0_boundary_lines_land
print "Downloading ne_110m_admin_0_boundary_lines_land..."
url = 'http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding ne_110m_admin_0_boundary_lines_land..."
zip = zipfile.ZipFile('data/ne_110m_admin_0_boundary_lines_land.zip')
zip.extractall("data/ne_110m_admin_0_boundary_lines_land")

print

# water-polygons-split-3857
print "Downloading water-polygons-split-3857..."
url = 'http://data.openstreetmapdata.com/water-polygons-split-3857.zip'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding water-polygons-split-3857..."
zip = zipfile.ZipFile('data/water-polygons-split-3857.zip')
zip.extractall("data")

print

# antarctica-icesheet-polygons-3857
print "Downloading antarctica-icesheet-polygons-3857..."
url = 'http://data.openstreetmapdata.com/antarctica-icesheet-polygons-3857.zip'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding antarctica-icesheet-polygons-3857..."
zip = zipfile.ZipFile('data/antarctica-icesheet-polygons-3857.zip')
zip.extractall("data")

print

# antarctica-icesheet-outlines-3857
print "Downloading antarctica-icesheet-outlines-3857..."
url = 'http://data.openstreetmapdata.com/antarctica-icesheet-outlines-3857.zip'
filename = wget.download(url, "data")
print ". Done.\n"

print "Expanding antarctica-icesheet-outlines-3857..."
zip = zipfile.ZipFile('data/antarctica-icesheet-outlines-3857.zip')
zip.extractall("data")

print

#index
print "\nGoing to index shapefiles..."
raw_input("Press Enter to continue...")

subprocess.call("bin/shapeindex --shape_files data/simplified-water-polygons-complete-3857/simplified_water_polygons.shp")
subprocess.call("bin/shapeindex --shape_files data/water-polygons-split-3857/water_polygons.shp")
subprocess.call("bin/shapeindex --shape_files data/antarctica-icesheet-polygons-3857/icesheet_polygons.shp")
subprocess.call("bin/shapeindex --shape_files data/antarctica-icesheet-outlines-3857/icesheet_outlines.shp")
subprocess.call("bin/shapeindex --shape_files data/ne_110m_admin_0_boundary_lines_land/ne_110m_admin_0_boundary_lines_land.shp")

print

#finish
print "...done!"

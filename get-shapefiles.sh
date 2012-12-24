#!/bin/bash
set -e -u

# create and populate data dir

mkdir -p data/
mkdir -p data/world_boundaries
mkdir -p data/shoreline_300
mkdir -p data/ne_110m_admin_0_boundary_lines_land
mkdir -p data/ne_10m_populated_places
mkdir -p data/processed_p

# world_boundaries
echo "dowloading world_boundaries..."
curl -L -o data/world_boundaries-spherical.tgz http://tile.openstreetmap.org/world_boundaries-spherical.tgz
echo "expanding world_boundaries..."
tar -xzf data/world_boundaries-spherical.tgz -C data/

# shoreline_300
echo "dowloading shoreline_300..."
curl -L -o data/shoreline_300.tar.bz2 http://tile.openstreetmap.org/shoreline_300.tar.bz2
echo "expanding shoreline_300..."
tar -xjf data/shoreline_300.tar.bz2 -C data/shoreline_300/

# ne_110m_admin_0_boundary_lines_land
echo "dowloading ne_110m_admin_0_boundary_lines_land..."
curl -L -o data/ne_110m_admin_0_boundary_lines_land.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip
echo "expanding ne_110m_admin_0_boundary_lines_land..."
unzip -qq data/ne_110m_admin_0_boundary_lines_land.zip -d data/ne_110m_admin_0_boundary_lines_land/

# ne_10m_populated_places
echo "dowloading ne_10m_populated_places..."
curl -L -o data/ne_10m_populated_places.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip
echo "expanding ne_10m_populated_places..."
unzip -qq data/ne_10m_populated_places.zip -d data/ne_10m_populated_places/

# processed_p
echo "dowloading processed_p..."
curl -L -o data/processed_p.tar.bz2 http://tile.openstreetmap.org/processed_p.tar.bz2
echo "expanding processed_p..."
tar -xjf data/processed_p.tar.bz2 -C data/processed_p/

#process populated places
echo "processing ne_10m_populated_places..."
ogr2ogr data/ne_10m_populated_places/ne_10m_populated_places_fixed.shp data/ne_10m_populated_places/ne_10m_populated_places.shp

#clean up
echo "cleaning up..."
rm data/ne_10m_populated_places/ne_10m_populated_places.*

echo "...done!"

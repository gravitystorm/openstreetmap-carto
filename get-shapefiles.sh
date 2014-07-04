#!/bin/sh
set -e -u

UNZIP_OPTS=-qqun

# create and populate data dir

mkdir -p data/
mkdir -p data/world_boundaries
mkdir -p data/simplified-land-polygons-complete-3857
mkdir -p data/ne_110m_admin_0_boundary_lines_land
mkdir -p data/ne_10m_populated_places
mkdir -p data/land-polygons-split-3857

# world_boundaries
echo "dowloading world_boundaries..."
curl -z "data/world_boundaries-spherical.tgz" -L -o "data/world_boundaries-spherical.tgz" "http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz"
echo "expanding world_boundaries..."
tar -xzf data/world_boundaries-spherical.tgz -C data/

# simplified-land-polygons-complete-3857
echo "downloading simplified-land-polygons-complete-3857..."
curl -z "data/simplified-land-polygons-complete-3857.zip" -L -o "data/simplified-land-polygons-complete-3857.zip" "http://data.openstreetmapdata.com/simplified-land-polygons-complete-3857.zip"
echo "simplified-land-polygons-complete-3857..."
unzip $UNZIP_OPTS data/simplified-land-polygons-complete-3857.zip \
  simplified-land-polygons-complete-3857/simplified_land_polygons.shp \
  simplified-land-polygons-complete-3857/simplified_land_polygons.shx \
  simplified-land-polygons-complete-3857/simplified_land_polygons.prj \
  simplified-land-polygons-complete-3857/simplified_land_polygons.dbf \
  simplified-land-polygons-complete-3857/simplified_land_polygons.cpg \
  -d data/

# ne_110m_admin_0_boundary_lines_land
echo "dowloading ne_110m_admin_0_boundary_lines_land..."
curl -z data/ne_110m_admin_0_boundary_lines_land.zip -L -o data/ne_110m_admin_0_boundary_lines_land.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip
echo "expanding ne_110m_admin_0_boundary_lines_land..."
unzip $UNZIP_OPTS data/ne_110m_admin_0_boundary_lines_land.zip \
  ne_110m_admin_0_boundary_lines_land.shp \
  ne_110m_admin_0_boundary_lines_land.shx \
  ne_110m_admin_0_boundary_lines_land.prj \
  ne_110m_admin_0_boundary_lines_land.dbf \
  -d data/ne_110m_admin_0_boundary_lines_land/

# ne_10m_populated_places
echo "dowloading ne_10m_populated_places..."
curl -z data/ne_10m_populated_places.zip -L -o data/ne_10m_populated_places.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip
echo "expanding ne_10m_populated_places..."
unzip $UNZIP_OPTS data/ne_10m_populated_places.zip \
  ne_10m_populated_places.shp \
  ne_10m_populated_places.shx \
  ne_10m_populated_places.prj \
  ne_10m_populated_places.dbf \
  ne_10m_populated_places.cpg \
  -d data/ne_10m_populated_places/

# land-polygons-split-3857
echo "dowloading land-polygons-split-3857..."
curl -z "data/land-polygons-split-3857.zip" -L -o "data/land-polygons-split-3857.zip" "http://data.openstreetmapdata.com/land-polygons-split-3857.zip"
echo "expanding land-polygons-split-3857..."
unzip $UNZIP_OPTS data/land-polygons-split-3857.zip \
  land-polygons-split-3857/land_polygons.shp \
  land-polygons-split-3857/land_polygons.shx \
  land-polygons-split-3857/land_polygons.prj \
  land-polygons-split-3857/land_polygons.dbf \
  land-polygons-split-3857/land_polygons.cpg \
  -d data/


#process populated places
echo "processing ne_10m_populated_places..."
rm -f data/ne_10m_populated_places/ne_10m_populated_places_fixed.*
ogr2ogr --config SHAPE_ENCODING UTF8 data/ne_10m_populated_places/ne_10m_populated_places_fixed.shp data/ne_10m_populated_places/ne_10m_populated_places.shp

#index
echo "indexing shapefiles"

shapeindex --shape_files \
data/simplified-land-polygons-complete-3857/simplified_land_polygons.shp \
data/land-polygons-split-3857/land_polygons.shp \
data/ne_10m_populated_places/ne_10m_populated_places_fixed.shp \
data/ne_110m_admin_0_boundary_lines_land/ne_110m_admin_0_boundary_lines_land.shp


#clean up
echo "cleaning up..."
rm data/ne_10m_populated_places/ne_10m_populated_places.*

echo "...done!"

#!/bin/sh
set -e -u

UNZIP_OPTS=-qqun

# create and populate data dir
mkdir -p data/
mkdir -p data/world_boundaries
mkdir -p data/simplified-water-polygons-complete-3857
mkdir -p data/ne_110m_admin_0_boundary_lines_land
mkdir -p data/water-polygons-split-3857

# world_boundaries
echo "downloading world_boundaries..."
curl -z "data/world_boundaries-spherical.tgz" -L -o "data/world_boundaries-spherical.tgz" "http://planet.openstreetmap.org/historical-shapefiles/world_boundaries-spherical.tgz"
echo "expanding world_boundaries..."
tar -xzf data/world_boundaries-spherical.tgz -C data/

# simplified-water-polygons-complete-3857
echo "downloading simplified-water-polygons-complete-3857..."
curl -z "data/simplified-water-polygons-complete-3857.zip" -L -o "data/simplified-water-polygons-complete-3857.zip" "http://data.openstreetmapdata.com/simplified-water-polygons-complete-3857.zip"
echo "simplified-water-polygons-complete-3857..."
unzip $UNZIP_OPTS data/simplified-water-polygons-complete-3857.zip \
  simplified-water-polygons-complete-3857/simplified_water_polygons.shp \
  simplified-water-polygons-complete-3857/simplified_water_polygons.shx \
  simplified-water-polygons-complete-3857/simplified_water_polygons.prj \
  simplified-water-polygons-complete-3857/simplified_water_polygons.dbf \
  simplified-water-polygons-complete-3857/simplified_water_polygons.cpg \
  -d data/

# ne_110m_admin_0_boundary_lines_land
echo "downloading ne_110m_admin_0_boundary_lines_land..."
curl -z data/ne_110m_admin_0_boundary_lines_land.zip -L -o data/ne_110m_admin_0_boundary_lines_land.zip http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_boundary_lines_land.zip
echo "expanding ne_110m_admin_0_boundary_lines_land..."
unzip $UNZIP_OPTS data/ne_110m_admin_0_boundary_lines_land.zip \
  ne_110m_admin_0_boundary_lines_land.shp \
  ne_110m_admin_0_boundary_lines_land.shx \
  ne_110m_admin_0_boundary_lines_land.prj \
  ne_110m_admin_0_boundary_lines_land.dbf \
  -d data/ne_110m_admin_0_boundary_lines_land/

# water-polygons-split-3857
echo "downloading water-polygons-split-3857..."
curl -z "data/water-polygons-split-3857.zip" -L -o "data/water-polygons-split-3857.zip" "http://data.openstreetmapdata.com/water-polygons-split-3857.zip"
echo "expanding water-polygons-split-3857..."
unzip $UNZIP_OPTS data/water-polygons-split-3857.zip \
  water-polygons-split-3857/water_polygons.shp \
  water-polygons-split-3857/water_polygons.shx \
  water-polygons-split-3857/water_polygons.prj \
  water-polygons-split-3857/water_polygons.dbf \
  water-polygons-split-3857/water_polygons.cpg \
  -d data/

# antarctica-icesheet-polygons-3857
echo "downloading antarctica-icesheet-polygons-3857..."
curl -z "data/antarctica-icesheet-polygons-3857.zip" -L -o "data/antarctica-icesheet-polygons-3857.zip" "http://data.openstreetmapdata.com/antarctica-icesheet-polygons-3857.zip"
echo "expanding antarctica-icesheet-polygons-3857..."
unzip $UNZIP_OPTS data/antarctica-icesheet-polygons-3857.zip \
  antarctica-icesheet-polygons-3857/icesheet_polygons.shp \
  antarctica-icesheet-polygons-3857/icesheet_polygons.shx \
  antarctica-icesheet-polygons-3857/icesheet_polygons.prj \
  antarctica-icesheet-polygons-3857/icesheet_polygons.dbf \
  -d data/

# antarctica-icesheet-outlines-3857
echo "downloading antarctica-icesheet-outlines-3857..."
curl -z "data/antarctica-icesheet-outlines-3857.zip" -L -o "data/antarctica-icesheet-outlines-3857.zip" "http://data.openstreetmapdata.com/antarctica-icesheet-outlines-3857.zip"
echo "expanding antarctica-icesheet-outlines-3857..."
unzip $UNZIP_OPTS data/antarctica-icesheet-outlines-3857.zip \
  antarctica-icesheet-outlines-3857/icesheet_outlines.shp \
  antarctica-icesheet-outlines-3857/icesheet_outlines.shx \
  antarctica-icesheet-outlines-3857/icesheet_outlines.prj \
  antarctica-icesheet-outlines-3857/icesheet_outlines.dbf \
  -d data/

#index
echo "indexing shapefiles"
shapeindex --shape_files \
data/simplified-water-polygons-complete-3857/simplified_water_polygons.shp \
data/water-polygons-split-3857/water_polygons.shp \
data/antarctica-icesheet-polygons-3857/icesheet_polygons.shp \
data/antarctica-icesheet-outlines-3857/icesheet_outlines.shp \
data/ne_110m_admin_0_boundary_lines_land/ne_110m_admin_0_boundary_lines_land.shp

#finish
echo "...done!"

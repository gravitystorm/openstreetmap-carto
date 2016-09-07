-- These are optional but suggested indexes for rendering OpenStreetMap Carto
-- with a full planet database.
-- This file is generated with ./scripts/indexes.py --prefix planet_osm_hstore --indexes ../indexes-hstore.yml

CREATE INDEX planet_osm_hstore_roads_admin
  ON planet_osm_hstore_roads USING GIST (way)
  WHERE (tags->'boundary') = 'administrative';
CREATE INDEX planet_osm_hstore_roads_roads_ref
  ON planet_osm_hstore_roads USING GIST (way)
  WHERE (tags->'highway') IS NOT NULL AND (tags->'ref') IS NOT NULL;
CREATE INDEX planet_osm_hstore_roads_admin_low
  ON planet_osm_hstore_roads USING GIST (way)
  WHERE (tags->'boundary') = 'administrative' AND (tags->'admin_level') IN ('0', '1', '2', '3', '4');
CREATE INDEX planet_osm_hstore_line_ferry
  ON planet_osm_hstore_line USING GIST (way)
  WHERE (tags->'route') = 'ferry';
CREATE INDEX planet_osm_hstore_line_river
  ON planet_osm_hstore_line USING GIST (way)
  WHERE (tags->'waterway') = 'river';
CREATE INDEX planet_osm_hstore_line_name
  ON planet_osm_hstore_line USING GIST (way)
  WHERE (tags->'name') IS NOT NULL;
CREATE INDEX planet_osm_hstore_polygon_water
  ON planet_osm_hstore_polygon USING GIST (way)
  WHERE (tags->'waterway') IN ('dock', 'riverbank', 'canal')
    OR (tags->'landuse') IN ('reservoir', 'basin')
    OR (tags->'natural') IN ('water', 'glacier');
CREATE INDEX planet_osm_hstore_polygon_military
  ON planet_osm_hstore_polygon USING GIST (way)
  WHERE (tags->'landuse') = 'military';
CREATE INDEX planet_osm_hstore_polygon_nobuilding
  ON planet_osm_hstore_polygon USING GIST (way)
  WHERE (tags->'building') IS NULL;
CREATE INDEX planet_osm_hstore_polygon_name
  ON planet_osm_hstore_polygon USING GIST (way)
  WHERE (tags->'name') IS NOT NULL;
CREATE INDEX planet_osm_hstore_polygon_way_area_z6
  ON planet_osm_hstore_polygon USING GIST (way)
  WHERE way_area > 59750;
CREATE INDEX planet_osm_hstore_point_place
  ON planet_osm_hstore_point USING GIST (way)
  WHERE (tags->'place') IS NOT NULL AND (tags->'name') IS NOT NULL;

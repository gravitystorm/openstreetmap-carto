-- These are optional but suggested indexes for rendering OpenStreetMap Carto
-- with a full planet database.

-- Ideally the indexes would be created with fillfactor=100 when updates are not
-- consumed, but this does the simpler case of being used where minutely updates
-- are consumed.

-- A goal with the indexes is to have them general-purpose enough to not need
-- frequent changing with stylesheet changes, but to be usable with many
-- versions, and potentially other styles.

-- The point tables are small, but so are the partial indexes
CREATE INDEX planet_osm_point_place_low
  ON planet_osm_point USING gist (way)
  WHERE place IN ('city', 'town') AND name IS NOT NULL;

CREATE INDEX planet_osm_point_place
  ON planet_osm_point USING gist (way)
  WHERE place IS NOT NULL AND name IS NOT NULL;

CREATE INDEX planet_osm_point_name
  ON planet_osm_point USING gist (way)
  WHERE name IS NOT NULL;

-- Most rows in the line table are highways, but there are some indexes useful
-- for low zooms
CREATE INDEX planet_osm_line_name
  ON planet_osm_line USING gist (way)
  WHERE name IS NOT NULL;

CREATE INDEX planet_osm_line_ferry
  ON planet_osm_line USING gist (way)
  WHERE route = 'ferry';

CREATE INDEX planet_osm_line_river
  ON planet_osm_line USING gist (way)
  WHERE waterway = 'river';

-- The polygon table is by far the largest, and generally the slowest
CREATE INDEX planet_osm_polygon_name
  ON planet_osm_polygon USING gist (way)
  WHERE name IS NOT NULL;

CREATE INDEX planet_osm_polygon_nobuilding
  ON planet_osm_polygon USING gist (way)
  WHERE building IS NULL;

CREATE INDEX planet_osm_polygon_military
  ON planet_osm_polygon USING gist (way)
  WHERE landuse = 'military';

-- The roads table only has a subset of data, so it's just got some low-zoom
-- indexes and some fairly selective ones for high zoom
CREATE INDEX planet_osm_roads_admin_low
  ON planet_osm_roads USING gist (way)
  WHERE boundary = 'administrative' AND admin_level IN ('0', '1', '2', '3', '4');

CREATE INDEX planet_osm_roads_admin
  ON planet_osm_roads USING gist (way)
  WHERE boundary = 'administrative';

CREATE INDEX planet_osm_roads_road_ref
  ON planet_osm_roads USING gist (way)
  WHERE highway IS NOT NULL AND ref IS NOT NULL;

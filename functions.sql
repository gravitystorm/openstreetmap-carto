/* Additional database functions for openstreetmap-carto */

/* Access functions below adapted from https://github.com/imagico/osm-carto-alternative-colors/tree/591c861112b4e5d44badd108f4cd1409146bca0b/sql/roads.sql */

/* Simplified 'yes', 'destination', 'no', 'unknown', NULL scale for access restriction 
  'no' is returned if the rendering for highway category does not support 'restricted'.
  NULL is functionally equivalent to 'yes', but indicates the absence of a restriction 
  rather than a positive access = yes. 'unknown' corresponds to an uninterpretable 
  access restriction e.g. access=unknown or motorcar=occasionally  */
CREATE OR REPLACE FUNCTION carto_int_access(int_highway text, accesstag text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
	WHEN accesstag IN ('yes', 'designated', 'permissive') THEN 'yes'
	WHEN accesstag IN ('destination',  'delivery', 'customers') THEN
		CASE WHEN int_highway IN ('road', 'pedestrian') THEN 'restricted' ELSE 'no' END
	WHEN accesstag IN ('no', 'permit', 'private', 'agricultural', 'forestry', 'agricultural;forestry') THEN 'no'
	WHEN accesstag IS NULL THEN NULL
	ELSE 'unknown'
	END
$$;

/* Try to promote path to cycleway (if bicycle allowed), then bridleway (if horse)
   This duplicates existing behaviour where designated access is required */
CREATE OR REPLACE FUNCTION carto_path_type(bicycle text, horse text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
		WHEN bicycle IN ('designated') THEN 'cycleway'
		WHEN horse IN ('designated') THEN 'bridleway'
		ELSE 'path'
	END
$$;

/* Coalesce highways that will be treated in the same way, e.g. all roads become 'road'
   Note that bicycle, horse arguments are only relevant if considering highway=path */
CREATE OR REPLACE FUNCTION carto_highway_int_highway(highway text, bicycle text, horse text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE 
    WHEN highway IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                 'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'living_street', 'service', 'road') THEN 'road'
	WHEN highway IN ('footway', 'steps') THEN 'footway'
	WHEN highway = 'path' THEN carto_path_type(bicycle, horse)
	ELSE highway
	END
$$;

/* Return int_access value which will be used to determine access marking.
   Only a restricted number of types can be returned, with NULL corresponding to no access restriction */
CREATE OR REPLACE FUNCTION carto_highway_int_access(highway text, "access" text, foot text, bicycle text, horse text, motorcar text, motor_vehicle text, vehicle text)
  RETURNS text
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE carto_highway_int_highway(highway, bicycle, horse)
	WHEN 'road' THEN
		carto_int_access('road', CASE
			WHEN motorcar <> 'unknown' THEN motorcar
			WHEN motor_vehicle <> 'unknown' THEN motor_vehicle
			WHEN vehicle <> 'unknown' THEN vehicle
			ELSE "access" END)
	WHEN 'pedestrian' THEN carto_int_access('pedestrian', CASE WHEN foot <> 'unknown' THEN foot ELSE "access" END)
	WHEN 'footway' THEN carto_int_access('footway', CASE WHEN foot <> 'unknown' THEN foot ELSE "access" END)
	WHEN 'path' THEN carto_int_access('path', CASE WHEN foot <> 'unknown' THEN foot ELSE "access" END)
	WHEN 'cycleway' THEN carto_int_access('cycleway', CASE WHEN bicycle <> 'unknown' THEN bicycle ELSE "access" END)
	WHEN 'bridleway' THEN carto_int_access('bridleway', CASE WHEN horse <> 'unknown' THEN horse ELSE "access" END)
	ELSE carto_int_access(NULL, "access")
	END
$$;

/* Uncomment lines below to create generated column for int_access 
ALTER TABLE planet_osm_line DROP COLUMN IF EXISTS int_access;
ALTER TABLE planet_osm_line
	ADD int_access text GENERATED ALWAYS AS (CASE WHEN highway IS NOT NULL THEN carto_highway_int_access(highway, "access", foot, bicycle, horse, tags->'motorcar', tags->'motor_vehicle', tags->'vehicle') ELSE NULL END) STORED;
*/

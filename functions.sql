/* Additional database functions for openstreetmap-carto */

/* Access functions below adapted from https://github.com/imagico/osm-carto-alternative-colors/tree/591c861112b4e5d44badd108f4cd1409146bca0b/sql/roads.sql */

/* Simplified 'yes', 'destination', 'no', 'unknown', NULL scale for access restriction 
  'no' is returned if the rendering for highway category does not support 'restricted'.
  NULL is functionally equivalent to 'yes', but indicates the absence of a restriction 
  rather than a positive access = yes. 'unknown' corresponds to an uninterpretable 
  access restriction e.g. access=unknown or motorcar=occasionally */
CREATE OR REPLACE FUNCTION carto_int_access(accesstag text, allow_restricted boolean)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
	WHEN accesstag IN ('yes', 'designated', 'permissive') THEN 'yes'
	WHEN accesstag IN ('destination',  'delivery', 'customers') THEN
		CASE WHEN allow_restricted = TRUE  THEN 'restricted' ELSE 'yes' END
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

/* Return int_access value which will be used to determine access marking */
CREATE OR REPLACE FUNCTION carto_highway_int_access(highway text, "access" text, foot text, bicycle text, horse text, motorcar text, motor_vehicle text, vehicle text)
  RETURNS text
  LANGUAGE SQL
  IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
	WHEN highway IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                 'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'living_street', 'service', 'road') THEN
		carto_int_access(CASE
			WHEN motorcar <> 'unknown' THEN motorcar
			WHEN motor_vehicle <> 'unknown' THEN motor_vehicle
			WHEN vehicle <> 'unknown' THEN vehicle
			ELSE "access" END, TRUE)
	WHEN highway = 'path' THEN
		CASE carto_path_type(bicycle, horse)
		WHEN 'cycleway' THEN carto_int_access(CASE WHEN bicycle <> 'unknown' THEN bicycle ELSE "access" END, FALSE)
		WHEN 'bridleway' THEN carto_int_access(CASE WHEN horse <> 'unknown' THEN horse ELSE "access" END, FALSE)
		ELSE carto_int_access(CASE WHEN foot <> 'unknown' THEN foot ELSE "access" END, FALSE)
		END
	WHEN highway IN ('pedestrian', 'footway', 'steps') THEN carto_int_access(CASE WHEN foot <> 'unknown' THEN foot ELSE "access" END, FALSE)
	WHEN highway = 'cycleway' THEN carto_int_access(CASE WHEN bicycle <> 'unknown' THEN bicycle ELSE "access" END, FALSE)
	WHEN highway = 'bridleway' THEN carto_int_access(CASE WHEN horse <> 'unknown' THEN horse ELSE "access" END, FALSE)
	ELSE carto_int_access("access", TRUE)
	END
$$;

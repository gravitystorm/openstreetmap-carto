/* Additional database functions for openstreetmap-carto */

/* Access functions below adapted from https://github.com/imagico/osm-carto-alternative-colors/tree/591c861112b4e5d44badd108f4cd1409146bca0b/sql/roads.sql */


/* Simplified 'yes', 'restricted', 'no', NULL scale for access restriction 
  'no' is returned if the rendering for highway category does not support 'destination'.
  NULL is functionally equivalent to 'yes', but indicates the absence of a restriction 
  rather than a positive access = yes */
CREATE OR REPLACE FUNCTION carto_int_access(primary_mode text, accesstag text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
	WHEN accesstag IN ('yes', 'designated', 'permissive', 'customers') THEN 'yes'
	WHEN accesstag IN ('destination',  'delivery', 'permit') THEN
		CASE WHEN primary_mode IN ('motorcar', 'pedestrian') THEN 'restricted' ELSE 'no' END
	WHEN accesstag IN ('no', 'private', 'agricultural', 'forestry', 'agricultural;forestry') THEN 'no'
	ELSE NULL
	END
END
$$;

/* Try to promote path to cycleway (if bicycle allowed), then bridleway (if horse)
   This duplicates existing behaviour where designated access is required */
CREATE OR REPLACE FUNCTION carto_path_primary_mode(bicycle text, horse text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE
		WHEN bicycle IN ('designated') THEN 'bicycle'
		WHEN horse IN ('designated') THEN 'horse'
		ELSE 'foot'
	END
END
$$;

/* Classify highways into access categories which will be treated in the same way
   Default is NULL in which case only the access tag will be used (e.g. highway=track)
   Note that bicycle, horse arguments are only relevant if considering highway=path */
CREATE OR REPLACE FUNCTION carto_highway_primary_mode(highway text, bicycle text, horse text)
	RETURNS text
	LANGUAGE SQL
	IMMUTABLE PARALLEL SAFE
AS $$
SELECT
	CASE 
    WHEN highway IN ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary',
                 'secondary_link', 'tertiary', 'tertiary_link', 'residential', 'unclassified', 'living_street', 'service', 'road') THEN 'motorcar'
	WHEN highway = 'pedestrian' THEN 'pedestrian'
	WHEN highway IN ('footway', 'steps') THEN 'foot'
	WHEN highway = 'bridleway' THEN 'horse'
	WHEN highway = 'cycleway' THEN 'bicycle'
	WHEN highway = 'path' THEN carto_path_primary_mode(bicycle, horse)
	ELSE NULL
	END
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
	CASE carto_highway_primary_mode(highway, bicycle, horse)
	WHEN 'motorcar' THEN
		carto_int_access('motorcar', CASE
			WHEN motorcar IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN motorcar
			WHEN motor_vehicle IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN motor_vehicle
			WHEN vehicle IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN vehicle
			ELSE "access" END)
	WHEN 'pedestrian' THEN carto_int_access('pedestrian', 'no')
	WHEN 'foot' THEN carto_int_access('foot', CASE WHEN foot IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN foot ELSE "access" END)
	WHEN 'bicycle' THEN carto_int_access('bicycle', CASE WHEN bicycle IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN bicycle ELSE "access" END)
	WHEN 'horse' THEN carto_int_access('horse', CASE WHEN horse IN ('yes', 'designated', 'permissive', 'no', 'private', 'destination', 'customers', 'delivery', 'permit') THEN horse ELSE "access" END)
	ELSE carto_int_access(NULL, "access")
	END
END
$$;

/* Uncomment lines below to create generated column for int_access 
ALTER TABLE planet_osm_line DROP COLUMN IF EXISTS int_access;
ALTER TABLE planet_osm_line
	ADD int_access text GENERATED ALWAYS AS (CASE WHEN highway IS NOT NULL THEN carto_highway_int_access(highway, "access", foot, bicycle, horse, tags->'motorcar', tags->'motor_vehicle', tags->'vehicle') ELSE NULL END) STORED;
*/

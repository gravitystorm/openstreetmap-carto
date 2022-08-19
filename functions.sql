-- This SQL file contains custom PostgreSQL functions used by Carto.

-- Compute the scale factor to use when converting from metres to pixels.
-- This works by computing what the distance of a lateral translation of '1'
-- amounts to in WGS 84 coordinates for the specified object.
create or replace function scale_factor (geometry)
  returns numeric
  language sql
  immutable
  returns null on null input
as $func$
select ST_DistanceSphere(ST_Transform(ST_Translate(geom, 0, 1), 4326), ST_Transform(geom, 4326))::numeric from (select ST_Centroid($1) as geom) as p
$func$;

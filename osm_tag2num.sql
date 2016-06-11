/* Generate a floating point number from a numeric OSM tag

   Unfortunately this contains a lot of heuristic :(

  This function is handy for the generation of a numeric pseudo column
  in a database view.

  (c) 2016 Sven Geggus <sven-osm@geggus.net>

*/
CREATE or REPLACE FUNCTION osm_tag2num(tag text) RETURNS REAL AS $$
 DECLARE
  num real;
  feet boolean;
 BEGIN
   feet=false;
   /* remove potential crap inside parentheses */
   tag=regexp_replace(tag, '\(.*\)', '', 'gi');
   /* remove leading or trailing whitespace */
   tag=regexp_replace(tag, '^\s+(.*)\s+$', '\1', 'g');
   
   /* check if unit is given in feet and convert later*/
   if (right(tag,2) = 'ft') THEN feet=true; END IF;
   if (right(tag,3) = 'ft.') THEN feet=true; END IF;
   if (right(tag,4) = 'feet') THEN feet=true; END IF;
   if (right(tag,1) = '′') THEN feet=true; END IF;
   if (right(tag,1) = '''') THEN feet=true; END IF;
   
   /* general assumption:
      <alphanumeric_string>.<somenumber> should be interpreted as
      <somenumber> not 0.<somenumber>
      <alphanumeric_string> .<somenumber> should be interpreted as
      0.<somenumber>
      
      So get just get rid of the dot in strings of the form
      <alphanumeric_string>.<somenumber>
      Example:
      ca.5m
      
   */
   tag=regexp_replace(tag, '([[:alpha:]])\.([0-9])', '\1 \2', 'gi');
   
   /* remove the remaining leading and trailing garbage */
   tag=regexp_replace(tag, '^[[:alpha:]:~ ><]*\.?? *([^ [:alpha:]]*) *[ [:alpha:]′''\.]*$', '\1', 'gi');

   /* , seems to be used more often in its german form as a
    decimal mark rather than as a thousands separator so let's
    asume that this is always the case */
   tag=replace(tag, ',', '.');

   BEGIN
     num=tag::real;
   EXCEPTION WHEN OTHERS THEN
     -- RAISE NOTICE 'Invalid integer value: "%".  Returning NULL.', tag;
     num=NULL;
   END;
   /* convert feet to meters */
   if feet THEN num=0.3048*num; END IF;
   return num;
 END;
$$ LANGUAGE 'plpgsql' IMMUTABLE;


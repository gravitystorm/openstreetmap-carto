-- For documentation of Lua tag transformations, see:
-- https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md

-- Objects with any of the following keys will be treated as polygon
polygon_keys = { 'building', 'landuse', 'amenity', 'harbour', 'historic', 'leisure',
      'man_made', 'military', 'natural', 'office', 'place', 'power',
      'public_transport', 'shop', 'sport', 'tourism', 'waterway',
      'wetland', 'water', 'aeroway' }

-- Objects with any of the following key/value combinations will be treated as polygon
polygon_values = {
      {'highway', 'services'},
      {'junction', 'yes'}
   }

-- Objects with any of the following key/value combinations will be treated as linestring
linestring_values = {
      {'leisure', 'track'},
      {'man_made', 'embankment'},
      {'man_made', 'breakwater'},
      {'man_made', 'groyne'},
      {'natural', 'cliff'},
      {'natural', 'tree_row'},
      {'historic', 'citywalls'},
      {'waterway', 'canal'},
      {'waterway', 'derelict_canal'},
      {'waterway', 'ditch'},
      {'waterway', 'drain'},
      {'waterway', 'river'},
      {'waterway', 'stream'},
      {'waterway', 'wadi'},
      {'waterway', 'weir'},
      {'power', 'line'},
      {'power', 'minor_line'}
   }

-- The following keys will be deleted
delete_tags = { 'FIXME', 'note', 'source' }

-- Array used to specify z_order and osmcarto_z_order per key/value combination.
-- The former is used for backwards compatibility and for uses that use a single
-- database for multiple rendering styles.
-- Each element has the form {key, value, z_order, osmcarto_z_order, is_road}.
-- If is_road=1, the object will be added to planet_osm_roads.
zordering_tags = {
   { 'railway', nil, 5, 0, 1},
   { 'boundary', 'administrative', 0, 0, 1},
   { 'bridge', 'yes', 10, 0, 0 },
   { 'bridge', 'true', 10, 0, 0 },
   { 'bridge', 1, 10, 0, 0 },
   { 'tunnel', 'yes', -10, 0, 0},
   { 'tunnel', 'true', -10, 0, 0},
   { 'tunnel', 1, -10, 0, 0},
   {'railway', 'rail', 0, 440, 1},
   {'railway', 'subway', 0, 420, 1},
   {'railway', 'narrow_gauge', 0, 420, 1},
   {'railway', 'light_rail', 0, 420, 1},
   {'railway', 'preserved', 0, 420, 1},
   {'railway', 'funicular', 0, 420, 1},
   {'railway', 'monorail', 0, 420, 1},
   {'railway', 'miniature', 0, 420, 1},
   {'railway', 'turntable', 0, 420, 1},
   {'railway', 'tram', 0, 410, 1},
   {'railway', 'tram-service', 0, 405, 1},
   {'railway', 'disused', 0, 400, 1},
   {'railway', 'construction', 0, 400, 1},
   {'highway', 'motorway', 9, 380, 1},
   {'highway', 'trunk', 8, 370, 1},
   {'highway', 'primary', 7, 360, 1},
   {'highway', 'secondary', 6, 350, 1},
   {'highway', 'tertiary', 4, 340, 0},
   {'highway', 'residential', 3, 330, 0},
   {'highway', 'unclassified', 3, 330, 0},
   {'highway', 'road', 3, 330, 0},
   {'highway', 'living_street', 0, 320, 0},
   {'highway', 'pedestrian', 0, 310, 0},
   {'highway', 'raceway', 0, 300, 0},
   {'highway', 'motorway_link', 9, 240, 1},
   {'highway', 'trunk_link', 6, 230, 1},
   {'highway', 'primary_link', 5, 220, 1},
   {'highway', 'secondary_link', 4, 210, 1},
   {'highway', 'tertiary_link', 3, 200, 0},
   {'highway', 'service', 0, 150, 0},
   {'highway', 'track', 0, 110, 0},
   {'highway', 'path', 0, 100, 0},
   {'highway', 'footway', 0, 100, 0},
   {'highway', 'bridleway', 0, 100, 0},
   {'highway', 'cycleway', 0, 100, 0},
   {'highway', 'steps', 0, 100, 0},
   {'highway', 'platform', 0, 90, 0},
   {'highway', 'minor', 3, 0, 0},
   {'railway', 'platform', 0, 90, 0},
   {'aeroway', 'runway', 0, 60, 0},
   {'aeroway', 'taxiway', 0, 50, 0},
   {'highway', 'construction', 0, 10, 0}
}

function add_z_order(keyvalues)
   -- The default z_order is 0
   z_order = 0
   osmcarto_z_order = 0

   -- Increase or decrease z_order based on the specific key/value combination as specified in zordering_tags
   for i,k in ipairs(zordering_tags) do
      -- If the value in zordering_tags is specified, match key and value. Otherwise, match key only.
      if ((k[2]  and keyvalues[k[1]] == k[2]) or (k[2] == nil and keyvalues[k[1]] ~= nil)) then
         -- If the fifth component of the element of zordering_tags is 1, add the object to planet_osm_roads
         if (k[5] == 1) then
            roads = 1
         end
         z_order = z_order + k[3]
         osmcarto_z_order = math.max(osmcarto_z_order, k[4])
      end
   end

   -- Add z_order as key/value combination
   keyvalues["osmcarto_z_order"] = osmcarto_z_order
   keyvalues["z_order"] = z_order

   return keyvalues, roads
end

-- Filtering on nodes, ways, and relations
function filter_tags_generic(keyvalues, numberofkeys)
   filter = 0   -- Will object be filtered out?

   -- Filter out objects with 0 tags
   if numberofkeys == 0 then
      filter = 1
      return filter, keyvalues
   end

   -- Delete tags listed in delete_tags
   for i,k in ipairs(delete_tags) do
      keyvalues[k] = nil
   end

   return filter, keyvalues
end

-- Filtering on nodes
function filter_tags_node (keyvalues, numberofkeys)
   return filter_tags_generic(keyvalues, numberofkeys)
end

-- Filtering on relations
function filter_basic_tags_rel (keyvalues, numberofkeys)
   -- Filter out objects that are filtered out by filter_tags_generic
   filter, keyvalues = filter_tags_generic(keyvalues, numberofkeys)
   if filter == 1 then
      return filter, keyvalues
   end

   -- Filter out all relations except route, multipolygon and boundary relations
   if ((keyvalues["type"] ~= "route") and (keyvalues["type"] ~= "multipolygon") and (keyvalues["type"] ~= "boundary")) then
      filter = 1
      return filter, keyvalues
   end

   return filter, keyvalues
end

-- Filtering on ways
function filter_tags_way (keyvalues, numberofkeys)
   filter = 0  -- Will object be filtered out?
   polygon = 0 -- Will object be treated as polygon?
   roads = 0   -- Will object be added to planet_osm_roads?

   -- Filter out objects that are filtered out by filter_tags_generic
   filter, keyvalues = filter_tags_generic(keyvalues, numberofkeys)
   if filter == 1 then
      return filter, keyvalues, polygon, roads
   end

   -- Treat objects with a key in polygon_keys as polygon
   for i,k in ipairs(polygon_keys) do
      if keyvalues[k] then
         polygontag = 1
         -- However, if the key/value combination occurs in linestring_values, do not treat the object as polygon
         for index,tag in pairs(linestring_values) do
            if k == tag[1] and keyvalues[k] == tag[2] then
               polygontag = 0
               break
            end
         end
         if polygontag == 1 then
            polygon = 1
            break
         end
      end
   end

   -- Treat objects with a key/value combination in polygon_values as polygon
   if polygon == 0 then
      for index,tag in pairs(polygon_values) do
         if keyvalues[tag[1]] == tag[2] then
            polygon=1
            break
         end
      end
   end
   
   -- Treat objects tagged as area=yes, area=1, or area=true as polygon,
   -- and treat objects tagged as area=no, area=0, or area=false not as polygon
   if ((keyvalues["area"] == "yes") or (keyvalues["area"] == "1") or (keyvalues["area"] == "true")) then
      polygon = 1;
   elseif ((keyvalues["area"] == "no") or (keyvalues["area"] == "0") or (keyvalues["area"] == "false")) then
      polygon = 0;
   end

   -- Add z_order key/value combination and determine if the object should also be added to planet_osm_roads
   keyvalues, roads = add_z_order(keyvalues)

   return filter, keyvalues, polygon, roads
end

function filter_tags_relation_member (keyvalues, keyvaluemembers, roles, membercount)
   filter = 0     -- Will object be filtered out?
   linestring = 0 -- Will object be treated as linestring?
   polygon = 0    -- Will object be treated as polygon?
   roads = 0      -- Will object be added to planet_osm_roads?
   membersuperseded = {}
   for i = 1, membercount do
      membersuperseded[i] = 0 -- Will member be ignored when handling areas?
   end

   type = keyvalues["type"]

   -- Remove type key
   keyvalues["type"] = nil

   -- Relations with type=boundary are treated as linestring
   if (type == "boundary") then
      linestring = 1
   end
   -- Relations with type=multipolygon and boundary=* are treated as linestring
   if ((type == "multipolygon") and keyvalues["boundary"]) then
      linestring = 1
   -- For multipolygons...
   elseif (type == "multipolygon") then
      -- Treat as polygon
      polygon = 1
      haspolygontags = false
      -- Count the number of polygon tags
      -- First count keys in polygon_keys
      for i,k in ipairs(polygon_keys) do
         if keyvalues[k] then
            polygontag = 1
            -- However, if the key/value combination occurs in linestring_values, do not count the object as polygon
            for index,tag in pairs(linestring_values) do
               if k == tag[1] and keyvalues[k] == tag[2] then
                  polygontag = 0
                  break
               end
            end
            if polygontag == 1 then
               haspolygontags = true
               break
            end
         end
      end

      -- Treat objects with a key/value combination in polygon_values as polygon
      if not haspolygontags then
         for index,tag in pairs(polygon_values) do
            if keyvalues[tag[1]] == tag[2] then
               haspolygontags = true
               break
            end
         end
      end
   end

   -- Add z_order key/value combination and determine if the object should also be added to planet_osm_roads
   keyvalues, roads = add_z_order(keyvalues)

   return filter, keyvalues, membersuperseded, linestring, polygon, roads
end

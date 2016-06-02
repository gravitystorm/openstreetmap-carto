-- For documentation of Lua tag transformations, see:
-- https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md

-- Custom keys that are defined by this file
custom_keys = {'z_order', 'osmcarto_z_order'}

-- Objects with any of the following keys will be treated as polygon
polygon_keys = {
   'building', 'landuse', 'amenity', 'harbour', 'historic', 'leisure',
   'man_made', 'military', 'natural', 'office', 'place', 'power',
   'public_transport', 'shop', 'sport', 'tourism', 'waterway',
   'wetland', 'water', 'aeroway', 'abandoned:aeroway', 'abandoned:amenity',
   'abandoned:building', 'abandoned:landuse', 'abandoned:power', 'area:highway'
}


-- Objects with any of the following key/value combinations will be treated as linestring
linestring_values = {
   leisure = {track = true},
   man_made = {embankment = true, breakwater = true, groyne = true},
   natural = {cliff = true, tree_row = true},
   historic = {citywalls = true},
   waterway = {canal = true, derelict_canal = true, ditch = true, drain = true, river = true, stream = true, wadi = true, weir = true},
   power = {line = true, minor_line = true}
}

-- Objects with any of the following key/value combinations will be treated as polygon
polygon_values = {
   highway = {services = true, rest_area = true},
   junction = {yes = true}
}

-- The following keys will be deleted
delete_tags = {
  'note',
  'note:.*',
  'source',
  'source_ref',
  'source:.*',
  'attribution',
  'comment',
  'fixme',
  -- Tags generally dropped by editors, not otherwise covered
  'created_by',
  'odbl',
  'odbl:note',
  -- Lots of import tags
  -- EUROSHA (Various countries)
  'project:eurosha_2012',
  -- Corine (CLC) (Europe)
  'CLC:.*',

  -- UrbIS (Brussels, BE)
  'ref:UrbIS',

  -- Geobase (CA)
  'geobase:.*',
  -- NHN (CA)
  'accuracy:meters',
  'sub_sea:type',
  'waterway:type',
  -- CanVec (CA)
  'canvec:.*',
  -- StatsCan (CA)
  'statscan:rbuid',
  -- Geobase (CA)
  'geobase:.*',

  -- RUIAN (CZ)
  'ref:ruian:addr',
  'ref:ruian',
  'building:ruian:type',
  -- DIBAVOD (CZ)
  'dibavod:id',
  -- UIR-ADR (CZ)
  'uir_adr:ADRESA_KOD',

  -- osak (DK)
  'osak:.*',
  -- kms (DK)
  'kms:.*',
  -- GST (DK)
  'gst:feat_id',

  -- Maa-amet (EE)
  'maaamet:ETAK',

  -- ngbe (ES)
  -- See also note:es and source:file above
  'ngbe:.*',

  -- FANTOIR (FR)
  'ref:FR:FANTOIR',

  -- Friuli Venezia Giulia (IT)
  'it:fvg:.*',

  -- KSJ2 (JA)
  -- See also note:ja and source_ref above
  'KSJ2:.*',
  -- Yahoo/ALPS (JA)
  'yh:.*',

  -- 3dshapes (NL)
  '3dshapes:ggmodelk',
  -- AND (NL)
  'AND_nosr_r',

  -- OPPDATERIN (NO)
  'OPPDATERIN',

  -- LINZ (NZ)
  'LINZ2OSM:.*',
  'linz2osm:.*',
  'LINZ:.*',

  -- Various imports (PL)
  'addr:city:simc',
  'addr:street:sym_ul',
  'building:usage:pl',
  'building:use:pl',
  -- WroclawGIS (PL)
  'WroclawGIS:.*',
  -- TERYT (PL)
  'teryt:simc',

  -- RABA (SK)
  'raba:id',

  -- Naptan (UK)
  'naptan:.*',

  -- TIGER (US)
  'tiger:.*',
  -- GNIS (US)
  'gnis:.*',
  -- DCGIS (Washington DC, US)
  'dcgis:gis_id',
  -- National Hydrography Dataset (US)
  'NHD:.*',
  'nhd:.*',
  -- Building Identification Number (New York, US)
  'nycdoitt:bin',
  -- Chicago Building Inport (US)
  'chicago:building_id',
  -- Louisville, Kentucky/Building Outlines Import (US)
  'lojic:bgnum',
  -- MassGIS (Massachusetts, US)
  'massgis:way_id',

  -- mvdgis (Montevideo, UY)
  'mvdgis:.*',

  -- misc
  'import',
  'import_uuid',
  'OBJTYPE',
  'SK53_bulk:load'
}


-- Array used to specify z_order and osmcarto_z_order per key/value combination.
-- The former is used for backwards compatibility and for uses that use a single
-- database for multiple rendering styles.
-- Each element has the form {key, value, z_order, osmcarto_z_order, is_road}.
-- If is_road=1, the object will be added to planet_osm_roads.
zordering_tags = {
   {'railway', nil, 5, 0, 1},
   {'boundary', 'administrative', 0, 0, 1},
   {'bridge', 'yes', 10, 0, 0},
   {'bridge', 'true', 10, 0, 0},
   {'bridge', 1, 10, 0, 0},
   {'tunnel', 'yes', -10, 0, 0},
   {'tunnel', 'true', -10, 0, 0},
   {'tunnel', 1, -10, 0, 0},
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
   local z_order = 0
   local osmcarto_z_order = 0

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
   -- Filter out objects with 0 tags
   if numberofkeys == 0 then
      return 1, {}
   end

   local filter = 0   -- Will object be filtered out?

   -- Delete tags listed in delete_tags
   for k, v in pairs (keyvalues) do
      for _, d in ipairs(delete_tags) do
         if string.find(k, d) then
            keyvalues[k] = nil
            numberofkeys = numberofkeys - 1
            break
         end
      end
   end

   keyvalues['layer'] = layer(keyvalues['layer'])

   -- Filter out objects that have 0 tags after deleting tags
   if numberofkeys == 0 then
      return 1, {}
   end

   return 0, keyvalues
end

-- Filtering on nodes
function filter_tags_node (keyvalues, numberofkeys)
   return filter_tags_generic(keyvalues, numberofkeys)
end

-- Filtering on relations
function filter_basic_tags_rel (keyvalues, numberofkeys)
   -- Filter out objects that are filtered out by filter_tags_generic
   local filter, keyvalues = filter_tags_generic(keyvalues, numberofkeys)
   if filter == 1 then
      return 1, keyvalues
   end

   -- Filter out all relations except route, multipolygon and boundary relations
   if ((keyvalues["type"] ~= "route") and (keyvalues["type"] ~= "multipolygon") and (keyvalues["type"] ~= "boundary")) then
      return 1, keyvalues
   end

   return 0, keyvalues
end

-- Filtering on ways
function filter_tags_way (keyvalues, numberofkeys)
   local filter = 0  -- Will object be filtered out?
   local polygon = 0 -- Will object be treated as polygon?
   local roads = 0   -- Will object be added to planet_osm_roads?

   -- Filter out objects that are filtered out by filter_tags_generic
   filter, keyvalues = filter_tags_generic(keyvalues, numberofkeys)
   if filter == 1 then
      return filter, keyvalues, polygon, roads
   end

   polygon = isarea(keyvalues)

   -- Add z_order key/value combination and determine if the object should also be added to planet_osm_roads
   keyvalues, roads = add_z_order(keyvalues)

   return filter, keyvalues, polygon, roads
end

function filter_tags_relation_member (keyvalues, keyvaluemembers, roles, membercount)
   local filter = 0     -- Will object be filtered out?
   local linestring = 0 -- Will object be treated as linestring?
   local polygon = 0    -- Will object be treated as polygon?
   local roads = 0      -- Will object be added to planet_osm_roads?
   local membersuperseded = {}
   for i = 1, membercount do
      membersuperseded[i] = 0 -- Will member be ignored when handling areas?
   end

   local type = keyvalues["type"]

   -- Remove type key
   keyvalues["type"] = nil

   -- Boundary relations are treated as linestring
   if type == "boundary" or (type == "multipolygon" and keyvalues["boundary"]) then
      linestring = 1
   -- For multipolygons...
   elseif (type == "multipolygon") then
      -- Treat as polygon
      polygon = 1

      -- Support for old-style multipolygons (1/2):
      -- If there are no polygon tags, add tags from all outer elements to the multipolygon itself
      haspolytags = isarea(keyvalues)
      if (haspolytags == 0) then
         for i = 1,membercount do
            if (roles[i] == "outer") then
               for k,v in pairs(keyvaluemembers[i]) do
                  keyvalues[k] = v
               end
            end
         end
      end
      -- Support for old-style multipolygons (2/2):
      -- For any member of the multipolygon, set membersuperseded to 1 (i.e. don't deal with it as area as well),
      -- except when the member has a (non-custom) key/value combination that is not also a key/value combination of the multipolygon itself
      for i = 1,membercount do
         superseded = 1
         for k,v in pairs(keyvaluemembers[i]) do
            if ((keyvalues[k] == nil or keyvalues[k] ~= v) and not is_in(k,custom_keys)) then
              superseded = 0;
              break
            end
         end
         membersuperseded[i] = superseded
      end
   end

   -- Add z_order key/value combination and determine if the object should also be added to planet_osm_roads
   local keyvalues, roads = add_z_order(keyvalues)

   return filter, keyvalues, membersuperseded, linestring, polygon, roads
end

--- Check if an object with given tags should be treated as polygon
-- @param tags OSM tags
-- @return 1 if area, 0 if linear
function isarea (tags)
   -- Treat objects tagged as area=yes polygon, other area as no
   if tags["area"] then
      return tags["area"] == "yes" and 1 or 0
   end

   -- Search through object's tags
   for k, v in pairs(tags) do
      -- Check if it has a polygon key and not a linestring override, or a polygon k=v
      if (polygon_keys[k] and not (linestring_values[k] and linestring_values[k][v])) or
         (polygon_values[k] and polygon_values[k][v]) then
         return 1
      end
   end
   return 0
end

function is_in (needle, haystack)
    for index, value in ipairs (haystack) do
        if value == needle then
            return true
        end
    end
    return false
end

--- Normalizes layer tags
-- @param v The layer tag value
-- @return An integer for the layer tag
function layer (v)
    return v and string.find(v, "^-?%d+$") and tonumber(v) < 100 and tonumber(v) > -100 and v or nil
end

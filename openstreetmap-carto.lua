-- IMPORTANT NOTICE:
-- This is an osm2pgsql 'flex output' Lua file, and requires a minimum version of 
-- osm2pgsql of >=1.4.0 to work, but >=1.4.1 is highly recommended. This Lua file will not
-- work with older versions of osm2pgsql, nor will it work with 'pgsql output' options on
-- the command line.

-- For documentation of the osm2pgsql flex output based on Lua, see:
-- https://osm2pgsql.org/doc/manual.html#the-flex-output

-- The top section of this Lua file contains configuration settings that affect the schema
-- of the resulting database created by osm2pgsql. Deviating from the default settings, that
-- have been adjusted to maintain compatibility with the 'openstreetmap-carto' style and
-- associated rendering tools like 'mod_tile' and 'Mapnik', will likely lead to a failure to 
-- render tiles.
-- Only change these settings if you have a specific secondary purpose for using the osm2pgsql
-- generated schema, e.g. for using the tables in a GIS like QGIS, use against another style
-- designed differently, or want to use the resulting data for statistical analysis.

-- *** BEGIN CONFIGURATION ************

-- ## Prefix ##
-- Set this to the table name prefix (what used to be option -p|--prefix).
local prefix = 'planet_osm'

-- ## The output projection to use ## 
-- Set this to 4326 if you were using the -l|--latlong option or to the EPSG
-- code if you were using the -E|-proj option.
local srid = 3857

-- ## Multipolygon or Polygon ##
-- Set this to true if multipolygons should be written as multipolygons into
-- db (what used to be option -G|--multi-geometry).
local multi_geometry = true

-- ## 'roads' and 'route' table ##
-- You can configure whether or not to add a separate 'roads' table for low zoom, small scale,
-- rendering, and / or adding a 'route' table that will store membership of line objects in
-- OpenStreetMap routes, and that can be used to display specific routes based on SQL selections.
--
-- Note: the 'route' table is a non-spatial table and does not contain the geometry objects
-- of the routes themselves, only way membership. You need to join this table with the
-- 'planet_osm_line' table in order to display routes in your map.
local add_roads_table = true
local add_route_table = true

-- ## Z-order and way_area columns ##
-- You can suppress the creation of a 'z-order' or 'way_area' column if you don't need them
-- for your purpose, e.g. when using the resulting spatial tables in a GIS like QGIS,
-- where z-order may be defined by adjusting the stacking of layers in the Table Of Contents,
-- and symbol levels.
local add_z_order_col = true
local add_way_area_col = true

-- ## Explicitely defined columns ##:
-- If 'true', you must set or change the lists of column names per table as defined in this style,
-- see below in this file.
-- If 'false', only a small default set of columns ('osm_id','way','tags','layer') will be added
-- including a hstore column ('tags') containing all tags, and any SQL query you define against
-- the resulting database will need to use a hstore lookup (e.g. "tags -> 'healthcare'") to
-- access tags and do selections on the resulting tables.
--
-- Note: the 'route' table, as being a table with a specialized function, always uses a 
-- fixed set of explicitely defined columns!
local explicit_columns = true

-- ## Table spaces ##
-- PostgreSQL tables spaces for data and indexes can be specified separately
local point_data_tablespace = 'pg_default'
local point_index_tablespace = 'pg_default'
local line_data_tablespace = 'pg_default'
local line_index_tablespace = 'pg_default'
local roads_data_tablespace = 'pg_default'
local roads_index_tablespace = 'pg_default'
local polygon_data_tablespace = 'pg_default'
local polygon_index_tablespace = 'pg_default'
local route_data_tablespace = 'pg_default'
local route_index_tablespace = 'pg_default'

-- *** END CONFIGURATION **********************

local max_length

-- Used for splitting up long linestrings
if srid == 4326 then
    max_length = 1
else
    max_length = 100000
end

local tables = {}
local pg_cols
local col_definitions

-- A list of columns per table, replacing the osm2pgsql .style file
-- These need to be ordered, so that means a list
if explicit_columns then
    pg_cols = {
    	-- *** Point table columns ***
        point = {
        'access',
        'addr:housename',
        'addr:housenumber',
        'admin_level',
        'aerialway',
        'aeroway',
        'amenity',
        'barrier',
        'boundary',
        'building',
        'highway',
        'historic',
        'junction',
        'landuse',
        'leisure',
        'lock',
        'man_made',
        'military',
        'name',
        'natural',
        'oneway',
        'place',
        'power',
        'railway',
        'ref',
        'religion',
        'shop',
        'tourism',
        'water',
        'waterway'
        },
        -- *** Line table columns ***
        line = {
        'access',
        'addr:housename',
        'addr:housenumber',
        'addr:interpolation',
        'admin_level',
        'aerialway',
        'aeroway',
        'amenity',
        'barrier',
        'bicycle',
        'bridge',
        'boundary',
        'building',
        'construction',
        'covered',
        'foot',
        'highway',
        'historic',
        'horse',
        'junction',
        'landuse',
        'leisure',
        'lock',
        'man_made',
        'military',
        'name',
        'natural',
        'oneway',
        'place',
        'power',
        'railway',
        'ref',
        'religion',
        'route',
        'service',
        'shop',
        'surface',
        'tourism',
        'tracktype',
        'tunnel',
        'water',
        'waterway'
        },
        -- *** Polygon table columns ***
        polygon = {
        'access',
        'addr:housename',
        'addr:housenumber',
        'addr:interpolation',
        'admin_level',
        'aerialway',
        'aeroway',
        'amenity',
        'barrier',
        'bicycle',
        'bridge',
        'boundary',
        'building',
        'construction',
        'covered',
        'foot',
        'highway',
        'historic',
        'horse',
        'junction',
        'landuse',
        'leisure',
        'lock',
        'man_made',
        'military',
        'name',
        'natural',
        'oneway',
        'place',
        'power',
        'railway',
        'ref',
        'religion',
        'route',
        'service',
        'shop',
        'surface',
        'tourism',
        'tracktype',
        'tunnel',
        'water',
        'waterway'
        }       
    }
    -- *** Roads table columns ***
    if add_roads_table then
        pg_cols.roads = {
        'access',
        'addr:housename',
        'addr:housenumber',
        'addr:interpolation',
        'admin_level',
        'aerialway',
        'aeroway',
        'amenity',
        'barrier',
        'bicycle',
        'bridge',
        'boundary',
        'building',
        'construction',
        'covered',
        'foot',
        'highway',
        'historic',
        'horse',
        'junction',
        'landuse',
        'leisure',
        'lock',
        'man_made',
        'military',
        'name',
        'natural',
        'oneway',
        'place',
        'power',
        'railway',
        'ref',
        'religion',
        'route',
        'service',
        'shop',
        'surface',
        'tourism',
        'tracktype',
        'tunnel',
        'water',
        'waterway'
        }
    end
else
    -- In case the option to set explicit columns was not chosen, set all column
    -- lists to empty ones. Only a small default set of columns will be added.
    pg_cols = {
        point = {},
        line = {},
        polygon = {}
    }  
    if add_roads_table then
        pg_cols.roads = {}  
    end
end

-- *** Route table columns ***
-- Note: the 'route' table always uses explicit columns!
if add_route_table then
    pg_cols.route = {
        'route',
        'ref',
        'network'
    }  
end    

-- These columns aren't text columns
col_definitions = {
    point = {
        { column = 'way', type = 'point' },
        { column = 'tags', type = 'hstore' },
        { column = 'layer', type = 'int4' }
    },
    line = {
        { column = 'way', type = 'linestring' },
        { column = 'tags', type = 'hstore' },
        { column = 'layer', type = 'int4' }
    },    
    polygon = {
        { column = 'way', type = 'geometry' },
        { column = 'tags', type = 'hstore' },
        { column = 'layer', type = 'int4' },
    }
}

if add_roads_table then
    col_definitions.roads = {
        { column = 'way', type = 'linestring' },
        { column = 'tags', type = 'hstore' },
        { column = 'layer', type = 'int4' },
    }
end

if add_route_table then
    col_definitions.route = {
        { column = 'member_id', type = 'int8' },
        { column = 'member_position', type = 'int4' },
        { column = 'tags', type = 'hstore' }
    }
end

-- Set projection of geometry column
col_definitions.point[1].projection = srid
col_definitions.line[1].projection = srid
if add_roads_table then
    col_definitions.roads[1].projection = srid
end
col_definitions.polygon[1].projection = srid

-- Add 'z-order' and 'way_area' columns
if add_z_order_col then
    table.insert(col_definitions["line"], { column = 'z_order', type = 'int4' })
    if add_roads_table then
        table.insert(col_definitions["roads"], { column = 'z_order', type = 'int4' })
    end
    table.insert(col_definitions["polygon"], { column = 'z_order', type = 'int4' })
end

if add_way_area_col then
    table.insert(col_definitions["polygon"], { column = 'way_area', type = 'area' })
end
            
-- Combine the two sets of columns and create a map with column names.
-- The latter is needed for quick lookup to see if a tag has a column.
local columns_map = {}
for tablename, columns in pairs(pg_cols) do
    columns_map[tablename] = {}
    for _, key in ipairs(columns) do
        table.insert(col_definitions[tablename], {column = key, type = "text"})
        columns_map[tablename][key] = true
    end
end

tables.point = osm2pgsql.define_table{
    name = prefix .. '_point',
    ids = { type = 'node', id_column = 'osm_id' },
    columns = col_definitions.point,
    data_tablespace = point_data_tablespace,
    index_tablespace = point_index_tablespace
}

tables.line = osm2pgsql.define_table{
    name = prefix .. '_line',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = col_definitions.line,
    data_tablespace = line_data_tablespace,
    index_tablespace = line_index_tablespace
}

if add_roads_table then
    tables.roads = osm2pgsql.define_table{
        name = prefix .. '_roads',
        ids = { type = 'way', id_column = 'osm_id' },
        columns = col_definitions.roads,
        data_tablespace = roads_data_tablespace,
        index_tablespace = roads_index_tablespace
    }
end

tables.polygon = osm2pgsql.define_table{
    name = prefix .. '_polygon',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = col_definitions.polygon,
    data_tablespace = polygon_data_tablespace,
    index_tablespace = polygon_index_tablespace    
}

if add_route_table then
    tables.route = osm2pgsql.define_table{
        name = prefix .. '_route',
        ids = { type = 'relation', id_column = 'osm_id' },
        columns = col_definitions.route,
        data_tablespace = route_data_tablespace,
        index_tablespace = route_index_tablespace
    }
end

-- Objects with any of the following keys will be treated as polygon
local polygon_keys = {
    'abandoned:aeroway',
    'abandoned:amenity',
    'abandoned:building',
    'abandoned:landuse',
    'abandoned:power',
    'aeroway',
    'allotments',
    'amenity',
    'area:highway',
    'craft',
    'building',
    'building:part',
    'club',
    'golf',
    'emergency',
    'harbour',
    'healthcare',
    'historic',
    'landuse',
    'leisure',
    'man_made',
    'military',
    'natural',
    'office',
    'place',
    'power',
    'public_transport',
    'shop',
    'tourism',
    'water',
    'waterway',
    'wetland'
}

-- Objects with any of the following key/value combinations will be treated as linestring
local linestring_values = {
    golf = {cartpath = true, hole = true, path = true}, 
    emergency = {designated = true, destination = true, no = true, official = true, yes = true},
    historic = {citywalls = true},
    leisure = {track = true, slipway = true},
    man_made = {breakwater = true, cutline = true, embankment = true, groyne = true, pipeline = true},
    natural = {cliff = true, earth_bank = true, tree_row = true, ridge = true, arete = true},
    power = {cable = true, line = true, minor_line = true},
    tourism = {yes = true},
    waterway = {canal = true, derelict_canal = true, ditch = true, drain = true, river = true, stream = true, tidal_channel = true, wadi = true, weir = true}
}

-- Objects with any of the following key/value combinations will be treated as polygon
local polygon_values = {
    aerialway = {station = true},
    boundary = {aboriginal_lands = true, national_park = true, protected_area = true},
    highway = {services = true, rest_area = true},
    junction = {yes = true},
    railway = {station = true, traverser = true, turntable = true, wash = true}
}

-- The following keys will be deleted
local delete_tags = {
    'note',
    'source',
    'source_ref',
    'attribution',
    'comment',
    'fixme',
    -- Tags generally dropped by editors, not otherwise covered
    'created_by',
    'odbl',
    -- Lots of import tags
    -- EUROSHA (Various countries)
    'project:eurosha_2012',

    -- UrbIS (Brussels, BE)
    'ref:UrbIS',

    -- NHN (CA)
    'accuracy:meters',
    'waterway:type',
    -- StatsCan (CA)
    'statscan:rbuid',

    -- RUIAN (CZ)
    'ref:ruian:addr',
    'ref:ruian',
    'building:ruian:type',
    -- DIBAVOD (CZ)
    'dibavod:id',
    -- UIR-ADR (CZ)
    'uir_adr:ADRESA_KOD',

    -- GST (DK)
    'gst:feat_id',
    -- osak (DK)
    'osak:identifier',

    -- Maa-amet (EE)
    'maaamet:ETAK',
    -- FANTOIR (FR)
    'ref:FR:FANTOIR',

    -- OPPDATERIN (NO)
    'OPPDATERIN',
    -- Various imports (PL)
    'addr:city:simc',
    'addr:street:sym_ul',
    'building:usage:pl',
    'building:use:pl',
    -- TERYT (PL)
    'teryt:simc',

    -- RABA (SK)
    'raba:id',

    -- LINZ (NZ)
    'linz2osm:objectid',
    -- DCGIS (Washington DC, US)
    'dcgis:gis_id',
    -- Building Identification Number (New York, US)
    'nycdoitt:bin',
    -- Chicago Building Inport (US)
    'chicago:building_id',
    -- Louisville, Kentucky/Building Outlines Import (US)
    'lojic:bgnum',
    -- MassGIS (Massachusetts, US)
    'massgis:way_id',

    -- misc
    'import',
    'import_uuid',
    'OBJTYPE',
    'SK53_bulk:load'
}
delete_prefixes = {
    'note:',
    'source:',
    -- Corine (CLC) (Europe)
    'CLC:',

    -- Geobase (CA)
    'geobase:',
    -- CanVec (CA)
    'canvec:',
    -- Geobase (CA)
    'geobase:',

    -- kms (DK)
    'kms:',

    -- ngbe (ES)
    -- See also note:es and source:file above
    'ngbe:',

    -- Friuli Venezia Giulia (IT)
    'it:fvg:',

    -- KSJ2 (JA)
    -- See also note:ja and source_ref above
    'KSJ2:',
    -- Yahoo/ALPS (JA)
    'yh:',

    -- LINZ (NZ)
    'LINZ2OSM:',
    'LINZ:',

    -- WroclawGIS (PL)
    'WroclawGIS:',
    -- Naptan (UK)
    'naptan:',

    -- TIGER (US)
    'tiger:',
    -- GNIS (US)
    'gnis:',
    -- National Hydrography Dataset (US)
    'NHD:',
    'nhd:',
    -- mvdgis (Montevideo, UY)
    'mvdgis:'
}

-- Big table for z_order and roads status for certain tags. z=0 is turned into
-- nil by the z_order function
local roads_info = {
    highway = {
        motorway        = {z = 380, roads = true},
        trunk           = {z = 370, roads = true},
        primary         = {z = 360, roads = true},
        secondary       = {z = 350, roads = true},
        tertiary        = {z = 340, roads = false},
        residential     = {z = 330, roads = false},
        unclassified    = {z = 330, roads = false},
        road            = {z = 330, roads = false},
        living_street   = {z = 320, roads = false},
        pedestrian      = {z = 310, roads = false},
        raceway         = {z = 300, roads = false},
        motorway_link   = {z = 240, roads = true},
        trunk_link      = {z = 230, roads = true},
        primary_link    = {z = 220, roads = true},
        secondary_link  = {z = 210, roads = true},
        tertiary_link   = {z = 200, roads = false},
        service         = {z = 150, roads = false},
        track           = {z = 110, roads = false},
        path            = {z = 100, roads = false},
        footway         = {z = 100, roads = false},
        bridleway       = {z = 100, roads = false},
        cycleway        = {z = 100, roads = false},
        steps           = {z = 90,  roads = false},
        platform        = {z = 90,  roads = false}
    },
    railway = {
        rail            = {z = 440, roads = true},
        subway          = {z = 420, roads = true},
        narrow_gauge    = {z = 420, roads = true},
        light_rail      = {z = 420, roads = true},
        funicular       = {z = 420, roads = true},
        preserved       = {z = 420, roads = false},
        monorail        = {z = 420, roads = false},
        miniature       = {z = 420, roads = false},
        turntable       = {z = 420, roads = false},
        tram            = {z = 410, roads = false},
        disused         = {z = 400, roads = false},
        construction    = {z = 400, roads = false},
        platform        = {z = 90,  roads = false},
    },
    aeroway = {
        runway          = {z = 60,  roads = false},
        taxiway         = {z = 50,  roads = false},
    },
    boundary = {
        administrative  = {z = 0,  roads = true}
    },
}

local excluded_railway_service = {
    spur = true,
    siding = true,
    yard = true
}

--- Gets the z_order for a set of tags
-- @param tags OSM tags
-- @return z_order if an object with z_order, otherwise nil
function z_order(tags)
    local z = 0
    for k, v in pairs(tags) do
        if roads_info[k] and roads_info[k][v] then
            z = math.max(z, roads_info[k][v].z)
        end
    end

    if tags["highway"] == "construction" then
        if tags["construction"] and roads_info["highway"][tags["construction"]] then
            z = math.max(z, roads_info["highway"][tags["construction"]].z/10)
        else
            z = math.max(z, 33)
        end
    end

    return z ~= 0 and z or nil
end

--- Gets the roads table status for a set of tags
-- @param tags OSM tags
-- @return true if it belongs in the roads table, false otherwise
function roads(tags)
    for k, v in pairs(tags) do
        if roads_info[k] and roads_info[k][v] and roads_info[k][v].roads then
            if not (k ~= 'railway' or tags.service) then
                return true
            elseif not excluded_railway_service[tags.service] then
                return true
            end
        end
    end
    return false
end

--- Check if an object with given tags should be treated as polygon
-- @param tags OSM tags
-- @return 1 if area, 0 if linear
function isarea (tags)
    -- Treat objects tagged as area=yes polygon, other area as no
    if tags["area"] then
        return tags["area"] == "yes" and true or false
    end

   -- Search through object's tags
    for k, v in pairs(tags) do
        -- Check if it has a polygon key and not a linestring override, or a polygon k=v
        for _, ptag in ipairs(polygon_keys) do
            if k == ptag and v ~= "no" and not (linestring_values[k] and linestring_values[k][v]) then
                return true
            end
        end

        if (polygon_values[k] and polygon_values[k][v]) then
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

--- Clean tags of deleted tags
-- @return True if no tags are left after cleaning
function clean_tags(tags)
    -- Short-circuit for untagged objects
    if next(tags) == nil then
        return true
    end

    -- Delete tags listed in delete_tags
    for _, d in ipairs(delete_tags) do
        tags[d] = nil
    end
    -- By using a second loop for wildcards we avoid checking already deleted tags
    for tag, _ in pairs (tags) do
        for _, d in ipairs(delete_prefixes) do
            if string.sub(tag, 1, string.len(d)) == d then
                tags[tag] = nil
                break
            end
        end
    end

    return next(tags) == nil
end

--- Splits a tag into tags and hstore tags
-- @return columns, hstore tags
function split_tags(tags, tag_map)
    local cols = {tags = {}}
    for key, value in pairs(tags) do
        if tag_map[key] then
            cols[key] = value
        else
            cols.tags[key] = value
        end
    end
    return cols
end

-- Functions to add point, line, polygon and route objects to database
function add_point(object)
    local tags = object.tags
    local cols = split_tags(tags, columns_map.point)
    cols['layer'] = layer(tags['layer'])
    tables.point:add_row(cols)
end

function add_line(object)
    local tags = object.tags
    local cols = split_tags(tags, columns_map.line)
    cols['layer'] = layer(tags['layer'])
    if add_z_order_col then
        cols['z_order'] = z_order(tags)
    end
    cols.way = { create = 'line', split_at = max_length }
    tables.line:add_row(cols)
end

function add_roads(object)
    local tags = object.tags
    local cols = split_tags(tags, columns_map.roads)
    cols['layer'] = layer(tags['layer'])
    if add_z_order_col then
        cols['z_order'] = z_order(tags)
    end
    cols.way = { create = 'line', split_at = max_length }
    tables.roads:add_row(cols)
end

function add_polygon(object)
    local tags = object.tags
    local cols = split_tags(tags, columns_map.polygon)
    cols['layer'] = layer(tags['layer'])
    if add_z_order_col then
        cols['z_order'] = z_order(tags)
    end
    cols.way = { create = 'area'}
    if not multi_geometry then
        cols.way.split_at = 'multi'
    end    
    tables.polygon:add_row(cols)
end

function add_route(object)
    local tags = object.tags
    for i, member in ipairs(object.members) do
        if member.type == 'w' then
            local cols = split_tags(tags, columns_map.line)
            cols.member_id = member.ref
            cols.member_position = i
            cols.route = tags['route']            
            cols.ref = tags['ref']
            cols.network = tags['network']
            tables.route:add_row(cols)
        end
    end
end

-- Process nodes
function osm2pgsql.process_node(object)

    if clean_tags(object.tags) then
        return
    end

    add_point(object)
    
end

-- Process ways
function osm2pgsql.process_way(object)

    if clean_tags(object.tags) then
        return
    end

    local area_tags = isarea(object.tags)
    if object.is_closed and area_tags then
--    if object.is_closed and object.tags["area"] ~= "no" then
        add_polygon(object)
    else
        add_line(object)
        if add_roads_table then
            if roads(object.tags) then
                add_roads(object)
            end
        end
    end

end

-- Process relations
function osm2pgsql.process_relation(object)

    -- grab the type tag before filtering tags
    local type = object.tags.type
    object.tags.type = nil

    if clean_tags(object.tags) then
        return
    end

    if type == "boundary" or (type == "multipolygon" and object.tags["boundary"]) then

        add_line(object)
        
        if add_roads_table then
            if roads(object.tags) then
                add_roads(object)
            end
	end
	
        add_polygon(object)

    elseif type == "multipolygon" then

        add_polygon(object)

    elseif type == "route" and add_route_table then

        add_line(object)
        
        add_route(object)
--        -- TODO: Remove this, roads tags don't belong on route relations
--        if roads(object.tags) then
--            add_roads(object)
       
    end

end

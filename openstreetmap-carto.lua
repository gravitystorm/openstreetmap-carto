-- For documentation of Lua tag transformations, see:
-- https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md

local tables = {}

-- A list of columns per table, replacing the osm2pgsql .style file
-- These need to be ordered, so that means a list
local point_columns = {
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
    'waterway' }

local line_columns = {
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
    'waterway'}

-- These are the same for now
local polygon_columns = line_columns
local road_columns = line_columns

-- Process the columns above
local point_col_def = {
    { column = 'way', type = 'point' },
    { column = 'tags', type = 'hstore' },
    { column = 'layer', type = 'int4' }
}

local point_columns_map = {}
for _, key in ipairs(point_columns) do
    table.insert(point_col_def, {column = key, type = "text"})
    point_columns_map[key] = true
end

tables.point = osm2pgsql.define_table{
    name = 'planet_osm_point',
    ids = { type = 'node', id_column = 'osm_id' },
    columns = point_col_def
}

local line_col_def = {
    { column = 'way', type = 'linestring' },
    { column = 'tags', type = 'hstore' },
    { column = 'layer', type = 'int4' },
    { column = 'z_order', type = 'int4' }
}

local line_columns_map = {}
for _, key in ipairs(line_columns) do
    table.insert(line_col_def, {column = key, type = "text"})
    line_columns_map[key] = true
end

tables.line = osm2pgsql.define_table{
    name = 'planet_osm_line',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = line_col_def
}

local roads_col_def = {
    { column = 'way', type = 'linestring' },
    { column = 'tags', type = 'hstore' },
    { column = 'layer', type = 'int4' },
    { column = 'z_order', type = 'int4' }
}

local roads_columns_map = {}
for _, key in ipairs(road_columns) do
    table.insert(roads_col_def, {column = key, type = "text"})
    roads_columns_map[key] = true
end

tables.roads = osm2pgsql.define_table{
    name = 'planet_osm_roads',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = roads_col_def
}

local polygon_col_def = {
    { column = 'way', type = 'geometry' },
    { column = 'tags', type = 'hstore' },
    { column = 'layer', type = 'int4' },
    { column = 'z_order', type = 'int4' },
    { column = 'way_area', type = 'area' }
}

local polygon_columns_map = {}
for _, key in ipairs(polygon_columns) do
    table.insert(polygon_col_def, {column = key, type = "text"})
    polygon_columns_map[key] = true
end

tables.polygon = osm2pgsql.define_table{
    name = 'planet_osm_polygon',
    ids = { type = 'way', id_column = 'osm_id' },
    columns = polygon_col_def
}

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
    boundary = {aboriginal_lands = true, national_park = true, protected_area= true},
    highway = {services = true, rest_area = true},
    junction = {yes = true},
    railway = {station = true}
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

function add_point(tags)
    local cols = split_tags(tags, point_columns_map)
    cols['layer'] = layer(tags['layer'])
    tables.point:add_row(cols)
end

function add_line(tags)
    local cols = split_tags(tags, line_columns_map)
    cols['layer'] = layer(tags['layer'])
    cols['z_order'] = z_order(tags)
    cols.way = { create = 'line', split_at = 100000 }
    tables.line:add_row(cols)
end

function add_roads(tags)
    local cols = split_tags(tags, roads_columns_map)
    cols['layer'] = layer(tags['layer'])
    cols['z_order'] = z_order(tags)
    cols.way = { create = 'line', split_at = 100000 }
    tables.roads:add_row(cols)
end

function add_polygon(tags)
    local cols = split_tags(tags, polygon_columns_map)
    cols['layer'] = layer(tags['layer'])
    cols['z_order'] = z_order(tags)
    cols.way = { create = 'area', multi = true }
    tables.polygon:add_row(cols)
end

function osm2pgsql.process_node(object)
    if clean_tags(object.tags) then
        return
    end

    add_point(object.tags)
end

function osm2pgsql.process_way(object)
    if clean_tags(object.tags) then
        return
    end

    local area_tags = isarea(object.tags)
    if object.is_closed and area_tags then
        add_polygon(object.tags)
    else
        add_line(object.tags)

        if roads(object.tags) then
            add_roads(object.tags)
        end
    end
end

function osm2pgsql.process_relation(object)
    -- grab the type tag before filtering tags
    local type = object.tags.type
    object.tags.type = nil

    if clean_tags(object.tags) then
        return
    end
    if type == "boundary" or (type == "multipolygon" and object.tags["boundary"]) then
        add_line(object.tags)

        if roads(object.tags) then
            add_roads(object.tags)
        end

        add_polygon(object.tags)

    elseif type == "multipolygon" then
        add_polygon(object.tags)
    elseif type == "route" then
        add_line(object.tags)

        -- TODO: Remove this, roads tags don't belong on route relations
        if roads(object.tags) then
            add_roads(object.tags)
        end
    end
end

-- For documentation of Lua tag transformations, see:
-- https://github.com/openstreetmap/osm2pgsql/blob/master/docs/lua.md

-- Custom keys that are defined by this file
custom_keys = {'z_order'}

-- Objects with any of the following keys will be treated as polygon
local polygon_keys = {
    'abandoned:aeroway',
    'abandoned:amenity',
    'abandoned:building',
    'abandoned:landuse',
    'abandoned:power',
    'aeroway',
    'amenity',
    'area:highway',
    'building',
    'building:part',
    'harbour',
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
    leisure = {track = true, slipway = true},
    man_made = {embankment = true, breakwater = true, groyne = true},
    natural = {cliff = true, tree_row = true},
    historic = {citywalls = true},
    waterway = {canal = true, derelict_canal = true, ditch = true, drain = true, river = true, stream = true, wadi = true, weir = true},
    power = {line = true, minor_line = true},
    natural = {ridge = true, arete = true}
}

-- Objects with any of the following key/value combinations will be treated as polygon
local polygon_values = {
    highway = {services = true, rest_area = true},
    junction = {yes = true}
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
    'odbl:note',
    -- Lots of import tags
    -- EUROSHA (Various countries)
    'project:eurosha_2012',

    -- UrbIS (Brussels, BE)
    'ref:UrbIS',

    -- NHN (CA)
    'accuracy:meters',
    'sub_sea:type',
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

    -- Maa-amet (EE)
    'maaamet:ETAK',
    -- FANTOIR (FR)
    'ref:FR:FANTOIR',

    -- 3dshapes (NL)
    '3dshapes:ggmodelk',
    -- AND (NL)
    'AND_nosr_r',

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
delete_wildcards = {
    'note:.*',
    'source:.*',
    -- Corine (CLC) (Europe)
    'CLC:.*',

    -- Geobase (CA)
    'geobase:.*',
    -- CanVec (CA)
    'canvec:.*',
    -- Geobase (CA)
    'geobase:.*',

    -- osak (DK)
    'osak:.*',
    -- kms (DK)
    'kms:.*',

    -- ngbe (ES)
    -- See also note:es and source:file above
    'ngbe:.*',

    -- Friuli Venezia Giulia (IT)
    'it:fvg:.*',

    -- KSJ2 (JA)
    -- See also note:ja and source_ref above
    'KSJ2:.*',
    -- Yahoo/ALPS (JA)
    'yh:.*',

    -- LINZ (NZ)
    'LINZ2OSM:.*',
    'linz2osm:.*',
    'LINZ:.*',

    -- WroclawGIS (PL)
    'WroclawGIS:.*',
    -- Naptan (UK)
    'naptan:.*',

    -- TIGER (US)
    'tiger:.*',
    -- GNIS (US)
    'gnis:.*',
    -- National Hydrography Dataset (US)
    'NHD:.*',
    'nhd:.*',
    -- mvdgis (Montevideo, UY)
    'mvdgis:.*'
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
        platform        = {z = 90,  roads = false},
        construction    = {z = 10,  roads = false}
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
    return z ~= 0 and z or nil
end

--- Gets the roads table status for a set of tags
-- @param tags OSM tags
-- @return 1 if it belongs in the roads table, 0 otherwise
function roads(tags)
    for k, v in pairs(tags) do
        if roads_info[k] and roads_info[k][v] and roads_info[k][v].roads then
            if not (k ~= 'railway' or tags.service) then
                return 1
            elseif not excluded_railway_service[tags.service] then
                return 1
            end
        end
    end
    return 0
end

--- Generic filtering of OSM tags
-- @param tags Raw OSM tags
-- @return Filtered OSM tags
function filter_tags_generic(tags)
    -- Short-circuit for untagged objects
    if next(tags) == nil then
        return 1, {}
    end

    -- Delete tags listed in delete_tags
    for _, d in ipairs(delete_tags) do
        tags[d] = nil
    end

    -- By using a second loop for wildcards we avoid checking already deleted tags
    for tag, _ in pairs (tags) do
        for _, d in ipairs(delete_wildcards) do
            if string.find(tag, d) then
                tags[tag] = nil
                break
            end
        end
    end

   -- Filter out objects that have no tags after deleting
    if next(tags) == nil then
        return 1, {}
    end

-- Convert layer to an integer
    tags['layer'] = layer(tags['layer'])
    return 0, tags
end

-- Filtering on nodes
function filter_tags_node (keyvalues, numberofkeys)
    return filter_tags_generic(keyvalues)
end

-- Filtering on relations
function filter_basic_tags_rel (keyvalues, numberofkeys)
    -- Filter out objects that are filtered out by filter_tags_generic
    local filter, keyvalues = filter_tags_generic(keyvalues)
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

    -- Filter out objects that are filtered out by filter_tags_generic
    filter, keyvalues = filter_tags_generic(keyvalues)
    if filter == 1 then
        return filter, keyvalues, polygon, roads
    end

    polygon = isarea(keyvalues)

    -- Add z_order column
    keyvalues.z_order = z_order(keyvalues)

    return filter, keyvalues, polygon, roads(keyvalues)
end

--- Handling for relation members and multipolygon generation
-- Multipolygons are either old-style or new-style. As defined here,
-- a new-style MP is one with any tags other than type on the relation, and for
-- them the tags of the ways do not matter.
--
-- An old-style MP is one where the only tag on the relation is
-- type=multipolygon and the tags of all the members are either the same or
-- empty.
--
-- These are stricter definitions then have been used in the past by the C
-- transforms, but cut down on bugs where a new-style MP suddenly gets treated
-- as an old-style MP.
--
-- This has a few properties
--
-- - MP generation does not depend on polygon characteristics of tags on ways
--
-- - All tags are considered, except for deleted tags which are ignored for
--   technical reasons
--
-- - Any new-style MP will never change to an old-style MP by only changing
--   tags on its member ways, nor will it become invalid
--
-- - Any old-style MP will never change to an new-style MP by only changing
--   tags on its member ways, but may become invalid if the tags become
--   conflicting
--
-- - All multipolygons are polygons
--
-- @param keyvalues OSM tags, after processing by relation transform
-- @param keyvaluemembers OSM tags of relation members, after processing by way transform
-- @param roles OSM roles of relation members
-- @param membercount number of members
-- @return filter, cols, member_superseded, boundary, polygon, roads
function filter_tags_relation_member (keyvalues, keyvaluemembers, roles, membercount)
    local members_superseded = {}

    -- Start by assuming that this not an old-style MP
    for i = 1, membercount do
        members_superseded[i] = 0
    end

    local type = keyvalues["type"]

    -- Remove type key
    keyvalues["type"] = nil

    -- Boundary relations are treated as linestring
    if type == "boundary" or (type == "multipolygon" and keyvalues["boundary"]) then
        -- Avoid generating objects for untagged boundary relations
        if next(keyvalues) ~= nil then
            keyvalues.z_order = z_order(keyvalues)
            return 0, keyvalues, members_superseded, 1, 0, roads(keyvalues)
        end
    -- For multipolygons...
    elseif (type == "multipolygon") then
        -- Multipolygons by definition are polygons, so we know roads = linestring = 0, polygon = 1
        -- The type tag has been removed, so this checks for untagged MPs
        if next(keyvalues) == nil then
            -- This is an old-style MP
            local combined_tags = combine_member_tags(keyvaluemembers)
            if combined_tags == nil then
                -- This is an invalid old-style MP with conflicting tags
                return 1, {}, members_superseded, 0, 1, 0
            elseif next(combined_tags) == nil then
                -- This is a valid old-style MP, but has no tags
                return 1, {}, members_superseded, 0, 1, 0
            else
                -- This is a valid old-style MP because a set of tags could be
                -- made. For each member, the POLYGON its way tags generated is
                -- superseded by the geometry from the MP, or the way was untagged.
                -- Untagged ways generate no geom, so can be superseded too.
                for i = 1, membercount do
                    members_superseded[i] = 1
                end
                combined_tags.z_order = z_order(keyvalues)
                return 0, combined_tags, members_superseded, 0, 1, 0
            end
        else
            -- This is a new-style MP
            keyvalues.z_order = z_order(keyvalues)
            return 0, keyvalues, members_superseded, 0, 1, 0
        end
        assert(false, "End of control reached prematurely for MP")
    elseif type == "route" then
        if next(keyvalues) ~= nil then
            keyvalues.z_order = z_order(keyvalues)
            return 0, keyvalues, members_superseded, 1, 0, roads(keyvalues)
        end
    end

    -- Untagged or unknown type
    return 1, keyvalues, members_superseded, 0, 0, 0
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
        for _, ptag in ipairs(polygon_keys) do
            if k == ptag and not (linestring_values[k] and linestring_values[k][v]) then
                return 1
            end
        end

        if (polygon_values[k] and polygon_values[k][v]) then
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

--- compare two values.
-- if they are tables, then compare their keys and fields recursively.
-- @within Comparing
-- @param t1 A value
-- @param t2 A value
-- @return true or false
function equaltables (t1,t2)
    for k, v in pairs(t1) do
        if t2[k] ~= v then return false end
    end
    for k, v in pairs(t2) do
        if t1[k] ~= v then return false end
    end
    return true
end

--- Combines the tags of relation members
-- If the tags are conflicting then nil is returned. Members with no tags are ignored
-- @param member_tags OSM tags of relation members
-- @return combined tags, or nil if cannot combine
function combine_member_tags (member_tags)
    local combined_tags = {}
    for _, tags in ipairs(member_tags) do
        -- Check if the member has tags
        if next(tags) ~= nil then
            if next(combined_tags) == nil then
                -- This is the first tagged member
                combined_tags = tags
            else
                -- A different tagged member
                if not equaltables(tags, combined_tags) then
                    return nil
                end
            end
        end
    end
    return combined_tags
end

--- Normalizes layer tags
-- @param v The layer tag value
-- @return An integer for the layer tag
function layer (v)
    return v and string.find(v, "^-?%d+$") and tonumber(v) < 100 and tonumber(v) > -100 and v or nil
end

--[[
This file is part of OpenStreetMap Carto and used for validating the Lua tag transforms.

Run it with lua test.lua
]]

--- Utility function to do a deep compare
-- (C) Anonymous on snippets.luacode.org, MIT license
function deepcompare(t1,t2)
    local ty1 = type(t1)
    local ty2 = type(t2)
    if ty1 ~= ty2 then return false end
    -- non-table types can be directly compared
    if ty1 ~= 'table' and ty2 ~= 'table' then return t1 == t2 end

    for k1,v1 in pairs(t1) do
        local v2 = t2[k1]
        if v2 == nil or not deepcompare(v1,v2) then return false end
    end
    for k2,v2 in pairs(t2) do
        local v1 = t1[k2]
        if v1 == nil or not deepcompare(v1,v2) then return false end
    end
    return true
end

-- Before testing we need to mock the supplied osm2pgsql object
osm2pgsql = { srid = 3857 }

-- 
local table_definitions = {}
local table_contents = {}

function osm2pgsql.define_table(definition)
    table_definitions[definition.name] = definition
    table_contents[definition.name] = {}
    return {add_row = function(self, obj) table.insert(table_contents[definition.name], obj) end}
end

require ("openstreetmap-carto")

print("TESTING: define_table")

assert(deepcompare(table_definitions.planet_osm_point.ids, { type = 'node', id_column = 'osm_id' }), "planet_osm_point id column")
assert(deepcompare(table_definitions.planet_osm_point.columns[1], { column = 'way', type = 'point' }), "planet_osm_point way column")
assert(deepcompare(table_definitions.planet_osm_point.columns[2], { column = 'tags', type = 'hstore' }), "planet_osm_point tags column")
assert(deepcompare(table_definitions.planet_osm_point.columns[3], { column = 'layer', type = 'int4' }), "planet_osm_point layer column")
assert(deepcompare(table_definitions.planet_osm_point.columns[4], { column = 'access', type = 'text' }), "planet_osm_point access column")

assert(deepcompare(table_definitions.planet_osm_line.ids, { type = 'way', id_column = 'osm_id' }), "planet_osm_line id column")
assert(deepcompare(table_definitions.planet_osm_line.columns[1], { column = 'way', type = 'linestring' }), "planet_osm_line way column")
assert(deepcompare(table_definitions.planet_osm_line.columns[2], { column = 'tags', type = 'hstore' }), "planet_osm_line tags column")
assert(deepcompare(table_definitions.planet_osm_line.columns[3], { column = 'layer', type = 'int4' }), "planet_osm_line layer column")
assert(deepcompare(table_definitions.planet_osm_line.columns[4], { column = 'z_order', type = 'int4' }), "planet_osm_line z_order column")
assert(deepcompare(table_definitions.planet_osm_line.columns[5], { column = 'access', type = 'text' }), "planet_osm_line access column")

assert(deepcompare(table_definitions.planet_osm_roads.ids, { type = 'way', id_column = 'osm_id' }), "planet_osm_roads id column")
assert(deepcompare(table_definitions.planet_osm_roads.columns[1], { column = 'way', type = 'linestring' }), "planet_osm_roads way column")
assert(deepcompare(table_definitions.planet_osm_roads.columns[2], { column = 'tags', type = 'hstore' }), "planet_osm_roads tags column")
assert(deepcompare(table_definitions.planet_osm_roads.columns[3], { column = 'layer', type = 'int4' }), "planet_osm_roads layer column")
assert(deepcompare(table_definitions.planet_osm_roads.columns[4], { column = 'z_order', type = 'int4' }), "planet_osm_roads z_order column")
assert(deepcompare(table_definitions.planet_osm_roads.columns[5], { column = 'access', type = 'text' }), "planet_osm_roads access column")

assert(deepcompare(table_definitions.planet_osm_polygon.ids, { type = 'way', id_column = 'osm_id' }), "planet_osm_polygon id column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[1], { column = 'way', type = 'geometry' }), "planet_osm_polygon way column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[2], { column = 'tags', type = 'hstore' }), "planet_osm_polygon tags column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[3], { column = 'layer', type = 'int4' }), "planet_osm_polygon layer column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[4], { column = 'z_order', type = 'int4' }), "planet_osm_polygon z_order column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[5], { column = 'way_area', type = 'area' }), "planet_osm_polygon way_area column")
assert(deepcompare(table_definitions.planet_osm_polygon.columns[6], { column = 'access', type = 'text' }), "planet_osm_polygon access column")

assert(deepcompare(table_definitions.planet_osm_route.ids, { type = 'relation', id_column = 'osm_id' }), "planet_osm_route id column")
assert(deepcompare(table_definitions.planet_osm_route.columns[1], { column = 'member_id', type = 'int8' }), "planet_osm_route member_id column")
assert(deepcompare(table_definitions.planet_osm_route.columns[2], { column = 'member_position', type = 'int4' }), "planet_osm_route member_position column")
assert(deepcompare(table_definitions.planet_osm_route.columns[3], { column = 'tags', type = 'hstore' }), "planet_osm_route tags column")
assert(deepcompare(table_definitions.planet_osm_route.columns[4], { column = 'route', type = 'text' }), "planet_osm_route route column")


print("TESTING: z_order")

assert(z_order({}) == nil, "test failed: no tags")
assert(z_order({foo="bar"}) == nil, "test failed: other tags")
assert(z_order({highway="motorway"}) == 380 , "test failed: motorway")
assert(z_order({highway="motorway", railway="rail"}) == 440 , "test failed: motorway + rail")

assert(z_order({highway="motorway"}) > z_order({highway="motorway_link"}) , "test failed: motorway_link")
assert(z_order({highway="trunk"}) > z_order({highway="trunk_link"}) , "test failed: trunk_link")
assert(z_order({highway="primary"}) > z_order({highway="primary_link"}) , "test failed: primary_link")
assert(z_order({highway="secondary"}) > z_order({highway="secondary_link"}) , "test failed: secondary_link")
assert(z_order({highway="tertiary"}) > z_order({highway="tertiary_link"}) , "test failed: tertiary_link")

assert(z_order({highway="motorway"}) > z_order({highway="trunk"}) , "test failed: motorway > trunk")
assert(z_order({highway="trunk"}) > z_order({highway="primary"}) , "test failed: trunk > primary")
assert(z_order({highway="primary"}) > z_order({highway="secondary"}) , "test failed: primary > secondary")
assert(z_order({highway="secondary"}) > z_order({highway="tertiary"}) , "test failed: secondary > tertiary")

assert(z_order({highway="construction"}) == 33 , "test failed: highway=construction")
assert(z_order({highway="construction", construction="motorway"}) == 38 , "test failed: highway=construction construction=motorway")
assert(z_order({highway="construction", construction="motorway", railway="rail"}) == 440, "test failed: construction motorway + rail")
assert(z_order({highway="construction", construction="service"}) == 15 , "test failed: highway=construction construction=service")

assert(z_order({highway="construction", construction="foo"}) == 33 , "test failed: highway=construction construction=foo")
assert(z_order({highway="motorway", construction="service"}) == 380 , "test failed: highway=construction + construction=service")

print("TESTING: roads")
assert(not roads({}), "test failed: no tags")
assert(not roads({foo="bar"}), "test failed: other tags")
assert(roads({highway="motorway"}), "test failed: motorway")
assert(roads({railway="rail"}), "test failed: rail")
assert(roads({highway="residential", railway="rail"}), "test failed: rail+residential")
assert(not roads({railway="turntable"}), "test failed: rail=turntable")
assert(not roads({railway="rail", service="spur"}), "test failed: rail SSY")
assert(roads({railway="rail", service="main"}), "test failed: rail non-SSY")
assert(roads({boundary="administrative"}), "test failed: boundary administrative")

print("TESTING: isarea")
assert(not isarea({}), "test failed: no tags")
assert(not isarea({foo = "bar"}), "test failed: random tag")
assert(isarea({area = "yes"}), "test failed: explicit area")
assert(not isarea({area = "no"}), "test failed: explicit not area")
assert(not isarea({area = "no", landuse = "forest"}), "test failed: explicit not area with polygon tag")
assert(not isarea({leisure = "track"}), "test failed: leisure=track")
assert(isarea({area = "yes", leisure = "track"}), "test failed: leisure=track with area tag")
assert(not isarea({waterway = "river"}), "test failed: river")
assert(isarea({waterway = "riverbank"}), "test failed: river")
assert(isarea({highway = "services"}), "test failed: river")
assert(not isarea({natural="cliff"}), "test failed: cliff") -- issue #3084
assert(not isarea({building = "no"}), "test failed: building=no")
assert(isarea({building = "no", area = "yes"}), "test failed: building=no with area tag")
assert(isarea({building = "no", landuse = "forest"}), "test failed: building=no with other area tag")

print("TESTING: clean_tags")
assert(clean_tags({}), "Untagged")

tags={odbl = "yes"}
assert(clean_tags(tags), "delete tag return")
assert(deepcompare(tags, {}), "delete tags")

tags={['source:note'] = "yes"}
assert(clean_tags(tags), "delete wildcard tag return")
assert(deepcompare(tags, {}), "delete wildcard tags")

tags={natural = "tree"}
assert(not clean_tags(tags), "no delete tags return")
assert(deepcompare(tags, {natural = "tree"}), "no delete tags")

tags={natural = "tree", odbl = "yes"}
assert(not clean_tags(tags), "mixed tags return")
assert(deepcompare(tags, {natural = "tree"}), "mixed tags")

print("TESTING: add_point")
table_contents.planet_osm_point = {}
add_point({natural = "tree"})
assert(deepcompare(table_contents.planet_osm_point[1], {natural = "tree", tags = {}}), "Tag with column")

table_contents.planet_osm_point = {}
add_point({natural = "tree", foo = "bar"})
assert(deepcompare(table_contents.planet_osm_point[1], {natural = "tree", tags = {foo = "bar"}}), "Tag with column + hstore")

table_contents.planet_osm_point = {}
add_point({foo = "bar"})
assert(deepcompare(table_contents.planet_osm_point[1], {tags = {foo = "bar"}}), "hstore only")

print("TESTING: add_line")
table_contents.planet_osm_line = {}
add_line({highway = "road"})
assert(deepcompare(table_contents.planet_osm_line[1], {highway = "road", z_order = 330, tags = {}, way = { create = 'line', split_at = 100000 }}), "Tag with column")

table_contents.planet_osm_line = {}
add_line({highway = "road", foo = "bar"})
assert(deepcompare(table_contents.planet_osm_line[1], {highway = "road", z_order = 330, tags = {foo = "bar"}, way = { create = 'line', split_at = 100000 }}), "Tag with column + hstore")

table_contents.planet_osm_line = {}
add_line({foo = "bar"})
assert(deepcompare(table_contents.planet_osm_line[1], {tags = {foo = "bar"}, way = { create = 'line', split_at = 100000 }}), "hstore only")

print("TESTING: add_roads")
table_contents.planet_osm_roads = {}
add_roads({highway = "road"})
assert(deepcompare(table_contents.planet_osm_roads[1], {highway = "road", z_order = 330, tags = {}, way = { create = 'line', split_at = 100000 }}), "Tag with column")

table_contents.planet_osm_roads = {}
add_roads({highway = "road", foo = "bar"})
assert(deepcompare(table_contents.planet_osm_roads[1], {highway = "road", z_order = 330, tags = {foo = "bar"}, way = { create = 'line', split_at = 100000 }}), "Tag with column + hstore")

table_contents.planet_osm_roads = {}
add_roads({foo = "bar"})
assert(deepcompare(table_contents.planet_osm_roads[1], {tags = {foo = "bar"}, way = { create = 'line', split_at = 100000 }}), "hstore only")

print("TESTING: add_polygon")
table_contents.planet_osm_polygon = {}
add_polygon({natural = "wood"})
assert(deepcompare(table_contents.planet_osm_polygon[1], {natural = "wood", tags = {}, way = { create = 'area', multi=true }}), "Tag with column")

table_contents.planet_osm_polygon = {}
add_polygon({natural = "wood", foo = "bar"})
assert(deepcompare(table_contents.planet_osm_polygon[1], {natural = "wood", tags = {foo = "bar"}, way = { create = 'area', multi=true }}), "Tag with column + hstore")

table_contents.planet_osm_polygon = {}
add_polygon({foo = "bar"})
assert(deepcompare(table_contents.planet_osm_polygon[1], {tags = {foo = "bar"}, way = { create = 'area', multi=true }}), "hstore only")


print("TESTING: add_route")
table_contents.planet_osm_route = {}
add_route({tags = {route = "unicycle"}, members = {{type = 'w', ref = 1234, role = 'foo'}}})
assert(deepcompare(table_contents.planet_osm_route[1], {route = "unicycle", member_id = 1234, member_position = 1, tags = {}}), "Route with 1 way")

table_contents.planet_osm_route = {}
add_route({tags = {route = "unicycle"}, members = {{type = 'w', ref = 1234, role = 'foo'}, {type = 'n', ref = 1235, role = 'foo'}, }})
assert(deepcompare(table_contents.planet_osm_route[1], {route = "unicycle", member_id = 1234, member_position = 1, tags = {}}), "Route with 1 way + 1 node")

table_contents.planet_osm_route = {}
add_route({tags = {route = "unicycle"}, members = {{type = 'w', ref = 1234, role = 'foo'}, {type = 'w', ref = 1235, role = 'foo'}}})
assert(deepcompare(table_contents.planet_osm_route[1], {route = "unicycle", member_id = 1234, member_position = 1, tags = {}}), "Route with 2 ways")
assert(deepcompare(table_contents.planet_osm_route[2], {route = "unicycle", member_id = 1235, member_position = 2, tags = {}}), "Route with 2 ways")


print("TESTING: osm2pgsql.process_node")
table_contents.planet_osm_point = {}
osm2pgsql.process_node({tags = {}})
assert(deepcompare(table_contents.planet_osm_point, {}), "Untagged")

osm2pgsql.process_node({tags = {odbl = "yes"}})
assert(deepcompare(table_contents.planet_osm_point, {}), "Deleted tag")

-- By running process_node then manually running add_point the first and second entry
-- in the output tables should be the same.
osm2pgsql.process_node({tags = {natural = "tree", foo = "bar"}})
add_point({natural = "tree", foo = "bar"})
assert(deepcompare(table_contents.planet_osm_point[1], table_contents.planet_osm_point[2]), "Accepted tag")

print("TESTING: osm2pgsql.process_way")
table_contents.planet_osm_line = {}
table_contents.planet_osm_roads = {}
table_contents.planet_osm_polygon = {}

osm2pgsql.process_way({tags = {}})
assert(deepcompare(table_contents.planet_osm_line, {}), "Untagged line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Untagged roads")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Untagged polygon")

osm2pgsql.process_way({tags = {odbl = "yes"}})
assert(deepcompare(table_contents.planet_osm_line, {}), "Deleted tag line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Deleted tag roads")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Deleted tag polygon")

osm2pgsql.process_way({is_closed = false, tags = { highway = "road"}})
add_line({ highway = "road"})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[2]), "Line tag, open way, line table")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Line tag, open way, roads table")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Line tag, open way, polygon table")
table_contents.planet_osm_line = {}

osm2pgsql.process_way({is_closed = true, tags = { highway = "motorway"}})
add_line({highway = "motorway"})
add_roads({highway = "motorway"})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[2]), "Line tag, closed way, line table")
assert(deepcompare(table_contents.planet_osm_roads[1], table_contents.planet_osm_roads[2]), "Line tag, closed way, line table")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Line tag, closed way, polygon table")
table_contents.planet_osm_line = {}
table_contents.planet_osm_roads = {}

osm2pgsql.process_way({is_closed = false, tags = { natural = "wood"}})
add_line({natural = "wood"})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[1]), "area tag, open way, line table")
assert(deepcompare(table_contents.planet_osm_roads, {}), "area tag, open way, roads table")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "area tag, open way, polygon table")
table_contents.planet_osm_line = {}

osm2pgsql.process_way({is_closed = true, tags = { natural = "wood"}})
add_polygon({natural = "wood"})
assert(deepcompare(table_contents.planet_osm_line, {}), "area tag, closed way, line table")
assert(deepcompare(table_contents.planet_osm_roads, {}), "area tag, closed way, roads table")
assert(deepcompare(table_contents.planet_osm_polygon[1], table_contents.planet_osm_polygon[2]), "area tag, closed way, polygon table")

print("TESTING: osm2pgsql.process_relation")
table_contents.planet_osm_line = {}
table_contents.planet_osm_roads = {}
table_contents.planet_osm_polygon = {}
table_contents.planet_osm_route = {}

osm2pgsql.process_relation({tags = {}})
assert(deepcompare(table_contents.planet_osm_line, {}), "Untagged line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Untagged roads")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Untagged polygon")

osm2pgsql.process_relation({tags = {odbl = "yes"}})
assert(deepcompare(table_contents.planet_osm_line, {}), "Deleted tag line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Deleted tag roads")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Deleted tag polygon")

osm2pgsql.process_relation({tags = {type = "multipolygon", odbl = "yes"}})
assert(deepcompare(table_contents.planet_osm_line, {}), "Deleted tag line with type")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Deleted tag roads with type")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "Deleted tag polygon with type")

osm2pgsql.process_relation({tags = {type = "boundary", boundary = "foo"}})
add_line({boundary = "foo"})
add_polygon({boundary = "foo"})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[2]), "Boundary line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "Boundary roads")
assert(deepcompare(table_contents.planet_osm_polygon[1], table_contents.planet_osm_polygon[2]), "Boundary polygon")
table_contents.planet_osm_line = {}
table_contents.planet_osm_polygon = {}

osm2pgsql.process_relation({tags = {type = "boundary", boundary = "administrative"}})
add_line({boundary = "administrative"})
add_roads({boundary = "administrative"})
add_polygon({boundary = "administrative"})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[2]), "admin boundary line")
assert(deepcompare(table_contents.planet_osm_roads[1], table_contents.planet_osm_roads[2]), "admin boundary roads")
assert(deepcompare(table_contents.planet_osm_polygon[1], table_contents.planet_osm_polygon[2]), "admin boundary polygon")
table_contents.planet_osm_line = {}
table_contents.planet_osm_polygon = {}
table_contents.planet_osm_roads = {}

osm2pgsql.process_relation({tags = {type = "multipolygon", natural = "tree"}})
add_polygon({natural = "tree"})
assert(deepcompare(table_contents.planet_osm_line, {}), "MP line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "MP roads")
assert(deepcompare(table_contents.planet_osm_polygon[1], table_contents.planet_osm_polygon[2]), "admin boundary polygon")
table_contents.planet_osm_polygon = {}

osm2pgsql.process_relation({tags = {type = "route", route = "road"}, members = {{type = 'w', ref = 1234, role = 'forward'}}})
add_line({route = "road"})
add_route({tags = { route = "road"}, members = {{type = 'w', ref = 1234, role = 'forward'}}})
assert(deepcompare(table_contents.planet_osm_line[1], table_contents.planet_osm_line[2]), "route line")
assert(deepcompare(table_contents.planet_osm_roads, {}), "route roads")
assert(deepcompare(table_contents.planet_osm_polygon, {}), "route polygon")
assert(deepcompare(table_contents.planet_osm_route[1], table_contents.planet_osm_route[2]), "route route")
table_contents.planet_osm_line = {}
table_contents.planet_osm_polygon = {}
table_contents.planet_osm_roads = {}

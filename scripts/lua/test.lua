--[[
This file is part of OpenStreetMap Carto and used for validating the Lua tag transforms.

Run it with lua test.lua
]]

require ("openstreetmap-carto")

--- compare two tables.
-- @param t1 A table
-- @param t2 A table
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
assert(roads({}) == 0, "test failed: no tags")
assert(roads({foo="bar"}) == 0, "test failed: other tags")
assert(roads({highway="motorway"}) == 1, "test failed: motorway")
assert(roads({railway="rail"}) == 1, "test failed: rail")
assert(roads({highway="residential", railway="rail"}) == 1, "test failed: rail+residential")
assert(roads({railway="turntable"}) == 0, "test failed: rail=turntable")
assert(roads({railway="rail", service="spur"}) == 0, "test failed: rail SSY")
assert(roads({railway="rail", service="main"}) == 1, "test failed: rail non-SSY")
assert(roads({boundary="administrative"}) == 1, "test failed: boundary administrative")

print("TESTING: isarea")
assert(isarea({}) == 0, "test failed: no tags")
assert(isarea({foo = "bar"}) == 0, "test failed: random tag")
assert(isarea({area = "yes"}) == 1, "test failed: explicit area")
assert(isarea({area = "no"}) == 0, "test failed: explicit not area")
assert(isarea({area = "no", landuse = "forest"}) == 0, "test failed: explicit not area with polygon tag")
assert(isarea({leisure = "track"}) == 0, "test failed: leisure=track")
assert(isarea({area = "yes", leisure = "track"}) == 1, "test failed: leisure=track with area tag")
assert(isarea({waterway = "river"}) == 0, "test failed: river")
assert(isarea({waterway = "riverbank"}) == 1, "test failed: river")
assert(isarea({highway = "services"}) == 1, "test failed: river")
assert(isarea({natural="cliff"}) == 0, "test failed: cliff") -- issue #3084
assert(isarea({building = "no"}) == 0, "test failed: building=no")
assert(isarea({building = "no", area = "yes"}) == 1, "test failed: building=no with area tag")
assert(isarea({building = "no", landuse = "forest"}) == 1, "test failed: building=no with other area tag")

print("TESTING: filter_tags_generic")
assert(({filter_tags_generic({})})[1] == 1, "Untagged filter")
assert(equaltables(({filter_tags_generic({})})[2], {}), "Untagged tags")
assert(({filter_tags_generic({note="foo"})})[1] == 1, "deleted filter")
assert(equaltables(({filter_tags_generic({note="foo"})})[2], {}), "deleted tags")
assert(({filter_tags_generic({foo="bar"})})[1] == 0, "single tag filter")
assert(equaltables(({filter_tags_generic({foo="bar"})})[2], {foo="bar"}), "single tag tags")
assert(({filter_tags_generic({foo="bar", note="baz"})})[1] == 0, "tag + deleted tag filter")
assert(equaltables(({filter_tags_generic({foo="bar", note="baz"})})[2], {foo="bar"}), "tag + deleted tags")
assert(({filter_tags_generic({["note:xx"]="foo"})})[1] == 1, "wildcard deleted filter")
assert(equaltables(({filter_tags_generic({["note:xx"]="foo"})})[2], {}), "wildcard deleted tags")
assert(({filter_tags_generic({["note:xx"]="foo", foo="bar"})})[1] == 0, "wildcard deleted + tag filter")
assert(equaltables(({filter_tags_generic({["note:xx"]="foo", foo="bar"})})[2], {foo="bar"}), "wildcard deleted + tag tags")

assert(({filter_tags_generic({["foo:note:xx"]="foo"})})[1] == 0, "prefix later in tag filter")
assert(equaltables(({filter_tags_generic({["foo:note:xx"]="foo"})})[2], {["foo:note:xx"]="foo"}), "prefix later in tag tags")

print("TESTING: filter_tags_relation_member")

--- Tests filter_tags_relation_member against expected values
-- @param keyvalues OSM tags, after processing by relation transform
-- @param keyvaluemembers OSM tags of relation members, after processing by way transform
-- @param filter expected filter result
-- @param cols expected cols result
-- @param member_superseded expected member_superseded result
-- @param boundary expected boundary result
-- @param polygon expected polygon result
-- @param roads expected roads result
local function check_rel_member(keyvalues, keyvaluemembers, filter, cols, member_superseded, boundary, polygon, roads)

    local i = 0
    for _ in pairs(keyvaluemembers) do
        i = i + 1
    end

    local actual_filter, actual_cols, actual_member_superseded, actual_boundary, actual_polygon, actual_roads
            = filter_tags_relation_member(keyvalues, keyvaluemembers, nil, i)

    if actual_filter ~= filter then
        print("filter mismatch")
        return false
    end
    if not equaltables(actual_cols, cols) then
        print("cols mismatch")
        return false
    end
    if not equaltables(actual_member_superseded, member_superseded) then
        print("member_superseded mismatch, actual table was")
        for i, v in ipairs(actual_member_superseded) do
            print(i, v)
        end
        return false
    end
    if actual_boundary ~= boundary then
        print("boundary mismatch")
        return false
    end
    if actual_polygon ~= polygon then
        print("polygon mismatch")
        return false
    end
    if actual_roads ~= roads then
        print("roads mismatch")
        return false
    end
    return true
end

assert(check_rel_member({}, {}, 1, {}, {}, 0, 0, 0), "test failed: untagged memberless relation")
assert(check_rel_member({}, {{}}, 1, {}, {0}, 0, 0, 0), "test failed: untagged relation")

assert(check_rel_member({type="multipolygon"}, {{}}, 1, {}, {0}, 0, 0, 0),
       "test failed: untagged MP")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{}}, 0, {foo="bar"}, {0}, 0, 1, 0),
       "test failed: MP with tag")

-- New-style MPs
assert(check_rel_member({type="multipolygon", foo="bar"}, {{},{}}, 0, {foo="bar"}, {0,0}, 0, 1, 0),
       "test failed: MP with tag, two ways")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{baz="qax"}}, 0, {foo="bar"}, {0}, 0, 1, 0),
       "test failed: MP with tag, way with different tag")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{baz="qax"}, {}}, 0, {foo="bar"}, {0,0}, 0, 1, 0),
       "test failed: MP with tag, way with different tag + untagged way")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{foo="bar"}}, 0, {foo="bar"}, {0}, 0, 1, 0),
       "test failed: MP with tag, way with same tag")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{foo="bar"},{}}, 0, {foo="bar"}, {0,0}, 0, 1, 0),
       "test failed: MP with tag, way with same tag + untagged way")
assert(check_rel_member({type="multipolygon", foo="bar"}, {{foo="bar"}, {baz="qax"}}, 0, {foo="bar"}, {0,0}, 0, 1, 0),
       "test failed: MP with tag, way with same tag")

-- Old-style MPs
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}}, 1, {}, {0}, 0, 0, 0),
       "test failed: MP w/o tag, way with tag")
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}, {}}, 1, {}, {0,0}, 0, 0, 0),
       "test failed: MP w/o tag, way with tag + untagged way")
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}, {baz="qax"}}, 1, {}, {0,0}, 0, 0, 0),
       "test failed: MP w/o tag, way with tag + way with other tag")

-- Boundary relations
assert(check_rel_member({type="boundary"}, {{}}, 1, {}, {0}, 0, 0, 0),
       "test failed: untagged boundary")
assert(check_rel_member({type="boundary", boundary="administrative"}, {{}}, 0, {boundary="administrative"}, {0}, 1, 0, 1),
       "test failed: untagged boundary")
assert(check_rel_member({type="boundary", boundary="administrative"}, {{}}, 0, {boundary="administrative"}, {0}, 1, 0, 1),
       "test failed: untagged boundary")
assert(check_rel_member({type="boundary", boundary="administrative"}, {{foo="bar"}}, 0, {boundary="administrative"}, {0}, 1, 0, 1),
       "test failed: untagged boundary, tagged way")

-- Route relations
assert(check_rel_member({type="route"}, {{}}, 1, {}, {0}, 0, 0, 0),
       "test failed: untagged route")
assert(check_rel_member({type="route", route="road"}, {{}}, 0, {route="road"}, {0}, 1, 0, 0),
       "test failed: tagged route")

--[[
This file is part of OpenStreetMap Carto and used for validating the Lua tag transforms.

Run it with lua test.lua
]]

require ("openstreetmap-carto")

print("TESTING: z_order")

assert(z_order({}) == nil, "test failed: no tags")
assert(z_order({foo="bar"}) == nil, "test failed: other tags")
assert(z_order({highway="motorway"}) == 380 , "test failed: motorway")
assert(z_order({highway="motorway", railway="rail"}) == 440 , "test failed: motorway + rail")

print("TESTING: roads")
assert(roads({}) == 0, "test failed: no tags")
assert(roads({foo="bar"}) == 0, "test failed: other tags")
assert(roads({highway="motorway"}) == 1, "test failed: motorway")
assert(roads({railway="rail"}) == 1, "test failed: rail")
assert(roads({highway="residential", railway="rail"}) == 1, "test failed: rail+residential")
assert(roads({railway="turntable"}) == 0, "test failed: rail=turntable")
assert(roads({railway="rail", service="spur"}) == 0, "test failed: rail SSY")
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

-- yay multipolygons?
print("TESTING: combine_member_tags")
assert(equaltables(combine_member_tags({}), {}), "test failed: no members")
assert(equaltables(combine_member_tags({{}}), {}), "test failed: no member tags")
assert(equaltables(combine_member_tags({{}, {}}), {}), "test failed: no member tags, two members")
assert(equaltables(combine_member_tags({{foo="bar"}}), {foo="bar"}), "test failed: one member, tags")
assert(equaltables(combine_member_tags({{foo="bar"}, {}}), {foo="bar"}), "test failed: two members, tags on first")
assert(equaltables(combine_member_tags({{}, {foo="bar"}}), {foo="bar"}), "test failed: two members, tags on second")
assert(equaltables(combine_member_tags({{foo="bar"}, {foo="bar"}}), {foo="bar"}), "test failed: two members, tags on both")
assert(combine_member_tags({{foo="bar"}, {baz="qax"}}) == nil, "test failed: two members, different tags")

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

assert(check_rel_member({type="multipolygon"}, {{}}, 1, {}, {0}, 0, 1, 0),
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
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}}, 0, {foo="bar"}, {1}, 0, 1, 0),
       "test failed: MP w/o tag, way with tag")
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}, {}}, 0, {foo="bar"}, {1,1}, 0, 1, 0),
       "test failed: MP w/o tag, way with tag + untagged way")
assert(check_rel_member({type="multipolygon"}, {{foo="bar"}, {baz="qax"}}, 1, {}, {0,0}, 0, 1, 0),
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

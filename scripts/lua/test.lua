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

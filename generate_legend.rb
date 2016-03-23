#!/usr/bin/ruby -w

require 'tmpdir'

temp_dir = Dir.mktmpdir
carto_path = '/home/andy/src/tilemill/node_modules/carto/bin/carto'
mapnik_legendary_path = '/home/andy/src/mapnik-legendary'
osm_carto_path = File.expand_path(File.dirname(__FILE__))

# Compile to XML
command = "#{carto_path} project.mml > project.xml"
puts command
system command

# Generate the legend
command = "cd #{mapnik_legendary_path} && ruby -Ilib/ bin/mapnik_legendary --overwrite #{File.join(osm_carto_path, 'legend.yml')} #{File.join(osm_carto_path, 'project.xml')}"
puts command
system command


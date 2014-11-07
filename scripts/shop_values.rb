#!/usr/bin/ruby
require 'net/http'
require 'json'
require 'pp'

MIN_COUNT = 100
EXCEPTIONS = [
   "no",
   "vacant",
   "empty",
   "disused",
   "unknown",
   "closed",
   "fixme",
   "FIXME",
   "FixMe",
   "other",
   "*"
]


url = URI.parse('http://taginfo.openstreetmap.org/api/4/key/values?key=shop&sortname=count&sortorder=desc')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
   http.request(req)
}

data = JSON.parse(res.body)["data"]



# Get an array of values that only includes values with more than MIN_COUNT occurrences
counted = data.select { |h| h["count"] > MIN_COUNT }.map { |h| h["value"] } 
# Filter out empty strings
no_empty = counted.reject { |h| h.strip.empty? } 
# Filter out exceptions in EXCEPTIONS
filtered = no_empty - EXCEPTIONS

# Output in SQL style
puts "(" + filtered.map{ |val| "'#{val}'" }.sort.join(", ") + ")"


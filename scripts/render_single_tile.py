#!/usr/bin/python
#
# render a single tile by either specifying an URL, z,x,y or lat/lon
#
#  (c) 2016 Sven Geggus <sven-osm@geggus.net>

import argparse
import sys
import math
import os

def deg2num(lat_deg, lon_deg, zoom):
  lat_rad = math.radians(lat_deg)
  n = 2.0 ** zoom
  xtile = int((lon_deg + 180.0) / 360.0 * n)
  ytile = int((1.0 - math.log(math.tan(lat_rad) + (1 / math.cos(lat_rad))) / math.pi) / 2.0 * n)
  return (xtile, ytile)


def TileToMeters(tx, ty, zoom):
  initialResolution = 20037508.342789244 * 2.0 / 256.0
  originShift = 20037508.342789244
  tileSize = 256.0
  zoom2 = (2.0**zoom)
  res = initialResolution / zoom2
  mx = (res*tileSize*(tx+1))-originShift
  my = (res*tileSize*(zoom2-ty))-originShift
  return mx, my

def TileToBBox(x,y,z):
  x1,y1=TileToMeters(x-1,y+1,z)
  x2,y2=TileToMeters(x,y,z) 
  return x1,y1,x2,y2

if __name__ == "__main__":

  parser = argparse.ArgumentParser(description='Render a single tile using Mapnik')
  parser.add_argument('-s', '--stylefile', default='osm.xml', help='XML Mapnik style file')
  parser.add_argument('-o', '--outputfile', help='output filename default=prefix-zval-xval-yval.png, "-" for stdout')
  parser.add_argument('-p', '--prefix', default='mapnik')
  group = parser.add_mutually_exclusive_group(required=True)          
  group.add_argument('-c', '--lonlat', nargs=3, help='zoom lon lat Position of tile')
  group.add_argument('-m', '--zxy', nargs=3, help='z x y Name of Tile')                              
  group.add_argument('-u', '--url', help='Tile URL from which z,x and y will be extracted')

  args = parser.parse_args()

  if os.path.exists(args.stylefile):
    mapfile=args.stylefile
  else:
    sys.stderr.write("file %s not found\n" % args.stylefile);
    sys.exit(1)

  if args.url:
    import re
    # our URI is in the form http://<server>/<something>/<z>/<x>/<y>.<ext>
    # we are only interested in /<z>/<x>/<y>.<ext>
    regex='/([0-9]+)/([0-9]+)/([0-9]+)\.(...)'
    res=re.findall(regex,args.url)
    z = int(res[0][0])
    x = int(res[0][1])
    y = int(res[0][2])
  
  if args.lonlat:
    z=int(args.lonlat[0])
    lonx=float(args.lonlat[1])
    laty=float(args.lonlat[2])
    x,y = deg2num(lonx, laty, z)
    
  if args.zxy:
    z=int(args.zxy[0])
    x=int(args.zxy[1])
    y=int(args.zxy[2])

  import mapnik
  m = mapnik.Map(256, 256)
  mapnik.load_map(m, mapfile)
  bba=TileToBBox(x,y,z)
  bbox=mapnik.Box2d(bba[0],bba[1],bba[2],bba[3])
  m.zoom_to_box(bbox)
  im = mapnik.Image(256, 256)
  mapnik.render(m, im)
  if args.outputfile:
    ofile=args.outputfile
  else:
    ofile=args.prefix+'-'+str(z)+'-'+str(x)+'-'+str(y)+'.png'
  
  if ofile != '-':
    f = open(ofile, 'w')
    f.write(im.tostring('png'));
    f.close()
  else:
    sys.stdout.write(im.tostring('png'));


from colormath.color_conversions import convert_color
from colormath.color_objects import LabColor, LCHabColor, sRGBColor
from colormath.color_diff import delta_e_cie2000
import numpy

from collections import OrderedDict, namedtuple

class Color:
  def __init__(self, lch_tuple):
    self.m_lch = LCHabColor(*lch_tuple)

  def lch(self):
    return "Lch({:.0f},{:.0f},{:.0f})".format(*(self.m_lch.get_value_tuple()))

  def rgb(self):
    rgb = convert_color(self.m_lch, sRGBColor)
    if (rgb.rgb_r != rgb.clamped_rgb_r or rgb.rgb_g != rgb.clamped_rgb_g or rgb.rgb_b != rgb.clamped_rgb_b):
      raise Exception("Colour {} is outside sRGB".format(self.lch()))
    return rgb.get_rgb_hex()

  def rgb_error(self):
    return delta_e_cie2000(convert_color(self.m_lch, LabColor),
                           convert_color(sRGBColor.new_from_rgb_hex(self.rgb()), LabColor))

road_classes = ["motorway", "trunk", "primary", "secondary"]
colour_divisions = len(road_classes) - 1
hues = OrderedDict()

# The minimum and maximum hue for the road colours
# Because hue is a circle, it may be needed to add/subtract 360 to the min or
# max when changing them

min_h = 10
max_h = 106
delta_h = (max_h - min_h) / colour_divisions

h = min_h
for name in road_classes:
  hues[name] = h
  h = (h + delta_h) % 360

print hues
# A class to hold information for each line
ColourInfo = namedtuple("ColourInfo", ["start_l", "end_l", "start_c", "end_c"])

line_colour_infos = OrderedDict()

# The saturation and lightness for each type of line
line_colour_infos["fill"] = ColourInfo(start_l = 70, end_l = 97, start_c = 35, end_c = 29)
line_colour_infos["low-zoom"] = ColourInfo(start_l = 62, end_l = 92, start_c = 50, end_c = 50)

line_colour_infos["casing"] = ColourInfo(start_l = 50, end_l = 50, start_c = 70, end_c = 55)
line_colour_infos["low-zoom-casing"] = ColourInfo(start_l = 50, end_l = 70, start_c = 50, end_c = 65)

# Colours for the MSS
colours = OrderedDict()

for line_name, line_colour_info in line_colour_infos.iteritems():
  c = line_colour_info.start_c
  delta_c = (line_colour_info.end_c - line_colour_info.start_c) / colour_divisions
  l = line_colour_info.start_l
  delta_l = (line_colour_info.end_l - line_colour_info.start_l) / colour_divisions

  for name in road_classes:
    colours[name + "-" + line_name] = Color((l, c, hues[name]))
    c += delta_c
    l += delta_l

for name, colour in colours.iteritems():
  print "@{name}: {rgb}; // {lch}, error {delta:.1f}".format(name = name, rgb = colour.rgb(), lch = colour.lch(), delta = colour.rgb_error())

# Generate colours for the shields
shield_colour_info = ColourInfo(start_l = 65, end_l = 80, start_c = 30, end_c = 30)
shield_colours = OrderedDict()


c = shield_colour_info.start_c
delta_c = (shield_colour_info.end_c - shield_colour_info.start_c) / colour_divisions
l = shield_colour_info.start_l
delta_l = (shield_colour_info.end_l - shield_colour_info.start_l) / colour_divisions

for name in road_classes:
  shield_colours[name] = Color((l, c, hues[name]))
  c += delta_c
  l += delta_l

shield_colours["tertiary"] = Color((shield_colour_info.end_l, 0, 0))

print "\n\nRoad shield information\n\n"
for name, colour in shield_colours.iteritems():
  print "{name}:{rgb}".format(name = name, rgb = colour.rgb())

for name, colour in shield_colours.iteritems():
  print "# {name}: {lch}, error {delta:.1f}".format(name = name, lch = colour.lch(), delta = colour.rgb_error())
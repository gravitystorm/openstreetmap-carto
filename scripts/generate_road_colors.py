from colormath.color_conversions import convert_color
from colormath.color_objects import LabColor, LCHabColor, SpectralColor, sRGBColor, \
XYZColor, LCHuvColor, IPTColor
from colormath.color_diff import delta_e_cie2000
import numpy

def int_lch_to_string(lch):
	lch = lch.get_value_tuple()
	l = "{0:.1f}".format(lch[0])
	c = "{0:.1f}".format(lch[1])
	h = "{0:.1f}".format(lch[2])
	if l[-1] == '0':
 	  l = "{0:.0f}".format(lch[0])
	if c[-1] == '0':
 	  c = "{0:.0f}".format(lch[1])
	if h[-1] == '0':
 	  h = "{0:.0f}".format(lch[2])

	return 'lch(' + l + ', ' + c + ', ' + h + ')' 


class Color:
	def __init__(self, name, hex):
		rgb = sRGBColor.new_from_rgb_hex(hex)
		self.lch = convert_color(rgb, LCHabColor)
		if name != None:
			if 'low-zoom' in name:
				self.lch.lch_c = 50
			if 'casing' in name:
				self.lch.lch_l = 50
				self.lch.lch_c = 80
		self.intended_lch_string = int_lch_to_string(self.lch)
		self.hex = str(convert_color(self.lch, sRGBColor).get_rgb_hex())
		assert(len(self.hex) == 7)

	@classmethod
	def lch(self, l, c, h):
		lch = LCHabColor(l, c, h)
		rgb = convert_color(lch, sRGBColor)
		#print(lch.get_value_tuple())
		#print(rgb.get_upscaled_value_tuple())
		hex = str(rgb.get_rgb_hex())
		if (len(hex) != 7):
			print("this lch value is outside rgb range")
			exit

		effective_lch = convert_color(rgb, LCHabColor)
		effective_lch_tuple = effective_lch.get_value_tuple()
		lch_tuple = lch.get_value_tuple()

		returned = Color(None, hex)

		color1_lab = convert_color(effective_lch, LabColor);
		color2_lab = convert_color(lch, LabColor);
		delta_e = delta_e_cie2000(color1_lab, color2_lab);

		if delta_e > 2.5:
			print("high conversion error on moving to rgb")

		delta = tuple(numpy.subtract(effective_lch_tuple, lch_tuple))
		lch_delta = ' lch(' + str("{0:.1f}".format(delta[0])) + ', ' + str("{0:.1f}".format(delta[1])) + ', ' + str("{0:.1f}".format(delta[2])) + ')' 

		returned.intended_lch_string = int_lch_to_string(lch) + ' Conversion error on moving from lch to rgb: ' + str("{0:.1f}".format(delta_e)) + lch_delta

		return returned

	def get_as_hex(self):
		return self.hex

	def get_intended_lch(self):
		return self.intended_lch_string

min_h = 10
max_h = 106
delta_h = (max_h - min_h) / 3
motorway_hue = (min_h) % 360
trunk_hue = (min_h + delta_h) % 360
primary_hue = (min_h + delta_h*2) % 360
secondary_hue = (min_h + delta_h*3) % 360

colors = {}

min_l = 65
max_l = 80
delta_l = (max_l - min_l)/3

c = 30

i = 0
colors['motorway_shield'] = Color.lch(min_l+delta_l*i, c, motorway_hue)
i = 1
colors['trunk_shield'] = Color.lch(min_l+delta_l*i, c, trunk_hue)
i = 2
colors['primary_shield'] = Color.lch(min_l+delta_l*i, c, primary_hue)
i = 3
colors['secondary_shield'] = Color.lch(min_l+delta_l*i, c, secondary_hue)

colors['tertiary_shield'] = Color.lch(min_l+delta_l*i, 0, 0)

min_c = 29
max_c = 35
delta_c = max_c - min_c
delta_c /= 3

min_l = 70
max_l = 97
delta_l = max_l - min_l
delta_l /= 3
i = 0
colors['motorway_fill'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, motorway_hue)
i = 1
colors['trunk_fill'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, trunk_hue)
i = 2
colors['primary_fill'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, primary_hue)
i = 3
colors['secondary_fill'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, secondary_hue)

min_l = 62
max_l = 92
delta_l = (max_l - min_l)/3

c = 50
i = 0
colors['motorway-low-zoom'] = Color.lch(min_l+delta_l*i, c, motorway_hue)
i = 1
colors['trunk-low-zoom'] = Color.lch(min_l+delta_l*i, c, trunk_hue)
i = 2
colors['primary-low-zoom'] = Color.lch(min_l+delta_l*i, c, primary_hue)

l = 50

min_c = 55
max_c = 70
delta_c = max_c - min_c
delta_c /= 3

i = 0
colors['motorway-casing'] = Color.lch(l, max_c-delta_c*i, motorway_hue)
i = 1
colors['trunk-casing'] = Color.lch(l, max_c-delta_c*i, trunk_hue)
i = 2
colors['primary-casing'] = Color.lch(l, max_c-delta_c*i, primary_hue)
i = 3
colors['secondary-casing'] = Color.lch(l, max_c-delta_c*i, secondary_hue)

min_l = 50
max_l = 70
delta_l = (max_l - min_l)/3

min_c = 50
max_c = 65
delta_c = max_c - min_c
delta_c /= 3

i = 0
colors['motorway-low-zoom-casing'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, motorway_hue)
i = 1
colors['trunk-low-zoom-casing'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, trunk_hue)
i = 2
colors['primary-low-zoom-casing'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, primary_hue)
i = 3
colors['secondary-low-zoom-casing'] = Color.lch(min_l+delta_l*i, max_c-delta_c*i, secondary_hue)

road_fill = """
//road colors for major roads were generated with scripts/generate_road_colors.py
@motorway-fill: """ + colors['motorway_fill'].get_as_hex() + '; // ' + colors['motorway_fill'].intended_lch_string + """
@trunk-fill: """+colors['trunk_fill'].get_as_hex() + '; // ' + colors['trunk_fill'].intended_lch_string + """
@primary-fill: """+colors['primary_fill'].get_as_hex() + '; // ' + colors['primary_fill'].intended_lch_string + """
@secondary-fill: """+colors['secondary_fill'].get_as_hex() + '; // ' + colors['secondary_fill'].intended_lch_string + """
"""

road_low_zoom = """
@motorway-low-zoom: """+colors['motorway-low-zoom'].get_as_hex() + '; // ' + colors['motorway-low-zoom'].intended_lch_string + """
@trunk-low-zoom: """+colors['trunk-low-zoom'].get_as_hex() + '; // ' + colors['trunk-low-zoom'].intended_lch_string + """
@primary-low-zoom: """+colors['primary-low-zoom'].get_as_hex() + '; // ' + colors['primary-low-zoom'].intended_lch_string + """
"""

road_casing = """
@default-casing: white;
@motorway-casing: """+colors['motorway-casing'].get_as_hex() + '; // ' + colors['motorway-casing'].intended_lch_string + """
@trunk-casing: """+colors['trunk-casing'].get_as_hex() + '; // ' + colors['trunk-casing'].intended_lch_string + """
@primary-casing: """+colors['primary-casing'].get_as_hex() + '; // ' + colors['primary-casing'].intended_lch_string + """
@secondary-casing: """+colors['secondary-casing'].get_as_hex() + '; // ' + colors['secondary-casing'].intended_lch_string + """
"""

road_low_zoom_casing = """
@motorway-low-zoom-casing: """+colors['motorway-low-zoom-casing'].get_as_hex() + '; // ' + colors['motorway-low-zoom-casing'].intended_lch_string + """
@trunk-low-zoom-casing: """+colors['trunk-low-zoom-casing'].get_as_hex() + '; // ' + colors['trunk-low-zoom-casing'].intended_lch_string + """
@primary-low-zoom-casing: """+colors['primary-low-zoom-casing'].get_as_hex() + '; // ' + colors['primary-low-zoom-casing'].intended_lch_string + """
@secondary-low-zoom-casing: """+colors['secondary-low-zoom-casing'].get_as_hex() + '; // ' + colors['secondary-low-zoom-casing'].intended_lch_string + """
"""

for_create_standard_shields_script = """#shield colors were generated with scripts/generate_road_colors.py
colours='motorway:"""+colors['motorway_shield'].get_as_hex()+"""
trunk:"""+colors['trunk_shield'].get_as_hex()+"""
primary:"""+colors['primary_shield'].get_as_hex()+"""
secondary:"""+colors['secondary_shield'].get_as_hex()+"""
tertiary:"""+colors['tertiary_shield'].get_as_hex()+"""'
"""

print(road_fill) 
print(road_low_zoom) 
print(road_casing)
print(road_low_zoom_casing)
print("")
print(for_create_standard_shields_script) 
print("#motorway: " + colors['motorway_shield'].intended_lch_string)
print("#trunk: " + colors['trunk_shield'].intended_lch_string)
print("#primary: " + colors['primary_shield'].intended_lch_string)
print("#secondary: " + colors['secondary_shield'].intended_lch_string)
print("#tertiary: " + colors['tertiary_shield'].intended_lch_string)

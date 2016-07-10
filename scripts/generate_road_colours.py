#!/usr/bin/env python2

from colormath.color_conversions import convert_color
from colormath.color_objects import LabColor, LCHabColor, sRGBColor
from colormath.color_diff import delta_e_cie2000
import sys

from collections import OrderedDict, namedtuple

class Color:
    """A color in the CIE lch color space."""

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


def main():
    # Print a warning about the nature of these definitions.
    print "/* This is generated code, do not change this file manually.         */"
    print
    print "/* To change these definitions, alter                                */"
    print "/* scripts/generate_road_colours.py and run:                         */"
    print "/*                                                                   */"
    print "/*   ./scripts/generate_road_colours.py > road-colors-generated.mss  */"
    print "/*                                                                   */"

    verbose = False
    if len(sys.argv) == 2:
        if sys.argv[1] == "-v":
            verbose = True

    # All road classes colours will be generated for, in order of importance (biggest first).
    road_classes = ["motorway", "trunk", "primary", "secondary", "tertiary"]
    colour_divisions = len(road_classes) - 1
    hues = OrderedDict()
    
    # The minimum and maximum hue for the road colours
    # Because hue is a circle, it may be needed to add/subtract 360 to the min or
    # max when changing them

    # Red
    min_h = 10
    # Yellow-ish
    max_h = 106

    delta_h = (max_h - min_h) / colour_divisions
    
    h = min_h
    for name in road_classes:
        hues[name] = h
        h = (h + delta_h) % 360

    # A class to hold information for each line
    ColourInfo = namedtuple("ColourInfo", ["start_l", "end_l", "start_c", "end_c"])

    line_colour_infos = OrderedDict()

    # The lightness (l) and chroma (c; also known as saturation) for each type of colour.
    # Lightness ranges from 0 to 100; dark to bright.
    # Chroma ranges from 0 to 100 too; unsaturated to fully saturated.

    # The higher the road classification, the higher its saturation. Conversely,
    # the roads get brighter towards the lower end of the classification.
    line_colour_infos["fill"] = ColourInfo(start_l = 70, end_l = 99, start_c = 35, end_c = 16)
    line_colour_infos["low-zoom"] = ColourInfo(start_l = 62, end_l = 92, start_c = 50, end_c = 40)

    line_colour_infos["casing"] = ColourInfo(start_l = 50, end_l = 65, start_c = 70, end_c = 36)
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
        if verbose:
            line = "@{name}: {rgb}; // {lch}, error {delta:.1f}"
        else:
            line = "@{name}: {rgb};"
        print line.format(name = name, rgb = colour.rgb(), lch = colour.lch(), delta = colour.rgb_error())

    # Generate colours for the shields
    shield_colour_info = {}
    shield_colour_info["fill"] = ColourInfo(start_l = 85, end_l = 95, start_c = 12, end_c = 14)
    shield_colour_info["stroke_fill"] = ColourInfo(start_l = 70, end_l = 80, start_c = 22, end_c = 24)
    shield_colour_info["text"] = ColourInfo(start_l = 20, end_l = 25, start_c = 40, end_c = 42)
    shield_colours = OrderedDict()


    c1 = shield_colour_info["fill"].start_c
    delta_c1 = (shield_colour_info["fill"].end_c - shield_colour_info["fill"].start_c) / colour_divisions
    l1 = shield_colour_info["fill"].start_l
    delta_l1 = (shield_colour_info["fill"].end_l - shield_colour_info["fill"].start_l) / colour_divisions

    c2 = shield_colour_info["stroke_fill"].start_c
    delta_c2 = (shield_colour_info["stroke_fill"].end_c - shield_colour_info["stroke_fill"].start_c) / colour_divisions
    l2 = shield_colour_info["stroke_fill"].start_l
    delta_l2 = (shield_colour_info["stroke_fill"].end_l - shield_colour_info["stroke_fill"].start_l) / colour_divisions

    c3 = shield_colour_info["text"].start_c
    delta_c3 = (shield_colour_info["text"].end_c - shield_colour_info["text"].start_c) / colour_divisions
    l3 = shield_colour_info["text"].start_l
    delta_l3 = (shield_colour_info["text"].end_l - shield_colour_info["text"].start_l) / colour_divisions

    for name in road_classes:
        shield_colours[name] = {}
        shield_colours[name]["fill"] = Color((l1, c1, hues[name]))
        shield_colours[name]["stroke_fill"] = Color((l2, c2, hues[name]))
        shield_colours[name]["text"] = Color((l3, c3, hues[name]))
        c1 += delta_c1
        l1 += delta_l1
        c2 += delta_c2
        l2 += delta_l2
        c3 += delta_c3
        l3 += delta_l3

    shield_colours["tertiary"] = {}
    shield_colours["tertiary"]["fill"] = Color((shield_colour_info["fill"].end_l, 0, 0))
    shield_colours["tertiary"]["stroke_fill"] = Color((shield_colour_info["stroke_fill"].end_l, 0, 0))
    shield_colours["tertiary"]["text"] = Color((shield_colour_info["text"].end_l, 0, 0))

    #print "\n\nRoad shield information\n\n"
    for name, colour in shield_colours.iteritems():
        if verbose:
            line = "@shield-{name}-fill: {rgb}; // {lch}, error {delta:.1f}"
        else:
            line = "@shield-{name}-fill: {rgb};"
        print line.format(name = name, rgb = colour["text"].rgb(), lch = colour["text"].lch(), delta = colour["text"].rgb_error())

    if verbose:
        print "\n"
        for name, colour in shield_colours.iteritems():
            # note that the two additional blanks at the beginning are intentional
            print "  config['{name}']['fill'] = '{rgb}' # {lch}, error {delta:.1f}".format(name = name, rgb = colour["fill"].rgb(), lch = colour["fill"].lch(), delta = colour["fill"].rgb_error())
            print "  config['{name}']['stroke_fill'] = '{rgb}' # {lch}, error {delta:.1f}".format(name = name, rgb = colour["stroke_fill"].rgb(), lch = colour["stroke_fill"].lch(), delta = colour["stroke_fill"].rgb_error())


if __name__ == "__main__":
    main()

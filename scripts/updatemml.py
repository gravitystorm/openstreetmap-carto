# updatemml.py, ircama, 2016-5-30
import re

####################### START CONFIG
dbParms = """\
"dbname": "osm",
        "user": "postgres",
        "password": "postgres_007%",
        "port": "5432",
        "host": "localhost"\
"""

bounds = """\
"bounds": [
    9.8204,
    45.7594,
    10.2914,
    46.0384
  ]\
"""

center = """\
"center": [
    10.0394,
    45.909,
    13
  ]\
"""
####################### END CONFIG

# Read in the file
filedata = None
with open('project.mml', 'r') as file :
  filedata = file.read()

# Replace the target strings
filedata = filedata.replace('"dbname": "gis"', dbParms)
filedata = filedata.replace("A faithful reimplementation of the standard OpenStreetMap style", "Parsed Openstreetmap-orto to suit Tilemill")

string = None
pattern = '"bounds": \[\s*[0-9.-]+\s*,\s*[0-9.-]+\s*,\s*[0-9.-]+\s*,\s*[0-9.-]+\s*\]'
if re.search(pattern, filedata, re.DOTALL):
	r = re.compile(pattern, re.DOTALL)
	string = re.sub(r, bounds, filedata)
	filedata = string

string = None
pattern = '"center": \[\s*[0-9.-]+\s*,\s*[0-9.-]+\s*,\s*[0-9.-]+\s*\]'
if re.search(pattern, filedata, re.DOTALL):
	r = re.compile(pattern, re.DOTALL)
	string = re.sub(r, center, filedata)
	filedata = string

# Write the file out again
with open('project.mml', 'w') as file:
  file.write(filedata)
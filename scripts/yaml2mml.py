#!/usr/bin/env python

from __future__ import print_function
from six import iteritems
import argparse, json, os, sys, yaml, glob

def merge(dst, src):
  if src == None:
    return
  if isinstance(src, dict):
    for k,v in iteritems(src):
      if k in dst:
        merge(dst.get(k), v)
      else:
        dst[k] = v
  else:
    if dst != src:
      dst += src

parser = argparse.ArgumentParser(description='Keeps project files in sync by converting project.d/*.yaml to project.mml.')
parser.add_argument('--check', dest='check', help='write generated JSON to stdout instead to project.mml', required=False, action='store_true', default=False)
args = parser.parse_args()

script_dir = os.path.dirname(__file__)
yaml_pattern = os.path.join(script_dir, '../project.d/*.yaml')
mml_path = os.path.join(script_dir, '../project.mml')

yaml_data = {}

try:
  yaml_files = glob.glob(yaml_pattern)
  yaml_files.sort()
  for filename in yaml_files:
    yaml_stream = open(filename, 'rb')
    partial_data = yaml.safe_load(yaml_stream)
    merge(yaml_data, partial_data)
    yaml_stream.close()
except IOError:
  print('Could not read YAML file. Aborting.')
  sys.exit(1)

try:
  if (args.check == False):
    mml_file = open(mml_path, 'w')
    json.dump(yaml_data, mml_file, indent=2, separators=(',', ': '))
    mml_file.close()
  else:
    json.dump(yaml_data, sys.stdout, indent=2, separators=(',', ': '))
except IOError:
  print('Could not save MML file. Aborting.')
  sys.exit(1)

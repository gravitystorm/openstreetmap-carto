#!/usr/bin/env python

from __future__ import print_function
import argparse
import json
import os
import sys
import yaml

parser = argparse.ArgumentParser(description='Keeps project files in sync by converting project.yaml to project.mml.')
parser.add_argument('--check', dest='check',
                    help='write generated JSON to stdout instead to project.mml',
                    required=False, action='store_true', default=False)
args = parser.parse_args()

yaml_path = os.path.join(os.path.dirname(__file__), '../project.yaml')
mml_path = os.path.join(os.path.dirname(__file__), '../project.mml')

try:
    yaml_file = open(yaml_path)
    yaml = yaml.safe_load(yaml_file)
    yaml_file.close()

    try:
        if not args.check:
            mml_file = open(mml_path, 'wb')
            json.dump(yaml, mml_file, indent=2, separators=(',', ': '))
            mml_file.close()
        else:
            json.dump(yaml, sys.stdout, indent=2, separators=(',', ': '))
    except IOError:
        print('Could not save MML file. Aborting.')
        sys.exit(1)
except IOError:
    print('Could not read YAML file. Aborting.')
    sys.exit(1)

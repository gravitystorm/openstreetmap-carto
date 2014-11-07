#!/usr/bin/env python
import sys, yaml, json
json.dump(yaml.safe_load(sys.stdin), sys.stdout, indent=2)

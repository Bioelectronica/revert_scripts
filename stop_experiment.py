#!/usr/bin/python
import os
import json
os.chdir("/data")
all_subdirs = [d for d in os.listdir(".") if os.path.isdir(d)]
latest_subdir = max(all_subdirs, key=os.path.getmtime)
print(latest_subdir)
fname = latest_subdir+"/hw_settings.json"
f = open(fname,"rb")
dct = json.load(f)
print(dct["expend"])
dct["expend"] = True
print(dct["expend"])
f.close()
f = open(fname,"w")
json.dump(dct,f)
f.close()

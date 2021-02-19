import os
import glob

for idx, name in enumerate(glob.glob('scene-*')):
    rename = "scene-{:02d}.md".format(idx)
    os.rename(name, rename)

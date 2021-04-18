import re
from os import listdir, rename

names = []

for name in listdir():
    match = re.match(r'^harriet-starr-(.*)\.md', name)
    if match:
        names.append(name)

names = sorted(names)

enumerated = enumerate(names)

for idx, name in enumerated:
    new_name = "harriet-starr-scene-{:03}.md".format(idx)
    print(f"Renaming {name} to {new_name}")
    rename(name, new_name)

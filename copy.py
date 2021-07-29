import glob
import os

dotfiles = glob.glob("**/*", recursive=True)

for file in dotfiles:
    if not os.path.isfile(file):
        continue
    if file == "copy.py":
        continue

    f = open(file, "r")
    lines = f.readlines()

    if lines[0][1] == "!":
        line = lines[1]
    else:
        line = lines[0]

    path = line.strip()
    path = path[path.index(" ") + 1:]
    pathdir = "/".join(path.split("/")[:-1])

    print("copying:", file, "->", path)
    os.system(f"mkdir -p {pathdir}")
    os.system(f"cp {file} {path}")

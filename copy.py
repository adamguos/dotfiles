import glob
import os
import sys

if len(sys.argv) > 1:
    dotfiles = sys.argv[1:]
    copy_all = True
else:
    dotfiles = glob.glob("**/*", recursive=True)
    copy_all = False

for file in dotfiles:
    if not os.path.isfile(file):
        continue
    if file == "copy.py":
        continue
    if " " in file:
        continue

    if not copy_all:
        while True:
            res = input(f"Copy {file}? (y/n/a) ")
            if res == "y" or res == "n" or res == "a":
                break

        if res == "n":
            continue
        if res == "a":
            copy_all = True

    f = open(file, "r")
    lines = f.readlines()

    if lines[0][1] in ["!", "?"]:
        line = lines[1]
    else:
        line = lines[0]

    path = line.strip()
    path = path[path.index(" ") + 1:]
    if " " in path:
        path = path[:path.index(" ")]
    pathdir = "/".join(path.split("/")[:-1])

    # print("copying:", file, "->", path)
    print("creating symlink:", file, "->", path)
    os.system(f"mkdir -p {pathdir}")
    # os.system(f"cp {file} {path}")
    os.system(f"ln -sf `pwd`/{file} {path}")

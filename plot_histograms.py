#! /usr/bin/env python

import glob

def main():
    data = {}
    files = []
    for file in glob.glob("*.dat"):
        files.append(file)

    files = sorted(files, key=lambda x: int(x.split('_')[-1].split('.')[0]))

if __name__ == '__main__':
    main()
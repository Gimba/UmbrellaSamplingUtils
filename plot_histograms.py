#! /usr/bin/env python

import glob


def main():
    data = {}
    files = []
    for file in glob.glob("*.dat"):
        files.append(file)

    files = sorted(files, key=lambda x: int(x.split('_')[-1].split('.')[0]))

    for file in files:
        with open(file, 'r') as f:
            file_number = file.split('_')[-1].split('.')[0]
            print(file_number)
            data[file_number] = []

            for line in f.readlines():
                dat = line.split()[-1]
                data[file_number].append(dat)


if __name__ == '__main__':
    main()

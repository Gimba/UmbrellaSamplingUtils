#! /usr/bin/env python

import glob

def main():
    for file in glob.glob("*.dat"):
        print(file)

if __name__ == '__main__':
    main()
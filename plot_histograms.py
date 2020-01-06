#! /usr/bin/env python

import glob
import matplotlib.pyplot as plt
import numpy as np

def main():
    data = {}
    files = []
    for file in glob.glob("*.dat"):
        files.append(file)

    files = sorted(files, key=lambda x: int(x.split('_')[-1].split('.')[0]))

    for file in files:
        with open(file, 'r') as f:
            file_number = int(file.split('_')[-1].split('.')[0])
            data[file_number] = []

            for line in f.readlines():
                dat = line.split()[-1]
                data[file_number].append(float(dat))

            plt.hist(data[file_number], bins=100, histtype='step')
    plt.xlabel('angle')
    plt.ylabel('data points')

    #  use quantiles to check proper overlap of distributions
    for key in sorted(data.keys()):
        key_next = key + 1
        if key_next in data.keys():
            dat = np.asarray(data[key])
            dat_next = np.asarray(data[key_next])
            dat_quantile = np.quantile(dat, 0.8)
            dat_next_quantile = np.quantile(dat_next, 0.2)
            plt.axvline(dat_quantile, color='red')
            plt.axvline(dat_next_quantile)
            if (dat_quantile > dat_next_quantile):
                print(key, key_next, 'True')
            else:
                print(key, 'False')
    plt.show()


if __name__ == '__main__':
    main()

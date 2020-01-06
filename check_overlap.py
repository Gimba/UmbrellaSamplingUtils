#! /usr/bin/env python

import glob
import matplotlib.pyplot as plt
import numpy as np

def main():
    fig = plt.figure(figsize=(15, 10))

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
            # plot and annotate histograms
            y, x, _ = plt.hist(data[file_number], bins=100, histtype='step')
            y_coord = max(y)

            x_coord = x[np.where(y == max(y))[0][0]]
            plt.annotate(str(file_number), (x_coord, y_coord), ha='center')

    plt.xlabel('angle')
    plt.ylabel('data points')

    #  use quantiles to check proper overlap of distributions
    with open('umbrella_stats.txt', 'w') as o:
        o.write('file number <-> filenumber : sufficient overlap\n')
        for key in sorted(data.keys()):
            key_next = key + 1
            if key_next in data.keys():
                dat = np.asarray(data[key])
                dat_next = np.asarray(data[key_next])
                dat_quantile = np.quantile(dat, 0.8)
                dat_next_quantile = np.quantile(dat_next, 0.2)
                # plt.axvline(dat_quantile, color='red')
                # plt.axvline(dat_next_quantile)
                if (dat_quantile > dat_next_quantile):
                    o.write('{} <-> {} : True\n'.format(key, key_next))
                else:
                    print('!!! {} <-> {} : False\n'.format(key, key_next))
                    o.write('{} <-> {} : False\n'.format(key, key_next))
    plt.savefig('histograms.png')


if __name__ == '__main__':
    main()

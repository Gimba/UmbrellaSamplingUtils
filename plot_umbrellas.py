#! /usr/bin/env python

import argparse
import sys
import matplotlib.pyplot as plt
from matplotlib import cm

import numpy as np
from matplotlib import rc
from pylab import rcParams

# set size of figure
# rcParams['figure.figsize'] = 18.54, 11.46

# rc('text', usetex=True)
# fontsize_markers = 16

def main(argv):
    parser = argparse.ArgumentParser(description='Plot potential of mean force from umbrella runs analysed with WHAM '
                                                 'script')
    parser.add_argument('data_files', help='data')
    # parser.add_argument('title', nargs='?', help='plot title')
    # parser.add_argument('fig_title', nargs='?', help='title of figure')

    args = parser.parse_args()

    data_files = args.data_files.split(',')

    markers = ["*", "o", "+", "_", "x", "d", 10, 9, "s", "P", "p", "D", "<", "X"]
    colors = cm.get_cmap('Accent', len(data_files)).colors
    data = {}
    for c, file in enumerate(data_files):
        with open(file,'r') as f:
            angles = []
            pmfs = []
            print(file)
            for line in f.readlines():
                if line[0] != '#' and line[0] != '@' and len(line) >=2:
                    angle, pmf = line.split()
                    angles.append(float(angle))
                    pmfs.append(float(pmf))
            data[file] = [angles, pmfs]

            plt.plot(data[file][0], data[file][1], marker=markers[c], markevery=5, color=colors[c])

    plt.legend([d.split("/")[1].split("_")[0] for d in data_files])
    plt.show()


if __name__ == '__main__':
    main(sys.argv)
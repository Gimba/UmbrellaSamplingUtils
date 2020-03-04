#! /usr/bin/env python

# Copyright (c) 2019 Martin Rosellen

# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
# documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
# Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import argparse
import sys
import matplotlib.pyplot as plt
from matplotlib import cm
from math import ceil
import matplotlib

import numpy as np
from matplotlib import rc
from pylab import rcParams

# set size of figure
rcParams['figure.figsize'] = 18.54, 11.46
font = {'family': 'normal',
        'weight': 'normal',
        'size': 22}
matplotlib.rc('font', **font)


# rc('text', usetex=True)
# fontsize_markers = 16

def main(argv):
    parser = argparse.ArgumentParser(description='Plot potential of mean force from umbrella runs analysed with WHAM '
                                                 'script')
    parser.add_argument('data_files', help='data')
    parser.add_argument('-s', action='store_true', help='if this flag is added, make a plot subplots', default=False)
    # parser.add_argument('title', nargs='?', help='plot title')
    # parser.add_argument('fig_title', nargs='?', help='title of figure')

    args = parser.parse_args()

    data_files = args.data_files.split(',')

    if args.s:
        fig, ax = plt.subplots(ceil(len(data_files) / 2), 2, figsize=(25, 25), sharey=True, sharex=True)

        # Set common labels
        fig.text(0.5, 0.02, 'Dihedral angle (Deg)', ha='center', va='center')
        fig.text(0.012, 0.5, 'Energy (kcal/mol)', ha='center', va='center', rotation='vertical')

        fig.text(0.25, 0.95, 'solitary C2 domain', ha='center', va='center', weight='bold')
        fig.text(0.75, 0.95, 'AB-removed C2 domain', ha='center', va='center', weight='bold')

    markers = ["*", "o", "+", "_", "x", "d", 10, 9, "s", "P", "p", "D", "<", "X", "."]
    colors = cm.get_cmap('tab20', len(data_files)).colors
    data = {}
    for c, file in enumerate(data_files):
        with open(file, 'r') as f:
            angles = []
            pmfs = []
            print(file)
            for line in f.readlines():
                if '#' not in line and '@' not in line and '%' not in line:
                    line = line.split()
                    if len(line) >= 2 and '.' in line[0]:
                        angle, pmf = line[0], line[1]
                        angles.append(float(angle))
                        pmfs.append(float(pmf))
                    data[file] = [angles, pmfs]

            if args.s:
                fig.suptitle('Pontential of mean force, hairpin M2199/F2200', weight='bold')
                ax[c // 2][c % 2].plot(data[file][0], data[file][1])
                ax[c // 2][c % 2].set_title(file.split('/')[-1].split('_')[-2])
                ax[c // 2][c % 2].set_ylim(0, 10)
                ax[c // 2][c % 2].set_xlim(-130, 50)
                ax[c // 2][c % 2].annotate(str(round(angles[pmfs.index(0.0)], 2)), (angles[pmfs.index(0.0)], 0.5),
                                           ha='center')
                ax[c // 2][c % 2].axvline(angles[pmfs.index(0.0)], 0, .04, color='black')
                if c % 2 == 0:
                    ax[c // 2][c % 2].axvline(-79.861, 0, 10, color='black')
                    ax[c // 2][c % 2].annotate('start', (-79.861, 5),
                                               va='center', rotation='vertical')
                    ax[c // 2][c % 2].axvline(4.027, 0, 10, color='black')
                    ax[c // 2][c % 2].annotate('finish', (4.027, 5), rotation='vertical', va='center')
                else:
                    ax[c // 2][c % 2].axvline(-79.861, 0, 10, color='black')
                    ax[c // 2][c % 2].annotate('finish', (-79.861, 5),
                                               va='center', rotation='vertical')
                    ax[c // 2][c % 2].axvline(4.027, 0, 10, color='black')
                    ax[c // 2][c % 2].annotate('start', (4.027, 5), rotation='vertical', va='center')
            else:
                plt.plot(data[file][0], data[file][1], marker=markers[c], markevery=5, color=colors[c])
    # plt.tight_layout(rect=[0.006, 0.02, 1, 0.95])
    # plt.show()
    fig.tight_layout(rect=[0, 0.03, 1, 0.95])
    plt.savefig('pmfs.png')


if __name__ == '__main__':
    main(sys.argv)

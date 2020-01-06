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

import numpy as np
from matplotlib import rc
from pylab import rcParams

# set size of figure
rcParams['figure.figsize'] = 18.54, 11.46


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

    markers = ["*", "o", "+", "_", "x", "d", 10, 9, "s", "P", "p", "D", "<", "X", "."]
    colors = cm.get_cmap('tab20', len(data_files)).colors
    data = {}
    for c, file in enumerate(data_files):
        with open(file, 'r') as f:
            angles = []
            pmfs = []
            print(file)
            for line in f.readlines():
                if line[0] != '#' and line[0] != '@' and len(line) >= 2:
                    angle, pmf = line.split()
                    angles.append(float(angle))
                    pmfs.append(float(pmf))
            data[file] = [angles, pmfs]

            plt.plot(data[file][0], data[file][1], marker=markers[c], markevery=5, color=colors[c])

    plt.legend([d.split("/")[1].split("_")[0] for d in data_files])
    # plt.show()
    plt.savefig('pmfs.png')


if __name__ == '__main__':
    main(sys.argv)

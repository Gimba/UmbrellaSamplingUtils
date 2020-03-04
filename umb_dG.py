import sys
import argparse
import pandas as pd


def main(args):
    parser = argparse.ArgumentParser(description='calculate delta G value between two ranges of an umbrella sampling.')
    parser.add_argument('-file', help='file containing probabilities', default='result.dat', required=False)
    parser.add_argument('-range_1', help='value range 1', default='-99,-41', required=False)
    parser.add_argument('-range_2', help='value range 2', default='1,7', required=False)
    args = parser.parse_args()

    data = pd.read_csv(args.file, sep='\t')
    data = data[~data['#Coor'].str.contains("#")]

    data = data[['#Coor', '+/-']]

    print(data.head())
    print(data.tail())


if __name__ == '__main__':
    main(sys.argv)

import sys
import argparse


def main():
    parser = argparse.ArgumentParser(description='calculate delta G value between two ranges of an umbrella sampling.')
    parser.add_argument('file', help='file containing probabilities', default='results.dat')
    parser.add_argument('range_1', help='value range 1', default='-99,-41')
    parser.add_argument('range_2', help='value range 2', default='1,7')
    args = parser.parse_args()


if __name__ == '__main__':
    main(sys.args)

import sys
import argparse
import pandas as pd
import numpy as np

def main(args):
    parser = argparse.ArgumentParser(description='calculate delta G value between two ranges of an umbrella sampling.')
    parser.add_argument('-file', help='file containing probabilities', default='result.dat', required=False)
    parser.add_argument('-range_1', help='value range 1', default='-99,-40', required=False)
    parser.add_argument('-range_2', help='value range 2', default='0,8', required=False)
    args = parser.parse_args()

    data = pd.read_csv(args.file, sep='\t')
    data = data[~data['#Coor'].str.contains("#")]

    data = data[['#Coor', '+/-']]
    data = data.rename(columns={'+/-': 'probs'})
    data = data.astype({'#Coor': 'float'})
    data = data.astype({'probs': 'float'})
    r1 = args.range_1.split(',')
    r1 = [int(r) for r in r1]

    r2 = args.range_2.split(',')
    r2 = [int(r) for r in r2]

    data_range_1 = data[data['#Coor'].between(r1[0], r1[1], inclusive=False)]

    data_range_2 = data[data['#Coor'].between(r2[0], r2[1], inclusive=False)]
    sum_1 = data_range_1['probs'].sum()

    sum_2 = data_range_2['probs'].sum()

    print('Prob unbound', sum_1)
    print('Prob bound', sum_2)

    dG = 0.6 * np.log(sum_1 / sum_2)

    print(dG, 'kcal')

if __name__ == '__main__':
    main(sys.argv)

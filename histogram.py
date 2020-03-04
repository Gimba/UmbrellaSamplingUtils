import matplotlib.pyplot as plt
import numpy as np
from pylab import rcParams
import matplotlib

rcParams['figure.figsize'] = 18.54, 11.46
font = {'family': 'normal',
        'weight': 'normal',
        'size': 22}
matplotlib.rc('font', **font)
files = ['dummy_data/1d7p_500_torsion_2199,2200,2207,2223@CA.agr',
         'dummy_data/1iqd_500_torsion_2199,2200,2207,2223@CA.agr',
         'dummy_data/1d7p_AMD_torsion_2199,2200,2207,2223@CA.agr',
         'dummy_data/1iqd_C2_AMD_torsion_2199,2200,2207,2223@CA.agr']

fig, ax = plt.subplots(2, 2, figsize=(25, 25), sharey=True, sharex=True)

# Set common labels
fig.text(0.5, 0.02, 'Dihedral angle (Deg)', ha='center', va='center')
fig.text(0.01, 0.5, 'Probability', ha='center', va='center', rotation='vertical')

fig.text(0.25, 0.95, 'solitary C2 domain', ha='center', va='center', weight='bold')
fig.text(0.75, 0.95, 'AB-removed C2 domain', ha='center', va='center', weight='bold')

for c, file in enumerate(files):
    with open(file, 'r') as f:

        angles = []
        frames = []
        for line in f.readlines():
            if '#' not in line and '@' not in line and '%' not in line:
                line = line.split()
                if len(line) >= 2 and '.' in line[1]:
                    frame, angle = line[0], line[1]
                    angles.append(float(angle))
                    frames.append(float(frame))

        n, bins, patches = ax[c // 2][c % 2].hist(angles, 100, density=True)
        max_coord = round((bins[np.argmax(n)] + bins[np.argmax(n) + 1]) / 2, 2)

        ax[c // 2][c % 2].annotate(str(max_coord), (max_coord + 1, 0.01), ha='left', rotation='vertical')
        ax[c // 2][c % 2].vlines(max_coord, 0, max(n))
        if 'AMD' not in file:
            ax[c // 2][c % 2].set_title(r'CMD 1$\mu$s/100k frames')
        else:
            ax[c // 2][c % 2].set_title(r'AMD 5$\mu$s/500k frames')
        n_frames = round(frames[-1] / 1000)
        ns = n_frames // 100
        print(n_frames, ns)
fig.suptitle('AB-removed C2-domain torsion angle M2199,F2200,K2207,V2223\n' + 'CMD ' + str(ns) + r'$\mu$s/' + str(
    n_frames) + 'k frames')
fig.tight_layout(rect=[0.01, 0.03, 1, 0.95])
# plt.show()
plt.savefig('angle_histogram.png')

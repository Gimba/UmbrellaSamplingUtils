#!/usr/bin/env python

# Copyright (c) 2018 Martin Rosellen

# Permission is hereby granted, free of charge, to any person obtaining a
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
import re
import sys
from os import mkdir
from os.path import basename, join

import numpy as np
import pytraj as pt


def generate_umb_config(angle, angle_low, angle_high, force, idx, atoms):
    out = "Harmonic restraints\n"
    out += " &rst\n"
    out += "  iat=" + ','.join(atoms) + ",\n"

    out += "  r1={}, r2={}, r3={}, r4={}\n".format(angle_low, angle, angle, angle_high)
    out += "  rk2={}, rk3={}\n/\n".format(force, force)
    meta_out = '../umbrella_productions/prod_25C_{}.dat {} 0.12184\n'.format(idx, angle)
    return out, meta_out


def generate_sim_configs(configs_directory, sim_config_files, umbrella_constraint_file, idx):
    md_files = {}
    for init_f in sim_config_files:

        with open(init_f, 'r') as m:
            sim_config_content = m.readlines()

        # add umbrella constraints to simulation configuration
        if "prod_25C" in init_f:

            # remove the last two lines
            md_in_temp = "".join(sim_config_content[:-2])

            # add contraints
            md_in_temp += "DISANG=./{}\n".format(umbrella_constraint_file)
            # add meta data file name
            md_in_temp += "DUMPAVE=./umbrella_productions/prod_25C_{}.dat\n".format(idx)

        else:
            md_in_temp = "".join(sim_config_content[:-1])
            md_in_temp += "DISANG=./{}\n".format(umbrella_constraint_file)

        # write simulation configuration file
        sim_file_name = basename(init_f).split('.')
        with open(configs_directory + sim_file_name[0] + "_" + str(idx) + "." + sim_file_name[1], 'w') as o:
            o.write(md_in_temp)
            md_files[sim_file_name[0]] = configs_directory + sim_file_name[0] + "_" + str(idx) + "." + \
                                         sim_file_name[1]
    return md_files


def generate_run_script(md_files, top, traj):
    out = ""
    b_name_min = basename(md_files['min_1']).split('.')[0]
    run_min = \
        "pmemd -O " \
        "-i {} " \
        "-o umbrella_productions/{}.out " \
        "-p {} " \
        "-c {} " \
        "-r umbrella_productions/{}.rst " \
        "-inf umbrella_productions/{}.mdinfo \n" \
            .format(md_files['min_1'], b_name_min, top, traj, b_name_min, b_name_min)

    b_name_rel_1 = basename(md_files['rel_1']).split('.')[0]
    run_rel_1 = \
        "pmemd.cuda -O " \
        "-i {} " \
        "-o umbrella_productions/{}.out " \
        "-p {} " \
        "-c umbrella_productions/{}.rst " \
        "-r umbrella_productions/{}.rst " \
        "-inf umbrella_productions/{}.mdinfo " \
        "-ref umbrella_productions/{}.rst \n" \
            .format(md_files['rel_1'], b_name_rel_1, top, b_name_min, b_name_rel_1, b_name_rel_1, b_name_min)

    b_name_rel_2 = basename(md_files['rel_2_25C']).split('.')[0]
    run_rel_2 = \
        "pmemd.cuda -O " \
        "-i {} " \
        "-o umbrella_productions/{}.out " \
        "-p {} " \
        "-c umbrella_productions/{}.rst " \
        "-r umbrella_productions/{}.rst " \
        "-inf umbrella_productions/{}.mdinfo " \
        "-ref umbrella_productions/{}.rst \n" \
            .format(md_files['rel_2_25C'], b_name_rel_2, top, b_name_rel_1, b_name_rel_2, b_name_rel_2,
                    b_name_rel_1)

    b_name_rel_3 = basename(md_files['rel_3_25C']).split('.')[0]
    run_rel_3 = \
        "pmemd.cuda -O " \
        "-i {} " \
        "-o umbrella_productions/{}.out " \
        "-p {} " \
        "-c umbrella_productions/{}.rst " \
        "-r umbrella_productions/{}.rst " \
        "-inf umbrella_productions/{}.mdinfo " \
        "-ref umbrella_productions/{}.rst \n" \
            .format(md_files['rel_3_25C'], b_name_rel_3, top, b_name_rel_2, b_name_rel_3, b_name_rel_3,
                    b_name_rel_2)

    b_name_prod = basename(md_files['prod_25C']).split('.')[0]
    run_prod = \
        "pmemd.cuda -O " \
        "-i {} " \
        "-o umbrella_productions/{}.out " \
        "-p {} " \
        "-c umbrella_productions/{}.rst " \
        "-r umbrella_productions/{}.rst " \
        "-inf umbrella_productions/{}.mdinfo " \
        "-x umbrella_productions/{}.nc " \
        "-ref umbrella_productions/{}.rst \n" \
            .format(md_files['prod_25C'], b_name_prod, top, b_name_rel_3, b_name_prod, b_name_prod,
                    b_name_prod, \
                    b_name_rel_3)

    # out += "#{}\n".format(idx)
    out += run_min + "\n" + run_rel_1 + "\n" + run_rel_2 + "\n" + run_rel_3 + "\n" + run_prod + "\n"

    next_traj = 'umbrella_productions/{}.rst'.format(b_name_prod)

    return out, next_traj


def main(args):
    parser = argparse.ArgumentParser(description='Prepare config files for umbrella sampling run with a dihedral '
                                                 'angle as reaction coordinate. By default the alpha carbons atoms of '
                                                 'the specified residues are used to apply the constraint.')
    parser.add_argument('raf', help='list like: "residues_1:angle_1_from,angle_1_to:force_1|residues_2:angle_2_from,'
                                    'angle_2_to:force_2|... e.g. 28,31,39,56:-130,50:200"')
    parser.add_argument('umbrellas', help='how many umbrella do we want to span?')
    parser.add_argument('init', help='names of initial topologies and trajectories, '
                                     'e.g. "WT.prmtop,rel_3.rst:WT.prmtop,prod_1.rst"')
    parser.add_argument('sim_config_path', help='directory where MD settings be found')
    parser.add_argument('sim_config_files', help='list of file names of configuration files. (default: '
                                                 '"min_1.umbin","rel_1.umbin","rel_2_25C.umbin","rel_3_25C.umbin",'
                                                 '"prod_25C.umbin"', default='min_1.umbin,rel_1.umbin,'
                                                                             'rel_2_25C.umbin,rel_3_25C.umbin,'
                                                                             'prod_25C.umbin')
    parser.add_argument('output_directory', help='directory where umbrella config files are written to (default:'
                                                 ' umbrella_config)', default='umbrella_config')
    parser.add_argument('-i', 'init_value', help='initial value that should be started with', nargs='?', default=False)
    parser.add_argument('-s', action='store_true',
                        help='define weather the last frame of each simulation is used for the next one as a start. '
                             'In this case there should be only one init file.')
    args = parser.parse_args()

    umbrellas = int(args.umbrellas)
    configs_directory = args.output_directory

    try:
        mkdir(configs_directory)
    except OSError:
        pass

    # initial/template configuration files
    sim_configuration_path = args.sim_config_path

    sim_config_files = args.sim_config_files.split(',')

    sim_configuration_files = []
    for scf in sim_config_files:
        sim_configuration_files.append(join(sim_configuration_path, scf))

    # there is possibly more than one angle that gets transformed
    residues_angles_force = args.raf.split('|')

    init_files = args.init.split(':')

    if len(init_files) != len(residues_angles_force):
        print('Error: Number of input file tuples has to be same as sets of "residue angles force")')
        print('init_files:', init_files, 'length', len(init_files))
        print('residue_angles_force:', residues_angles_force, 'length', len(residues_angles_force))
        exit()

    init_prmtop = init_files[0].split(",")[0]
    init_traj = init_files[0].split(",")[1]

    print('Input file tuples: {}'.format(init_files))

    # angle increments contains the step size for every configuration
    angle_increments = []

    # contains [[atom1,atom2,...][angle1,angle2][force]]
    umbrella_configs = []

    # read input arguments into variables
    for raf, i_file in zip(residues_angles_force, init_files):
        raf = re.sub('\'|\"', '', raf)

        residues, angles, force = raf.split(':')
        angles = angles.split(',')
        angles = list(map(float, angles))
        print(residues)
        top, traj = i_file.split(',')
        pdb = pt.load(traj, top)
        atoms = [str(pt.select_atoms(':' + k + '@CA', pdb.top)[0] + 1) for k in residues.split(',')]
        print(atoms)
        umbrella_config = []
        umbrella_config.append(atoms)
        umbrella_config.append(angles)
        umbrella_config.append(force)
        umbrella_configs.append(umbrella_config)

        angle_increments.append(abs(umbrella_config[1][0] - umbrella_config[1][1]) / umbrellas)

    umbrella_constraint_files = []
    n_cnfgs = len(umbrella_configs)

    # create dictionary to hold constraint files
    meta_files = {}
    range_n_confgs = range(n_cnfgs)
    for n in range_n_confgs:
        meta_files[n] = ""

    init_value = args.init_value

    if init_value:
        init_value = float(init_value)
        if init_value < angles[0] or init_value > angles[1]:
            print('Error: init value must lie between min and max angle value')
            exit()
        else:
            angle = init_value
            c = 0
            meta_out = ""
            next_traj = init_traj
            init_relaxed = ""
            run_script = ""

            # !!! only implemented for one init file
            for i in range_n_confgs:
                min = np.min(umbrella_configs[i][1])
                max = np.max(umbrella_configs[i][1])

                # go down to min
                while angle >= min:
                    angle_low = angle - 180
                    angle_high = angle + 180
                    force = umbrella_configs[i][2]

                    out, meta_out_temp = generate_umb_config(angle, angle_low, angle_high, force, c, atoms)

                    # write constraint file
                    umbrella_constraint_file_name = '{}umb_out_{}.dat'.format(configs_directory, c)
                    with open(umbrella_constraint_file_name, 'w') as f:
                        f.write(out)

                    meta_out += meta_out_temp

                    md_configs = generate_sim_configs(configs_directory, sim_configuration_files,
                                                      umbrella_constraint_file_name, c)

                    # old_traj
                    old_traj = next_traj

                    run_temp, next_traj = generate_run_script(md_configs, init_prmtop, next_traj)
                    run_script += "#{}\n".format(c)
                    run_script += run_temp

                    if old_traj == init_traj:
                        init_relaxed = next_traj

                    # increment
                    angle -= angle_increments[i]
                    c -= 1
                # reset to init value
                angle = init_value + angle_increments[i]
                c = 0
                next_traj = init_relaxed

                # go up
                while angle <= max:
                    angle_low = angle - 180
                    angle_high = angle + 180

                    out, meta_out_temp = generate_umb_config(angle, angle_low, angle_high, force, c, atoms)

                    # write constraint file
                    umbrella_constraint_file_name = '{}umb_out_{}.dat'.format(configs_directory, c)
                    with open(umbrella_constraint_file_name, 'w') as f:
                        f.write(out)

                    meta_out += meta_out_temp

                    md_configs = generate_sim_configs(configs_directory, sim_configuration_files,
                                                      umbrella_constraint_file_name, c)

                    md_configs = generate_sim_configs(configs_directory, sim_configuration_files,
                                                      umbrella_constraint_file_name, c)

                    run_temp, next_traj = generate_run_script(md_configs, init_prmtop, next_traj)
                    run_script += "#{}\n".format(c)
                    run_script += run_temp

                    # increment
                    angle += angle_increments[i]
                    c += 1

                # write meta file
                with open(configs_directory + 'meta_file', 'w') as mf:
                    mf.write(meta_out)

                with open("run.sh", "w") as o:
                    o.write("#!/bin/bash\n\n")
                    o.write(run_script)
    # not properly implemented
    else:
        pass

        # # generate meta files and umbrella contstraint files umb_out_...dat
        # meta_out = ""
        # for c in range(umbrellas + 1):
        #     out = "Harmonic restraints\n"
        #     for i in range_n_confgs:
        #
        #         out += " &rst\n"
        #
        #         residues = umbrella_configs[i][0]
        #         out += "  iat=" + ','.join(atoms) + ",\n"
        #
        #         angle_low_bound = umbrella_configs[i][1][0] - 180
        #         angle = umbrella_configs[i][1][0]
        #         angle_high_bound = umbrella_configs[i][1][0] + 180
        #         out += "  r1={}, r2={}, r3={}, r4={}\n".format(angle_low_bound, angle, angle, angle_high_bound)
        #
        #         force = umbrella_configs[i][2]
        #         out += "  rk2={}, rk3={}\n/\n".format(force, force)
        #
        #         meta_out += '../umbrella_productions/prod_25C_{}.dat {} 0.12184\n'.format(c, angle)
        #
        #         if angles[0] > angles[1]:
        #             umbrella_configs[i][1][0] -= angle_increments[i]
        #         else:
        #             umbrella_configs[i][1][0] += angle_increments[i]
        #
        #     umbrella_constraint_file_name = '{}umb_out_{}.dat'.format(configs_directory, c)
        #     with open(umbrella_constraint_file_name, 'w') as f:
        #         f.write(out)
        #     umbrella_constraint_files.append(umbrella_constraint_file_name)
        #
        # # write meta file
        # print(meta_out)
        # with open(configs_directory + 'meta_file', 'w') as mf:
        #     mf.write(meta_out)
        #
        # ## generate run scripts
        #
        # if args.s and len(init_files) > 1:
        #     print("too many input files for option s. Exiting.")
        #     exit()
        #
        # runs_per_script = umbrellas // len(init_files)
        # umbrellas = umbrellas + 1
        # idx = 0
        # for init_f in init_files:
        #     top, traj = init_f.split(',')
        #     traj_temp = traj
        #     out = ""
        #     while idx <= runs_per_script and idx <= umbrellas and idx + umbrellas * 4 < len(md_files):
        #         b_name_min = basename(md_files[idx]).split('.')[0]
        #         run_min = \
        #             "pmemd -O " \
        #             "-i {} " \
        #             "-o umbrella_productions/{}.out " \
        #             "-p {} " \
        #             "-c {} " \
        #             "-r umbrella_productions/{}.rst " \
        #             "-inf umbrella_productions/{}.mdinfo \n" \
        #                 .format(md_files[idx], b_name_min, top, traj_temp, b_name_min, b_name_min)
        #
        #         b_name_rel_1 = basename(md_files[idx + umbrellas]).split('.')[0]
        #         run_rel_1 = \
        #             "pmemd.cuda -O " \
        #             "-i {} " \
        #             "-o umbrella_productions/{}.out " \
        #             "-p {} " \
        #             "-c umbrella_productions/{}.rst " \
        #             "-r umbrella_productions/{}.rst " \
        #             "-inf umbrella_productions/{}.mdinfo " \
        #             "-ref umbrella_productions/{}.rst \n" \
        #                 .format(md_files[idx + umbrellas], b_name_rel_1, top, b_name_min, b_name_rel_1, b_name_rel_1, \
        #                         b_name_min)
        #
        #         b_name_rel_2 = basename(md_files[idx + umbrellas * 2]).split('.')[0]
        #         run_rel_2 = \
        #             "pmemd.cuda -O " \
        #             "-i {} " \
        #             "-o umbrella_productions/{}.out " \
        #             "-p {} " \
        #             "-c umbrella_productions/{}.rst " \
        #             "-r umbrella_productions/{}.rst " \
        #             "-inf umbrella_productions/{}.mdinfo " \
        #             "-ref umbrella_productions/{}.rst \n" \
        #                 .format(md_files[idx + umbrellas * 2], b_name_rel_2, top, b_name_rel_1, b_name_rel_2,
        #                         b_name_rel_2,
        #                         b_name_rel_1)
        #
        #         b_name_rel_3 = basename(md_files[idx + umbrellas * 3]).split('.')[0]
        #         run_rel_3 = \
        #             "pmemd.cuda -O " \
        #             "-i {} " \
        #             "-o umbrella_productions/{}.out " \
        #             "-p {} " \
        #             "-c umbrella_productions/{}.rst " \
        #             "-r umbrella_productions/{}.rst " \
        #             "-inf umbrella_productions/{}.mdinfo " \
        #             "-ref umbrella_productions/{}.rst \n" \
        #                 .format(md_files[idx + umbrellas * 3], b_name_rel_3, top, b_name_rel_2, b_name_rel_3,
        #                         b_name_rel_3,
        #                         b_name_rel_2)
        #
        #         b_name_prod = basename(md_files[idx + umbrellas * 4]).split('.')[0]
        #         run_prod = \
        #             "pmemd.cuda -O " \
        #             "-i {} " \
        #             "-o umbrella_productions/{}.out " \
        #             "-p {} " \
        #             "-c umbrella_productions/{}.rst " \
        #             "-r umbrella_productions/{}.rst " \
        #             "-inf umbrella_productions/{}.mdinfo " \
        #             "-x umbrella_productions/{}.nc " \
        #             "-ref umbrella_productions/{}.rst \n" \
        #                 .format(md_files[idx + umbrellas * 4], b_name_prod, top, b_name_rel_3, b_name_prod, b_name_prod,
        #                         b_name_prod, \
        #                         b_name_rel_3)
        #
        #         out += "#{}\n".format(idx)
        #         idx += 1
        #         out += run_min + "\n" + run_rel_1 + "\n" + run_rel_2 + "\n" + run_rel_3 + "\n" + run_prod + "\n"
        #
        #         if args.s:
        #             traj_temp = "umbrella_productions/" + b_name_prod + ".rst"
        #
        #     # write run script
        #     if args.s:
        #         script_file_name = 'init_WT_run_s_' + str(idx - 1) + ".sh"
        #
        #     else:
        #         script_file_name = 'init_' + basename(init_f).split('.')[0] + "_run_" + str(idx - 1) + ".sh"
        #
        #     print(script_file_name)
        #     with open(script_file_name, "w") as o:
        #         o.write("#!/bin/bash\n\n")
        #         o.write(out)
        #     print(runs_per_script)
        #     runs_per_script *= 2

    # print out first constraint file for inspection by user
    with open('umbrella_config/umb_out_0.dat', 'r') as f:
        print(f.readlines())


if __name__ == '__main__':
    main(sys.argv)

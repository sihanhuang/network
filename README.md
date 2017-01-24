# hpc_tutorial
This repo gives simple illustration for how to submit python jobs to Habanero (the new hpc cluster from Columbia), or any cluster using Slurm workload manager. If you want to run R or matlab it is quite similar, go to https://wikis.cuit.columbia.edu/confluence/display/rcs/Habanero+-+Job+Examples for more information

# How to use this (for Columbia statistics student, assuming basic knowledge of python and linux)
## log in
Open your terminal (or Putty for windows user) and type (replace YOURUNI by your uni)
```bash
ssh YOURUNI@habanero.rcs.columbia.edu
```
Put your password and then you can log in to the cluster

go to /rigel/stats/users/ and make a directory of yours
```bash
mkdir YOURUNI
cd YOURUNI
```

clone this repo to the cluster
``` bash
git clone https://github.com/gaoyuanjun/hpc_tutorial.git
cd hpc_tutorial
```

## 00_interactive_py
This directory contains 3 toy python code that you can run interactively with a focus on 2 different ways of using command line input with python, try
``` bash
cd 00_interative_py
python test.py
python test_cmd.py 4
python test_cmd2.py -n 4
```
## 01_submit_py
This directory illustrates how to run a single python job, try
``` bash
cd ../01_submit_py
sbatch run_py.sh
```
wait for a few seconds, then you can see a .out file which contains the output of the python code and a .save file which is something that's saved by the python code

## 02_submit_jobarray
This directory illustrates how to submit job array, try
``` bash
cd ../02_submit_jobarray
sbatch run_py_array.sh
```
wait for a few seconds, then you can see five .out files and five .save files. Pay attention to the line containing --array and the use of $SLURM_ARRAY_TASK_ID in the run_py_array.sh file

#!/bin/sh
#
#
#SBATCH --account=stats      # The account name for the job.
#SBATCH --job-name=train_GPU    # The job name.
#SBATCH --gres=gpu:1
#SBATCH -c 1                     # The number of cpu cores to use.
#SBATCH --time=10:00:00              # The time the job will take to run.
#SBATCH --mem-per-cpu=5gb        # The memory the job will use per cpu core.

python test_submit.py -n 5


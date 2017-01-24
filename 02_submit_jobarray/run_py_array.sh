#!/bin/sh
#
#
#SBATCH --account=stats      # The account name for the job.
#SBATCH --job-name=run_py_array    # The job name.
#SBATCH --array=1-5            # submit 16 jobs with SLURM_ARRAY_TASK_ID ranging from 1 to 5
#SBATCH -c 1                     # The number of cpu cores to use.
#SBATCH --time=1:00:00              # The time the job will take to run.
#SBATCH --mem-per-cpu=5gb        # The memory the job will use per cpu core.

python test_submit.py -n $SLURM_ARRAY_TASK_ID


import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-n', '--seq_len', type=int, default=5, help='sequencd length')
args = parser.parse_args()

seq_len = args.seq_len
print("Welcome to hpc")
print("You want to generate a sequence of length %d, there you go!"%seq_len)
print(range(seq_len))

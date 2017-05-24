%reset
import itertools
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import random
from numpy import linalg as LA
from scipy.optimize import minimize
from sklearn.cluster import KMeans
from sklearn.metrics import normalized_mutual_info_score
from sklearn.metrics.cluster import adjusted_rand_score

p,n = 5,300
mu, sigma1,sigma2 = 0, 0.1, 0.5
rho = 1*np.log(n)**1.5/n
gamma=1.5*np.array((0.4,0.8,1.2,1.6,2)) 

print(gamma)

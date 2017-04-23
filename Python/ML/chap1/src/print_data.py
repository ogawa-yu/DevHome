import numpy as np
import scipy as sp

data = sp.genfromtxt("../data/web_t.tsv", delimiter="\t")

print(data[:10])

print(data.shape)


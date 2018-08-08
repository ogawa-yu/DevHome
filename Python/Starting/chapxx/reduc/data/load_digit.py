from time import time

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import offsetbox
from sklearn import (manifold, datasets, decomposition, ensemble,
                    discriminant_analysis, random_projection)

def main():
    digits = datasets.load_digits(n_class=6)
    X = digits.data
    y = digits.target
    n_samples, n_features = X.shape
    n_neighbors = 30


if __name__ == "__main__":
    main()



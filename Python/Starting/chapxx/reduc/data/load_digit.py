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
    n_img_per_row = 20
    img = np.zeros((10 * n_img_per_row, 10 * n_img_per_row))
    for i in range(n_img_per_row):
        ix = 10 * i + 1
        for j in range(n_img_per_row):
            iy = 10 * j + 1
            img[ix:ix + 8, iy: iy + 8] = X[i * n_img_per_row + j].reshape((8, 8))
    plt.imshow(img, cmap=plt.cm.binary)
    plt.xticks([])
    plt.yticks([])
    plt.title('A celection from the 64-demensional digits dataset')


if __name__ == "__main__":
    main()



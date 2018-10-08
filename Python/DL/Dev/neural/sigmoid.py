import numpy as np

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

if __name__ == '__main__':
    import matplotlib.pyplot as plt

    x = np.arange(-10.0, 10.0, 0.1)
    y = sigmoid(x)
    plt.plot(x, y)
    plt.ylim(-0.1, 1.1)
    plt.show()
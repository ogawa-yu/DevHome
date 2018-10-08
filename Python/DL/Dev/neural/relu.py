import numpy as np

def relu(x):
    return np.maximum(0, x)

if __name__ == '__main__':
    import matplotlib.pyplot as plt

    x = np.arange(-5.0, 5.0, 0.1)
    y = relu(x)
    plt.plot(x, y)
    plt.ylim(-0.1, 6.0)
    plt.show()

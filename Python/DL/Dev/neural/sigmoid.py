import matplotlib.pyplot as plt
import numpy as np

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def myplot(x):
    plt.plot(x)
    plt.show()

y = sigmoid(np.arange(-10.0, 10.0, 0.1))
myplot(y)

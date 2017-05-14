import numpy as np
from numeric_diff import sample_function_2d
#import matplotlib.pyplot as plt
import matplotlib.pylab as plt

def gradient(f, x):
    h = 1e-4
    grad = np.zeros_like(x)

    for idx in range(x.size):
        work = x[idx]

        x[idx] = work + h
        fxh1 = f(x)

        x[idx] = work - h
        fxh2 = f(x)

        grad[idx] = (fxh1 - fxh2) / (2*h)
        x[idx] = work

    return grad

def gradient_descent(f, init_x, larning_rate=0.01, step_num=100):
    x = init_x
    x_history = []

    for i in range(step_num):
        x_history.append(x.copy())

        grad = gradient(f, x)
        x -= larning_rate * grad
    return x, np.array(x_history)

if (__name__ == '__main__'):
    init_x = np.array([-3.0, 4.0])
    x, x_history = gradient_descent(sample_function_2d, init_x=init_x, larning_rate=1e-1, step_num=100)

    plt.plot( [-5, 5], [0,0], '--b')
    plt.plot( [0,0], [-5, 5], '--b')
    plt.plot(x_history[:,0], x_history[:,1], 'o')

    plt.xlim(-3.5, 3.5)
    plt.ylim(-4.5, 4.5)
    plt.xlabel("X0")
    plt.ylabel("X1")

    print(x)

    plt.show()

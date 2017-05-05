import numpy as np
from numeric_diff import sample_function_2d

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
    for i in range(step_num):
        grad = gradient(f, x)
        x -= larning_rate * grad
    return x

if (__name__ == '__main__'):
    init_x = np.array([-3.0, 4.0])
    print (gradient_descent(sample_function_2d, init_x=init_x, larning_rate=0.1, step_num=100))

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# 中心差分による微分の計算(1変数関数)
def differential_1d(f, x):
    h = 1e-4
    return (f(x+h) - f(x-h)) / (2*h)
# 中心差分による偏微分の計算
def differential_2d(f, x, idx):
    h = 1e-4
    xdf = x[idx] + h
    xdb = x[idx] - h
    return (f(xdf) - f(xdb)) / (2*h)

# サンプル1変数関数
def sample_function(x):
    return 0.01*x**2 + 0.1*x

# サンプル2変数関数
def sample_function_2d(x):
    return x[0]**2 + x[1]**2

# 接線の計算
def differential_line(x, dy, y, a):
        return dy[a] * (x - x[a]) + y[a]

def show(X, Y, Z):
    fig = plt.figure()
    ax = Axes3D(fig)
    plt.xlim([-2, 2])
    plt.ylim([-2, 2])
    plt.xlabel('x0')
    plt.ylabel('x1')
    plt.grid()
    plt.legend()
    ax.plot_wireframe(X,Y,Z)
    plt.show()    


if (__name__ == '__main__'):
    x0 = np.arange(-2.0, 2.0, 0.1)
    x1 = np.arange(-2.0, 2.0, 0.1)
    X, Y = np.meshgrid(x0, x1)
    points = np.array([X, Y])
    Z = sample_function_2d(points)
    print(X.shape)    #(40,40)
    print(grid.shape) #(2, 40, 40)
    print(Z.shape)    #(40,40)
    show(X, Y, Z)

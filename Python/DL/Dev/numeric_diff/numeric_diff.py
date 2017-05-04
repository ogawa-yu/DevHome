import numpy as np
import matplotlib.pyplot as plt

# 中心差分による微分の計算
def differential_1d(f, x):
    h = 1e-4
    return (f(x+h) - f(x-h)) / (2*h)
# サンプル1変数関数
def sample_function(x):
    return 0.01*x**2 + 0.1*x
# サンプル2変数関数
def sample_function_2d(x):
    return x[0]**2 + x[1]**2
# 接線の計算
def differential_line(x, dy, y, a):
    return dy[a] * (x - x[a]) + y[a]
"""
x = np.arange(0.0, 20.0, 0.1)
y = sample_function(x)
dy = differential_1d(sample_function, x)
yt = differential_line(x, dy, y, 15 * 10) 
plt.xlabel("x")
plt.ylabel("y")
plt.plot(x, y)
plt.plot(x, yt)
plt.show()
"""

import numpy as np

x = np.array([1.0, 2.0, 3.0])
print(x)       #[1. 2. 3.]
print(type(x)) #<class 'numpy.ndarray'>

y = np.array([2.0, 4.0, 6.0])
print(x + y)
print(x - y)
print(x * y) # element-wise-priduct(要素ごとの掛け算), 内積にはならない
print(x / y)
print(x / 2.0)
print(x.shape)
print(x.dtype)

# 2次元配列の定義
A = np.array([[1.0, 2.0], [3.0, 4.0]])
print(A)
print(A.shape)
print(A.dtype)

B = np.array([[3.0,0.0], [0.0, 6.0]])
print(A + B)
print(A * B)
print(2 * A)
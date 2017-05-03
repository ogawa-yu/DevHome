import numpy as np
from sigmoid import sigmoid
from identity import identity_function

def transport_signal(X, W, B):
    return np.dot(X, W) + B

# 入力層
X1 = np.array([1.0, 0.5])
# 入力層-中間層の重み
W1 = np.array([[0.1, 0.3, 0.5],
               [0.2, 0.4, 0.6]])
# 入力層のバイアス
B1 = np.array([0.1,
               0.2,
               0.3])
# 中間層1
A1 = transport_signal(X1,W1,B1)
# 活性化した中間ノード
Z1 = sigmoid(A1)

# 中間層1-中間層2の重み
W2 = np.array([[0.1, 0.4],
               [0.2, 0.5],
               [0.3, 0.6]])
# 中間層1のバイアス
B2 = np.array([0.1, 0.2])
#中間層2
A2 = transport_signal(Z1, W2, B2)
Z2 = sigmoid(A2)

#中間層2-出力層の重み
W3 = np.array([[0.1, 0.3],
               [0.2, 0.4]])
B3 = np.array([0.1, 0.2])

Y  = identity_function(transport_signal(A2, W3, B3))
print(Y)

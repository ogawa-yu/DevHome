import numpy as np

# 論理ゲートの演算を行うクラス
class LogicGate:
    def __init__(self, w1, w2, theta):
        self.w = np.array([w1, w2])
        self.bias = -theta
    def output(self, x1, x2):
        x = np.array([x1, x2])
        return (np.sum(self.w*x) + self.bias) > 0

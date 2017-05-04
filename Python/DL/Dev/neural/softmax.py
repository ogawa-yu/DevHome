import numpy as np
# ソフトマックス関数
# 演算した結果のベクトルは、要素の和が1になる性質がある
# すなわち各要素は1に正規化された値と変換することができる
def softmax(x):
    if x.ndim == 2:
        x = x.T
        x = x - np.max(x, axis=0)
        y = np.exp(x) / np.sum(np.exp(x), axis=0)
        return y.T 

    x = x - np.max(x) # オーバーフロー対策
    return np.exp(x) / np.sum(np.exp(x))

import numpy as np
# ソフトマックス関数
# 演算した結果のベクトルは、要素の和が1になる性質がある
def softmax(x):
    c = np.max(x) # オーバーフローを避けるため、expへ渡す引数を小さくする
    exp_x = np.exp(x - c)
    return exp_x / np.sum(exp_x)

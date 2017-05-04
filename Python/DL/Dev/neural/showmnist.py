import sys, os
sys.path.append(os.pardir)
import numpy as np
from dataset.mnist import load_mnist
from PIL import Image

def img_show(img):
    pil_img = Image.fromarray(np.uint8(img))
    pil_img.show()

(x_train, t_train), (x_test, t_test) = load_mnist(flatten=True, normalize=False)
img = x_train[0]
label = t_train[0]
print(label)
print(img.shape)
# 画像を元のサイズに変換
# load_mnistでflatten=Trueにすると
# numpyの一次元配列に画像データが格納される
# 画像表示のために二次元配列に変換する必要がある
img = img.reshape(28, 28)
print(img.shape)

img_show(img)

import matplotlib.pyplot as plt
from matplotlib.image import imread

# 画像の読み込み(カレントディレクトリにsample.pngが存在する場合)
img = imread('sample.png')
plt.imshow(img)

plt.show()
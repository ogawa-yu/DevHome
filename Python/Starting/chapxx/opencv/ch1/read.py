import cv2
from matplotlib import pyplot as plt

img = cv2.imread("opencv-logo.png")
print(type(img)) # <class 'numpy.ndarray'>
print(img.shape) # (222, 180, 3)

begin_point = (0, 80)
color = "yellow"
text = "Example"
plt.imshow(img)

plt.axhline(begin_point[1], color=color, linestyle="--", linewidth=1)
plt.text(*begin_point, text, color=color)
plt.show()

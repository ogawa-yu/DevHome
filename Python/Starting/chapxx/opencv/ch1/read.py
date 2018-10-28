import cv2
from matplotlib import pyplot as plt

img = cv2.imread("opencv-logo.png")
print(type(img)) # <class 'numpy.ndarray'>
print(img.shape) # (222, 180, 3)

begin_point = (0, 80)
end_point = (180, 80)
color = (255, 255, 0)
text = "Example"
font = cv2.FONT_HERSHEY_PLAIN
font_size = 0.8
img = cv2.line(img, begin_point, end_point, color, 1)
cv2.putText(img, text, begin_point, font, font_size, color, 1, cv2.LINE_4)
plt.imshow(img)
plt.show()

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

arra = np.array([[
    [[129, 255, 255], [55, 3, 4], [69, 3, 4], [120, 3, 4], [129, 3, 3]],
    [[129, 255, 255], [55, 3, 4], [69, 3, 4], [120, 3, 4], [129, 3, 3]],
    [[129, 255, 255], [55, 3, 4], [69, 3, 4], [120, 3, 4], [129, 3, 3]]
    ]])
arrb = np.array([[
    [[129, 255, 255], [55, 3, 4], [69, 3, 4], [120, 3, 4], [129, 3, 3]],
    [[129, 255, 255], [55, 5, 4], [69, 3, 3], [120, 3, 4], [129, 3, 3]],
    [[129, 255, 255], [55, 6, 4], [69, 8, 5], [120, 3, 4], [129, 3, 3]]
    ]])
print(arra.shape)
xs, ys, zs, _ = np.where(arra != arrb)

a = np.arange(6).reshape(2, 3)
b = np.arange(6, 12).reshape(2, 3)
print(a)
print(b)

# three sample give a same result.
arr_v = np.concatenate((a, b), axis=0)
arr_v = np.vstack((a, b))
arr_v = np.r_[a, b]
print(arr_v)

v, w, x = np.split(arr_v, [1, 3], axis=0)
print(v)
print(w)
print(x)

fig = plt.figure()
ax = Axes3D(fig)
ax.scatter(xs, ys, zs)
plt.show()
import numpy as np

def mean_squared_error(y, t):
    if y.ndim == 1:
        y = y.reshape(1, y.size)
        t = t.reshape(1, t.size)
    batch_size = y.shape[0]
    return 0.5 * np.sum((y-t)**2) / batch_size

def cross_entropy_error(y, t):
    if y.ndim == 1:
        y = y.reshape(1, y.size)
        t = t.reshape(1, t.size)
    batch_size = y.shape[0]
    delta = 1e-7 # y=0の時にも計算できるように
    return -np.sum(np.log(y[np.arange(batch_size), t] + delta)) / batch_size

y1 = np.array([0.0, 0.6, 0.1, 0.0, 0.0, 0.05, 0.05, 0.1, 0.1])
y2 = np.array([0.0, 0.1, 0.0, 0.0, 0.7, 0.0, 0.0, 0.1, 0.1])
t = np.array([0,   1,   0,   0,   0,   0,    0,    0,   0])

print("MS Error(y1):" + str(mean_squared_error(y1, t)))
print("MS Error(y2):" + str(mean_squared_error(y2, t)))

print("CE Error(y1):" + str(cross_entropy_error(y1, t)))
print("CE Error(y2):" + str(cross_entropy_error(y2, t)))

from numpy import arange
from numba import jit
import time

@jit
def sum2d(arr):
    M, N = arr.shape
    result = 0.0

    for i in range(M):
        for j in range(N):
            result += arr[i, j]

    return result

start = time.time()
a = arange(100000000).reshape(10000, 10000)

print(sum2d(a))
elapsed_time = time.time() - start
print("erapsed time:{0}[sec]".format(elapsed_time))

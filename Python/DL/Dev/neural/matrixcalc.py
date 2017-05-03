import numpy as np
import matplotlib.pyplot as plt

def printArray(X):
    print("======Print Array=======")
    print(X)
    print(np.ndim(X))
    print(X.shape)
    print(X.shape[0])
    print("======Print  END =======")

A = np.array([1, 2, 3, 4])
B = np.array([[1.0, 2.0],
              [3.0, 4.0],
              [5.0, 6.0]])
C = np.array([[1.0, 2.0],
              [3.0, 4.0]])
D = np.array([[5.0, 6.0],
              [7.0, 8.0]])
E = np.array([[1.0, 2.0, 3.0],
              [4.0, 5.0, 6.0]])
printArray(A)
printArray(B)
printArray(np.dot(C, D))
printArray(np.dot(D, C))
print(np.dot(C, D) is np.dot(D, C))
printArray(np.dot(B, C))
printArray(np.dot(B, D))
printArray(np.dot(B,E))

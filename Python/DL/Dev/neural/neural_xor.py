import numpy as np
from sigmoid import sigmoid
from identity import identity_function

def init_network():
    network = {}
    network['W1'] = np.array([[0.1, 0.3, 0.5], [0.2, 0.4, 0.6]]) 
    network['b1'] = np.array([0.1, 0.2, 0.3])
    network['W2'] = np.array([[0.1, 0.4], [0.2, 0.5], [0.3, 0.6]])
    network['b2'] = np.array([0.1, 0.2])
    network['W3'] = np.array([[0.1, 0.3], [0.2, 0.4]])
    network['b3'] = np.array([0.1, 0.2])
    return network

def transport_signal(X, W, B):
    return np.dot(X, W) + B

def forward(network, X):
    W1, W2, W3 = network['W1'], network['W2'], network['W3']
    b1, b2, b3 = network['b1'], network['b2'], network['b3']

    a1 = transport_signal(X, W1, b1)
    z1 = sigmoid(a1)

    a2 = transport_signal(z1, W2, b2)
    z2 = sigmoid(a2)

    a3 = transport_signal(z2, W3, b3)
    return indentity(a3)

x1 = np.array([0.0, 0.0])
x2 = np.array([0.0, 1.0])
x3 = np.array([1.0, 0.0])
x4 = np.array([1.0, 1.0])
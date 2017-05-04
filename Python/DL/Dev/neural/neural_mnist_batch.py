import sys, os
sys.path.append(os.pardir)
import numpy as np
from dataset.mnist import load_mnist
import pickle
from sigmoid import sigmoid
from softmax import softmax

def get_test_data():
    (x_train, t_train), (x_test, t_test) = load_mnist(flatten=True, normalize=True, one_hot_label=False)
    return x_test, t_test

def init_network():
    with open("sample_weight.pkl", 'rb') as f:
        network = pickle.load(f)
    return network

def predict(network, X):
    W1, W2, W3 = network['W1'], network['W2'], network['W3']
    b1, b2, b3 = network['b1'], network['b2'], network['b3']

    A1 = np.dot(X, W1)  + b1
    Z1 = sigmoid(A1)
    A2 = np.dot(Z1, W2) + b2
    Z2 = sigmoid(A2)
    A3 = np.dot(Z2, W3) + b3
    Y  = softmax(A3)
    return Y

x, t = get_test_data()
network = init_network()
accuracy_count = 0
batch_size = 500

for i in range(0, len(x), batch_size):
    x_batch = x[i:i+batch_size]
    y_batch = predict(network, x_batch)
    p = np.argmax(y_batch, axis=1)
    accuracy_count += np.sum(p == t[i:i+batch_size])
# 正確度の算出
print("Accuracy:" + str(float(accuracy_count / len(x))))

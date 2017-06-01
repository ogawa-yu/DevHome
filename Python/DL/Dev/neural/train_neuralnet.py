import numpy as np
from dataset.mnist import load_mnist
from two_layer_net import TwoLayerNet

(x_train, t_train), (x_test, t_test) = load_mnist(normalize=True, one_hot_label=True)
train_loss_list = []

#Hyper-Parameters
items_num    = 10000
train_size   = x_train.shape[0]
batch_size   = 100
lerning_rate = 0.1

network = TwoLayerNet(input_size=784, hidden_size=50, output_size=10)

for i in range(items_num):
    #get mini batch
    batch_mask = np.random.choice(train_size, batch_size)
    x_batch    = x_train[batch_mask]
    t_batch    = t_train[batch_mask]

    #calculate gradient
    grad = network.calc_gradient(x_batch, t_batch)
    # grad = network.calc_gradient_opt(x_batch, t_batch) # lapid ver function.(not implement yet.)

    #update parameters
    for key in ('W1', 'b1', 'W2', 'b2'):
        network.params[key] -= lerning_rate * grad[key]
    
    #log histry of lerning proccess
    loss = network.loss(x_batch, t_batch)
    train_loss_list.append(loss)

    print("Iterated:", i)

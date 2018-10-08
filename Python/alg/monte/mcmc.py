"""
    train MCMC(malcov chain monte carlo method)
"""
import random
import numpy as np
import pystan
import math
import matplotlib.pyplot as plt

def generate(n):
    """ generate train data
    :param int n: value of number
    :rtype: list
    :return: train data
    """
    points = list()
    for i in range(n):
        x = round(random.random() * 4 + 3, 1)
        mu = math.exp(1.5 + 0.1*x)
        points.append([x, np.random.poisson(mu)])
    return points


if __name__ == '__main__':
    data = np.array(generate(10))

    x = data[:,0]
    y = data[:,1].astype(np.int) # target variable
    N = data.shape[0] # number of data
    stan_data = { 'N': N, 'x': x, 'y': y }

    fit = pystan.stan(file='./mcmc.stan', \
                        data=stan_data,
                        iter=5000,
                        chains=3,
                        thin=10)
    
    print("===== MCMC Result =====")
    print(fit.summary())
    results = fit.extract(permuted=True)
    plt.figure()
    plt.title('MCMC(beta1)')
    plt.plot(results['beta1'])
    plt.show()
    plt.hist(results['beta1'], bins = 50)
    plt.show()

    plt.title('MCMC(beta2)')
    plt.plot(results['beta2'])
    plt.show()
    plt.hist(results['beta2'], bins = 50)
    plt.show()

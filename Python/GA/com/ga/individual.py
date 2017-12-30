import numpy as np

class Individual(np.ndarray):
    """Individual for GA
    """

    def __new__(cls, a):
        return np.asarray(a).view(cls)

    def __repr__(self):
        return self.tostring()

    def eval(self, func):
        return func(self)

class EvaluatedIndividual(object):
    """Evaluated Individual 
        When instanciate this object, 
        evaluate cost function for a individual
        and store fitness to this objects property.
    """

    fitness = None
    individual = None

    def __init__(self, individual, func):
        self.fitness = individual.eval(func)
        self.individual = individual
    
    def __repr__(self):
        #return str(self.individual) + "| fitness:" + str(self.fitness)
        return "fitness:" + str(self.fitness) 

    def eval(self, func):
        return self.individual.eval(func)

    def get(self, idx):
        return self.individual[idx]
    
    def get(self, indexes):
        return self.individual[indexes].tolist()

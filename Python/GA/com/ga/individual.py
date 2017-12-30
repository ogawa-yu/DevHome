import numpy as np

class Individual(np.ndarray):
    fitness = None
    
    def __new__(cls, a):
        return np.asarray(a).view(cls)

    def __repr__(self):
        return self.base

import random
from individual import Individual

class Population(object):
    eval_function = None
    population = []

    def __init__(self, n_individual, n_genes, eval_function):
        for i in range(0, n_individual):
            individual = create_individual(n_genes)
            self.population.append(individual)

        self.eval_function = eval_function

    def size(self):
        return len(self.population)
    def __evaluate(self, individual):
        return self.eval_function(individual)

def create_individual(n_genes):
    return Individual([random.randint(0, 1) for i in range(0, n_genes)])
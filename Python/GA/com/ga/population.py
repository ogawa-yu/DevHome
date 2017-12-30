import random
import numpy as np
from individual import Individual
from individual import EvaluatedIndividual
from operator import itemgetter
from functools import reduce

class Population(object):
    """ Population
    """

    eval_function = None
    population = []

    def __init__(self, n_individual, n_genes, eval_function):
        for i in range(0, n_individual):
            individual = create_individual(n_genes)
            evaluatedInd = EvaluatedIndividual(individual, eval_function)
            self.population.append(evaluatedInd)

        self.eval_function = eval_function

    def __repr__(self):
        return "size:" + str(self.size()) + ", fitness(Avg):" + str(self.getAvg())

    def getAvg(self):
        return sum(map(lambda x: x.fitness, self.population)) / len(self.population)

    def select(self, indexes):
        result = []
        for idx in indexes:
            result.append(self.population[idx])
        return result

    def size(self):
        return len(self.population)

def create_individual(n_genes):
    return Individual([random.randint(0, 1) for i in range(0, n_genes)])
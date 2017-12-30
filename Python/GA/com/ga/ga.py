# -*- coding: utf-8 -*-
import random
from abc import ABCMeta, abstractmethod
from population import Population
import selection

class GeneticAlgorithm(metaclass=ABCMeta):
    """ Genetic Algorithm Executor
    
    """
    @abstractmethod
    def execute(self):
        pass

class SimpleGA(GeneticAlgorithm):
    """Simple Genetic Algorithm Executor
        [step]
        1. create population
        2. set fitness to individuals
        3. selection(create next generation)
        4. crossover
        5. mutation
        6. repert step 3 to 5
    """

    n_genes = 100
    n_individuals = 100
    n_generations = 10
    generation_fitnesses = []

    def __init__(self, selection, eval_function, n_genenrations = 10, n_genes = 100, n_individuals = 100):
        self.selection = selection
        self.eval_function = eval_function
        self.n_generations = n_genenrations
        self.n_genes = n_genes
        self.n_individuals = n_individuals

    def execute(self):
        random.seed(64)
        population = Population(self.n_individuals, self.n_genes, self.eval_function)
        self.__store_fitness(population)

        for i in range(0, self.n_generations):
            print("===>Generation:" + str(i))
            print(population)
            population.population = self.__select(population)
            self.__store_fitness(population)
        
        return population.getAvg()

    def __store_fitness(self, population):
        self.generation_fitnesses.append(population.getAvg())
        
    def __select(self, population):
        next_gen = []
        while len(next_gen) < population.size():
            next_gen.append(self.selection.select(population))
        return next_gen

        



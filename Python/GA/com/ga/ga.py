# -*- coding: utf-8 -*-
from abc import ABCMeta, abstractmethod
from population import Population
import selection

class GeneticAlgorithm(metaclass=ABCMeta):
    @abstractmethod
    def execute(self):
        pass

class SimpleGA(GeneticAlgorithm):
    n_genes = 100
    n_individuals = 100

    def __init__(self, selection, eval_function):
        self.selection = selection
        self.eval_function = eval_function

    def execute(self):
        population = Population(
            self.n_individuals, 
            self.n_genes, 
            self.eval_function)

        return "end"



# -*- coding: utf-8 -*-
from abc import ABCMeta, abstractmethod
from individual import Individual
import selection

class GeneticAlgorithm(metaclass=ABCMeta):
    @abstractmethod
    def execute(self):
        pass

class SimpleGA(GeneticAlgorithm):
    __generations = 100
    __populations = 100

    def __init__(self, selection):
        self.selection = selection

    def execute(self):
        individuals = []
        for population in range(0, self.__populations):
            individuals.append(Individual(0))

        for generation in range(0, self.__generations):
            for population in range(0, self.__populations):
                pass
        return "end"




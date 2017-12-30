from abc import ABCMeta, abstractmethod
from population import Population
import random

class Selection(metaclass=ABCMeta):
    def select(self, population):
        pass

class Tournament(Selection):
    tournament_size = 0

    def __init__(self, tournament_size):
        self.tournament_size = tournament_size
    
    def select(self, population):
        if (population.size() < self.tournament_size):
            raise RuntimeError("population count poor. tournament size=" +
                    self.tournament_size +
                    ", population size=" + population.size())
        indexes = [random.randint(0, population.size() - 1) 
            for i in range(0, self.tournament_size)]
        individuals = population.select(indexes)
        best = max(individuals, key=lambda x: x.fitness)
        return best

class Roulette(Selection):
    def __init__(self):
        pass
    
    def select(self, population):
        pass


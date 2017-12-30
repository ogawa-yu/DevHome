from abc import ABCMeta, abstractmethod
import random

class Selection(metaclass=ABCMeta):
    def select(self):
        pass

class Tournament(Selection):
    __size = 0
    __inidividuals = []

    def __init__(self, size, individudals):
        self.__size = size
        self.__inidividuals = individudals
    
    def select(self):
        pass

class Roulette(Selection):
    def __init__(self):
        pass
    
    def select(self):
        pass


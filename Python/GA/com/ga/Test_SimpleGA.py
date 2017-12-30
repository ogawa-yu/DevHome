import unittest
import numpy as np
import matplotlib.pyplot as plt
from ga import SimpleGA
from selection import Roulette
from selection import Tournament

class SimpleGATest(unittest.TestCase):
    def test_execute(self):
        testee = SimpleGA(Tournament(10), eval_sum, 30)
        best = testee.execute()

        x = range(0, len(testee.generation_fitnesses))
        y = testee.generation_fitnesses
        plt.plot(x, y, label="GA Result")
        plt.xlabel("generation")
        plt.ylabel("fitness")
        plt.title('Simple GA Result')
        plt.legend()
        plt.show()

        self.assertEqual(len(testee.generation_fitnesses), 11)
        self.assertEqual(best, 100.0, "Fitnessが100(個体数)に収束していること")


def eval_sum(ind):
    return sum(ind)

if __name__ == '__main__':
    unittest.main()
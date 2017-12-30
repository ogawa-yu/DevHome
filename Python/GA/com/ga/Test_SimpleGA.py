import unittest
from ga import SimpleGA
from selection import Roulette

class SimpleGATest(unittest.TestCase):
    def test_execute(self):
        testee = SimpleGA(Roulette(), eval_sum)
        self.assert_(testee.execute(), "end")

def eval_sum(ind):
    return sum(ind)

if __name__ == '__main__':
    unittest.main()
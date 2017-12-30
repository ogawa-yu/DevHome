import unittest
from ga import SimpleGA
from selection import Roulette

class SimpleGATest(unittest.TestCase):
    def test_execute(self):
        testee = SimpleGA(Roulette())
        self.assert_(testee.execute(), "end")

if __name__ == '__main__':
    unittest.main()
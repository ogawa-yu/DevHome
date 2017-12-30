import unittest as ut
import random
from individual import Individual

class IndividualTest(ut.TestCase):
    def test_len(self):
        testee = Individual([random.randint(0, 1) for i in range(100)])
        self.assertEquals(testee.size, 100)
    
    def test_repr(self):
        print(Individual([random.randint(0, 1) for i in range(10)]))

if __name__ == '__main__':
    ut.main()
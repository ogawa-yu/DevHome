import unittest as ut
import random
from individual import Individual
from individual import EvaluatedIndividual

class IndividualTest(ut.TestCase):
    def test_len(self):
        testee = Individual([random.randint(0, 1) for i in range(100)])
        self.assertEqual(testee.size, 100)
    
    def test_repr(self):
        print(Individual([random.randint(0, 1) for i in range(10)]))

    def test_repr_evaluated(self):
        ind = Individual([0, 1, 1])
        testee = EvaluatedIndividual(ind, lambda x: sum(x))
        print(testee)
    
    def test_get_evaluated(self):
        ind = Individual([0, 1, 1])
        testee = EvaluatedIndividual(ind, lambda x: sum(x))
        self.assertEqual(testee.get(0), 0)
        self.assertEqual(testee.get(1), 1)
        self.assertEqual(testee.get(2), 1)
        actual = testee.get([1, 2])
        self.assertEqual(actual, [1, 1])

    def test_eval(self):
        testee = Individual([random.randint(0, 1) for i in range(10)])
        self.assertGreaterEqual(10, testee.eval(lambda x: sum(x)))
        
if __name__ == '__main__':
    ut.main()
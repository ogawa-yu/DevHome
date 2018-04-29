import numpy as np
import unittest as ut


class NumpyTest(ut.TestCase):

    def test_new_array(self):
        testee = np.array([2, 4, 6, 8])
        
        self.assertEqual(testee.ndim, 1)

        self.assertEqual(testee.size, 4)

        self.assertEqual(testee.shape, (4,))


    def test_arange(self):
        testee = np.arange(10)

        self.assertEqual(testee.ndim, 1)

        self.assertEqual(testee.size, 10)

        self.assertEqual(testee.shape, (10,))


    def test_arange_spec(self):
        testee = np.arange(7, 11)

        self.assertEqual(testee.ndim, 1)

        self.assertEqual(testee.size, 4)

        self.assertEqual(testee.shape, (4,))


    def test_arange_step(self):
        testee = np.arange(7, 11, 2)

        self.assertEqual(testee.ndim, 1)

        self.assertEqual(testee.size, 2)

        self.assertEqual(testee.shape, (2,))


    def test_arange_float(self):
        testee = np.arange(10, 4, -1.5, dtype=np.float)

        self.assertEqual(testee.ndim, 1)

        self.assertEqual(testee.size, 4)

        self.assertEqual(testee.shape, (4,))

    
    def test_array_arithmetic(self):
        a = np.arange(4)
        
        self.assertEqual(a.tolist(), [0, 1, 2, 3])

        a *= 3

        self.assertEqual(a.tolist(), [0, 3, 6, 9])

        b = np.zeros((2, 5)) + 2

        self.assertEqual(b.tolist(), [[2, 2, 2, 2, 2], [2, 2, 2, 2, 2]])


    def test_linear_arithmetic(self):
        coeffs = np.array([ [4, 5], [1, 2] ])
        dependents = np.array([ 20, 13 ])
        answers = np.linalg.solve(coeffs, dependents)

        self.assertEqual((coeffs[0][0] * answers[0] + coeffs[0][1] * answers[1]), dependents[0])
        self.assertEqual((coeffs[1][0] * answers[0] + coeffs[1][1] * answers[1]), dependents[1])


if __name__ == '__main__':
    ut.main()


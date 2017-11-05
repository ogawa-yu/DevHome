import unittest

class TestGenerator(unittest.TestCase):
    def test_generator_range(self):
        self.assertEqual(sum(range(1, 101)), 5050)

    def my_range(self, first=0, last=10, step=1):
        number = first
        while number < last:
            yield number
            number += step
    
   def test_generator_my_range(self):
        actual = []
        for x in self.my_range(0, 5):
            actual.append(x)
        self.assertEqual(actual, [0, 1, 2, 3, 4])
    
if __name__ == '__main__':
    unittest.main()
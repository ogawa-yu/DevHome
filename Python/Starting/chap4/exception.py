import unittest

class TestException(unittest.TestCase):
    def test_try_except(self):
        testee = [1, 2, 3]
        pos = 4
        try:
            test_try_except[pos]
            assert False
        except:
            pass

if __name__ == '__main__':
    unittest.main()
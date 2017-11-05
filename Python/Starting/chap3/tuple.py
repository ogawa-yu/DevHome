import unittest

class TestTuple(unittest.TestCase):
    def test_create_empty_tuple(self):
        testee = ()
        self.assertEqual(testee, ())

    def test_crete_one_elem(self):
        testee = 'yamada',
        self.assertEqual(testee, ('yamada',))

    def test_tuple_substitution(self):
        testee = ('yamada', 'tanaka', 'hayashi')
        yamada, tanaka, hayashi = testee
        
        self.assertEqual(yamada, 'yamada')
        self.assertEqual(tanaka, 'tanaka')
        self.assertEqual(hayashi,'hayashi')
    
    def test_tuple_convert_from_list(self):
        source = ['yamada', 'tanaka', 'hayashi']
        testee = tuple(source)

        self.assertEqual(testee, ('yamada', 'tanaka', 'hayashi'))
    
if __name__ == '__main__':
    unittest.main()
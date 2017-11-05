import unittest

class TestDict(unittest.TestCase):
    def test_dict_create_empty(self):
        testee = {}
        self.assertEqual(len(testee), 0)
    
    def test_dict_create_from_two_element_list(self):
        source = [ ['yamada', 'sapporo'], ['tanaka', 'ebetsu'], ['hayashi', 'kita-hiroshima']]
        testee = dict(source)

        self.assertEqual(len(testee), 3)
        self.assertEqual(testee['yamada'], 'sapporo')
        self.assertEqual(testee['tanaka'], 'ebetsu')
        self.assertEqual(testee['hayashi'], 'kita-hiroshima')

    def test_dict_create_from_two_element_tuple(self):
        source = (('yamada', 'sapporo'), ('tanaka', 'ebetsu'), ('hayashi', 'kita-hiroshima'))
        testee = dict(source)

        self.assertEqual(len(testee), 3)
        self.assertEqual(testee['yamada'], 'sapporo')
        self.assertEqual(testee['tanaka'], 'ebetsu')
        self.assertEqual(testee['hayashi'], 'kita-hiroshima')

    def test_dict_add_element(self):
        testee = {
                'yamada': 'sapporo',
                'tanaka': 'ebetsu'      
            }
        testee['hayashi'] = 'kita-hiroshima'

        self.assertEqual(len(testee), 3)
        self.assertEqual(testee['yamada'], 'sapporo')
        self.assertEqual(testee['tanaka'], 'ebetsu')
        self.assertEqual(testee['hayashi'], 'kita-hiroshima')

    def test_dict_del_element(self):
        testee = {
            'yamada': 'sapporo',
            'tanaka': 'ebetsu',
            'hayashi': 'kita-hiroshima'   
        }
        del testee['hayashi']

        self.assertEqual(len(testee), 2)
        self.assertEqual(testee['yamada'], 'sapporo')
        self.assertEqual(testee['tanaka'], 'ebetsu')
    
    def test_dict_update(self):
        testee = {
            'yamada': 'sapporo',
            'honma': 'kofu',
            'hayashi': 'kita-hiroshima'   
        }

        other = {
            'ohno': 'kitami',
            'ogawa': 'sapporo',
            'honma': 'tsukigata'
        }

        testee.update(other)
        self.assertEqual(len(testee), 5)
        self.assertEqual(testee['yamada'], 'sapporo')
        self.assertEqual(testee['hayashi'], 'kita-hiroshima')
        self.assertEqual(testee['ohno'], 'kitami')
        self.assertEqual(testee['ogawa'], 'sapporo')
        self.assertEqual(testee['honma'], 'tsukigata')

if __name__ == '__main__':
    unittest.main()
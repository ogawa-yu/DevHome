import unittest

class TestList(unittest.TestCase) :
    def test_empty_list(self):
        empty_list = [ ]
        another_empty_list = list()
        self.assertEqual(empty_list, another_empty_list)

    def test_list_index_access(self):
        weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        self.assertEqual(weekdays[0], weekdays[-7])
        #print(weekdays[-8]) #length以上のindexはNG
        self.assertEqual(weekdays[1], weekdays[-6])
        self.assertEqual(weekdays[2], weekdays[-5])
        self.assertEqual(weekdays[3], weekdays[-4])
        self.assertEqual(weekdays[4], weekdays[-3])
        self.assertEqual(weekdays[5], weekdays[-2])
        self.assertEqual(weekdays[6], weekdays[-1])

    def test_list_modify(self):
        modified = ['yamada', 'tanaka', 'sasaki']
        modified[2] += ' kojiro'
        self.assertEqual(modified[2], 'sasaki kojiro')
    
    def test_list_from_string(self):
        cat = list('cat')
        expected = ['c', 'a', 't']
        self.assertEqual(cat, expected)
    
    def test_list_combine(self):
        source = [1, 2, 3]
        source2 = [1, 2, 3]
        extendee = list('abc')
        source += extendee
        source2.extend(extendee)
    
        self.assertEqual(source, source2)
    
    def test_list_append(self):
        testee = ['yamada', 'tanaka', 'sasaki']
        testee.append('honda')

        self.assertEqual(len(testee), 4)
        self.assertEqual(testee[3], 'honda')

    def test_list_insert(self):
        testee = ['yamada', 'tanaka', 'sasaki']
        testee.insert(2, 'honda')

        self.assertEqual(len(testee), 4)
        self.assertEqual(testee[2], 'honda')
        self.assertEqual(testee[3], 'sasaki')

    def test_list_del(self):
        testee = ['yamada', 'tanaka', 'sasaki']
        del testee[2]

        self.assertEqual(len(testee), 2)
        self.assertEqual(testee, ['yamada', 'tanaka'])

    def test_list_remove(self):
        testee = ['yamada', 'tanaka', 'sasaki']
        testee.remove('yamada')

        self.assertEqual(len(testee), 2)
        self.assertEqual(testee, ['tanaka', 'sasaki'])

    def test_list_slice(self):
        testee = ['yamada', 'tanaka', 'sasaki']
    
        self.assertEqual(testee[1:3], ['tanaka', 'sasaki'])
        self.assertEqual(testee[0:3], testee)
    
    def test_list_index(self):
        testee = ['yamada', 'tanaka', 'sasaki']
        
        self.assertEqual(testee.index('sasaki'), 2)
        self.assertRaises(Exception, lambda: testee.index('not found'))

    def test_list_in(self):
        testee = ['yamada', 'tanaka', 'sasaki']

        self.assertEqual('sasaki' in testee, True)
        self.assertEqual('suzuki' in testee, False)
    
    def test_list_count(self):
        testee = ['yamada', 'tanaka', 'sasaki']
    
        self.assertEqual(testee.count('yamada'), 1)
        self.assertEqual(testee.count('honda'), 0)

    def test_list_sort(self):
        testee = ['yamada', 'tanaka', 'sasaki']

        self.assertEqual(sorted(testee), ['sasaki', 'tanaka', 'yamada'])

    def test_list_operator_equal(self):
        origin = ['yamada', 'tanaka', 'sasaki']
        moved = origin
        origin[0] = 'tanaka'

        self.assertEqual(moved, ['tanaka', 'tanaka', 'sasaki'])

    def test_list_copy(self):
        origin = ['yamada', 'tanaka', 'sasaki']
        moved = origin.copy()
        origin[0] = 'tanaka'

        self.assertEqual(moved, ['yamada', 'tanaka', 'sasaki'])

    def test_list_copy_by_list_method(self):
        origin = ['yamada', 'tanaka', 'sasaki']
        moved = list(origin)
        origin[0] = 'tanaka'

        self.assertEqual(moved, ['yamada', 'tanaka', 'sasaki'])

    def test_list_copy_by_slice(self):
        origin = ['yamada', 'tanaka', 'sasaki']
        moved = origin[:]
        origin[0] = 'tanaka'

        self.assertEqual(moved, ['yamada', 'tanaka', 'sasaki'])

if __name__  == '__main__':
    unittest.main()
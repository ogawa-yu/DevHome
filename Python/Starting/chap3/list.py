import unittest

class TestList(unittest.TestCase) :
    def test_empty_list(self):
        empty_list = [ ]
        another_empty_list = list()
        self.assertEqual(empty_list, another_empty_list)

    def test_list(self):
        weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        self.assertEqual(weekdays[0], weekdays[-7])
        #print(weekdays[-8]) #length以上のindexはNG

        self.assertEqual(weekdays[6], weekdays[-1])
        #print(weekdays[7]) #length以上のindexはNG

    def test_list_from_string(self):
        cat = list('cat')
        expected = ['c', 'a', 't']
        self.assertEqual(cat, expected)

if __name__  == '__main__':
    unittest.main()
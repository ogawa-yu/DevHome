import unittest as ut
import person as p

class TestPerson(ut.TestCase):
    def test_name(self):
        testee = p.Person('test')
        self.assertEqual(testee.name(), 'test')


if __name__ == '__main__':
    ut.main()
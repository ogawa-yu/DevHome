from report import get_description as desc
from report import get_possibilities as poss
import unittest as ut

class TestReport(ut.TestCase):
    def test_get_description(self):
        self.assertEqual(desc() in poss(), True)

if __name__ == '__main__':
    ut.main()
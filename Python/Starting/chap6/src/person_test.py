import unittest as ut
import person as p

class TestPerson(ut.TestCase):
    def test_name(self):
        testee = p.Person('test')
        self.assertEqual(testee.name(), 'test')

    def test_email_person(self):
        testee = p.EmailPerson('mailer', 'test@mail.com')
        self.assertEqual(testee.name(), 'mailer')
        self.assertEqual(testee.email(), 'test@mail.com')

if __name__ == '__main__':
    ut.main()
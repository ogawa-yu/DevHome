import unittest as ut

class TestException(ut.TestCase):
    def test_try_except_basis(self):
        testee = [1, 2, 3]
        pos = 4
        try:
            test_try_except[pos]
            assert False
        except:
            pass

    def test_try_except_specified_execption(self):
        testee = [1, 2, 3]
        pos = 4

        try:
            testee[pos]
            assert False
        except IndexError as err:
            print('occured index error')
            pass
        except Exception as other:
            assert False

    class UpperCaseException(Exception):
        pass

    def raiseExceptionIfUpperCase(self, words):
        for word in words:
            if word.isupper():
                raise self.UpperCaseException(word)
    
    def test_exception_upper_case(self):
        words = ['tanaka', 'yasui', 'iwamoto', 'OKAMOTO']
        try:
            self.raiseExceptionIfUpperCase(words)
            assert False
        except self.UpperCaseException as err:
            pass
        except Exception as other:
            assert False
        
if __name__ == '__main__':
    ut.main()

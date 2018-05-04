
class SampleMeta(type):
    def __init__(cls, name, bases, namespec):
        ''' __init__ is called instantiate cls at the first time.
        '''
        print("init metaclass", name)
        super(SampleMeta, cls).__init__(name, bases, namespec)
        cls.uses_metaclass = lambda self: "Yes!"


class Sample(metaclass=SampleMeta):
    # for Python 2.x statements
    # __metaclass__ = SampleMeta

    def __init__(self):
        print("init", self.__class__)

    def foo(self):
        pass

    @staticmethod
    def bar():
        pass


class Sample2(metaclass=SampleMeta):
    def __init__(self):
        print("init", self.__class__)


if __name__ == '__main__':
    s1 = Sample()
    ss = Sample()
    s2 = Sample2()
    print([m for m in dir(s1) if not m.startswith('__')])
    print([m for m in dir(s2) if not m.startswith('__')])
    print(s1.uses_metaclass())

""" Outputs:
init metaclass Sample
init metaclass Sample2
init <class '__main__.Sample'>
init <class '__main__.Sample'>
init <class '__main__.Sample2'>
['bar', 'foo', 'uses_metaclass']
['uses_metaclass']
Yes!
"""

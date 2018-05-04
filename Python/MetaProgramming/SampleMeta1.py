
class SampleMeta(type):
    def __init__(cls, name, bases, namespec):
        super(SampleMeta, cls).__init__(name, bases, namespec)
        cls.uses_metaclass = lambda self: "Yes!"


class Sample(metaclass=SampleMeta):
    # for Python 2.x statements
    # __metaclass__ = SampleMeta
    def foo(self):
        pass

    @staticmethod
    def bar():
        pass


if __name__ == '__main__':
    s = Sample()
    print([m for m in dir(s) if not m.startswith('__')])
    print(s.uses_metaclass())

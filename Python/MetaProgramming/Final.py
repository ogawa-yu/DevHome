
class Final(type):
    def __init__(cls, name, bases, namespace):
        super(Final, cls).__init__(name, bases, namespace)
        for klass in bases:
            if isinstance(klass, Final):
                raise TypeError(str(klass.__name__) + " is Final")


class A(object):
    pass


class B(A, metaclass=Final):
    pass


try:
    class C(B):
        pass
except TypeError as e:
    print("Occured Exception:", e)


class RegisterLeafClasses(type):
    def __init__(cls, name, bases, namespec):
        super(RegisterLeafClasses, cls).__init__(name, bases, namespec)
        if not hasattr(cls, 'registry'):
            cls.registry = set()
        cls.registry.add(cls)
        cls.registry -= set(bases)  # remove base classes

    # Metamethods, called on class objects
    def __iter__(cls):
        return iter(cls.registry)

    def __str__(cls):
        if cls in cls.registry:
            return cls.__name__
        return cls.__name__ + " : , ".join([sc.__name__ for sc in cls])


class Color(object, metaclass=RegisterLeafClasses): pass
print(Color)

class Blue(Color): pass
class Red(Color): pass
class Green(Color): pass
class Yelow(Color): pass
print(Color)

class PhthaloBlue(Blue): pass
class CeruleanBlue(Blue): pass
print(Color)

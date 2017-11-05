class Person:
    def __init__(self, name):
        self._name = name
    
    def name(self):
        return self._name


if __name__ == '__main__':
    p = Person('test')
    print(p.name())
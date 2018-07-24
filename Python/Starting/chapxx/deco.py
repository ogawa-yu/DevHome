import sys

v = int(sys.argv[1])

def G4(f):
    def exec():
        if 4 < v:
            return 'greater than 4'
        return f()
    return exec


def L4(f):
    def exec():
        if  v < 4:
            return 'less than 4'
        return f()
    return exec


@G4
@L4
def func():
    return 'work func()'

print(func())


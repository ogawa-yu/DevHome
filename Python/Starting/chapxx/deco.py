import sys

v = int(sys.argv[1])

def G4(f):
    def exec():
        if v <= 4:
            print('not greater than 4')
            return
        f()
    return exec


@G4
def func():
    print('work func()')

func()


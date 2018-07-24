
class DynamicProxy(object):

    def __init__(self):
        pass

    def __setattr__(self, name, value):
        if isinstance(value, bool) and value:
            self.__dict__[name] = DynamicProxy()
        else:
            self.__dict__[name] = value

    def __getattr__(self, name):
        if name not in self.__dict__:
            self.__dict__[name] = "undef"
        return getattr(self, name)


if __name__ == '__main__':
    proc = DynamicProxy()
    print(proc.test)
    proc.test = True
    print(proc.test)
    proc.test.sample = 1
    print(proc.test.sample)


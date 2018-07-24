
class Sample(object):

    def __init__(self):
        self.exists = 5

    def __getattribute__(self, name):
        print("Called getattribute", name)
        try:
            return super().__getattribute__(name)
        except AttributeError:
            value = 'Value for %s' % name
            setattr(self, name, value)
            return value


    def __getattr__(self, name):
        value = 'Value for %s' % name

        setattr(self, name, value)
        
        return value


class LoggingSample(Sample):
    def __getattr__(self, name):
        print("Called getattr", name)
        return super().__getattr__(name)


if __name__ == '__main__':
    s = LoggingSample()
    s.hoge = True
    print(s.hoge)
    print(s.foo)
    print(s.bar)



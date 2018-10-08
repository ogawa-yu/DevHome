from operator import methodcaller

class NullSafeContainer(object):
    def __getattr__(self, name):
        def _(targ):
            if targ is None:
                return lambda *args, **kw: None
            return lambda *args, **kw: methodcaller(name, *args, **kw)(targ)
        return _


if __name__ == '__main__':
    ns = NullSafeContainer()
    print(ns.replace('foo bar baz')('bar', 'gege'))
    print(ns.replace(None)('bar', 'gege'))

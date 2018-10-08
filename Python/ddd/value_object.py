class ValueObject(object):
    """ base class for Value Objects

    please call _set_properties in constructor.
    """

    def __new__(class_, *args, **kwargs):
        self = object.__new__(class_)  # for python3.3 <= version
        self.__initialized = False
        self.__params = dict()
        return self

    def _props(self, mapping):
        if self.__initialized:
            raise AttributeError('callable only by constructor')

        self.__initialized = True
        self.__params = dict(mapping)
        self.__labels = [k for k, v in mapping]

        def setprop(key):
            prop = property(lambda x: x.__params[key])
            setattr(self.__class__, key, prop)

        for k, v in mapping:
            if not hasattr(self.__class__, k):
                setprop(k)

    def get_values(self):
        return self.__params

    def __repr__(self):
        return u'%s(%s)' % (
             self.__class__.__name__,
             ', '.join([str(self.__params[k]) for k in self.__labels]))

    def __hash__(self):
        return hash(repr(self))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        return repr(self) == repr(other)

    def __ne__(self, other):
        if not isinstance(other, self.__class__):
            return True
        return repr(self) != repr(other)

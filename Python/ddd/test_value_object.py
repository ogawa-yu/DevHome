# -*- coding: utf-8 -*-
from value_object import ValueObject


class Date(ValueObject):

    def __init__(self, year, month, day):
        self._props([
            ('year', int(year)),
            ('month', int(month)),
            ('day', int(day)),
        ])


class Foo(ValueObject):
    def __init__(self, text='foo'):
        self._props([
            ('text', text),
        ])

class VO(object):
    def __init__(self, a, b):
        setattr(VO, "_a", a)
        setattr(VO, "_b", b)

    @property
    def a(self):
        return self._a
    
    @property
    def b(self):
        return self._b

# @pytest.fixture
# def date():
#     return Date(2012, 2, 20)


# @pytest.fixture
# def foo_unicode():
#     return Foo(u'ふー')


# def test_properties(date):
#     assert date.year == 2012
#     assert date.month == 2
#     assert date.day == 20


# def test_immutable(date):
#     with pytest.raises(AttributeError):
#         date.year = 2015


# def test_set_properties(date):
#     with pytest.raises(AttributeError):
#         date._set_properties([
#             ('year', 2015),
#         ])


# def test_repr(date):
#     assert repr(date) == "Date(2012, 2, 20)"


# def test_get_values(date):
#     date.get_values == {'year': 2012, 'month': 2, 'day': 20}


# def test_unicode(foo_unicode):
#     assert foo_unicode.text == u'ふー'
#     assert unicode(foo_unicode) == u"Foo(ふー)"
#     assert repr(foo_unicode) == u"Foo(ふー)".encode('utf-8')

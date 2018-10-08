class A:
    pass


def add_1(val: A):
    return val + val


print(add_1(2))
print(add_1(3))
print(add_1(4))
print(add_1(4.5))

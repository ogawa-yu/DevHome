from typing import NewType

UserType = NewType('UserType', str)

UserId = NewType('UserId', UserType)


def foo(id: UserId) -> UserId:
    print(id)
    return id


if __name__ == '__main__':
    print(foo(1))

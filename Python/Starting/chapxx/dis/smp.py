import dis

def myfunc(alist):
    return len(alist)


if __name__ == '__main__':
    dis.dis(myfunc)


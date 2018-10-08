import numpy as np


def problem(right_max, up_max):
    xp = np.arange(1, right_max+1)
    yp = np.arange(1, up_max+1)
    X, Y = np.meshgrid(xp, yp)
    return np.array([X, Y])


def main():
    grid = problem(5, 4)
    print(grid.tolist())


if __name__ == '__main__':
    main()

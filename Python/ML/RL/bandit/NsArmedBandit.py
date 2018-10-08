import numpy as np


def Q(rewards, n):
    if n == 0:
        return 0

    return sum(rewards) / n


if __name__ == '__main__':
    pilicy = None
    reward_func = None
    value_func = None
    environment_model = None



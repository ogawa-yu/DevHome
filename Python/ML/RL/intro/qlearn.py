import argparse
import random
import time

random.seed()

EPSILON = 1.0
LEARN_RATE = 0.1
DISCOUNT_RATE = 0.9
ACTION_SELECTIVITY = 2


class Agent(object):
    
    def __init__(self, num_train, limit, state_count, learn_rate_func):
        self._num_train = num_train
        self._limit = limit
        self._state_count = state_count
        self._state = self._initial_state()
        self._reward = {0: -10, 5: 10}
        self._learn_rate_func = learn_rate_func
        self._q = [
            [random.random() for _ in range(ACTION_SELECTIVITY)]
            for _ in range(state_count)
        ]
    
    def _initial_state(self):
        return [ACTION_SELECTIVITY, 2]

    def _select_action(self, state):
        if random.random() < EPSILON:
            return random.randrange(ACTION_SELECTIVITY)
        return self._selet_forcibly(state)

    def _selet_forcibly(self, state):
        Q = self._q
        return 1 if Q[state][1] > Q[state][0] else 0

    def _transition(self, action):
        current_state = self._state[0]
        if action:
            return current_state + 1
        return current_state - 1

    def _update_qvalue(self, action, i):
        state, next_state = self._state
        Q = self._q
        learn_rate = self._learn_rate_func(i)
        if next_state in [0, 5]:
            reward = self._reward[next_state]
            return Q[state][action] + learn_rate * (reward - Q[state][action])

        next_action = self._selet_forcibly(next_state)
        return Q[state][action] + learn_rate \
            * (DISCOUNT_RATE * Q[next_state][next_action] - Q[state][action])

    def _get_symbol(self):
        symbol = self._state[0]
        items = []
        for i in range(self._state_count):
            if symbol == 1:
                if i not in [0, 5]:
                    items.append("o")
                elif i == 0:
                    items.append("x")
                else:
                    items.append("0")
            else:
                items.append(" ")
        return items

    def _console(self, i, t):
        symbols = self._get_symbol()
        print("(t={:2d})|{}|{}|{}|{}|{}|{}|".format(t, *symbols))
        time.sleep(0.5)

    def _print_q(self):
        print("#"*20)
        for i in range(self._state_count):
            print("{:.3f} {:.3f}\t".format(*self._q[i]))
        print("#"*20)

    def train(self):
        for i in range(self._num_train):
            self._state = self._initial_state()
            print("Iteration===>{}".format(i+1))
            self._print_q()
            for t in range(self._limit):
                state = self._state[0]
                action = self._select_action(state)
                self._state[1] = self._transition(action)

                self._console(i+1, t)

                self._q[state][action] = self._update_qvalue(action, i)

                self._state[0] = self._state[1]

                if self._state[0] in [0, 5]:
                    self._console(i+1, t+1)
                    break
        # final state
        self._print_q()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--num_train', '-n', type=int, default=10,
                        help='Number of training')
    parser.add_argument('--limit', '-l', type=int, default=10,
                        help='Limit.')
    args = parser.parse_args()
    agent = Agent(args.num_train, args.limit, 6, lambda x: 1/(x+1))
    agent.train()

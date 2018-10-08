import sys
import numpy as np
import matplotlib.pyplot as plt

class Player(object):
    def __init__(self, cards, name):
        self._stop = False
        self._hands = [cards[0], cards[1]]
        self._name = name

    def name(self):
        return self._name

    def stop(self):
        return self._stop

    def handle(self, deck):
        print(self._show())
        print("Select action(input 1 or 2 or stop):")
        action = sys.stdin.readline().rstrip()
        if action == '1':
            self._hands[0] = deck[0]
            return np.delete(deck, 0)
        elif action == '2':
            self._hands[1] = deck[0]
            return np.delete(deck, 0)
        elif action == 'stop':
            self._stop = True
        return deck

    def score(self):
        return self._get_point(self._hands[0]) \
            + self._get_point(self._hands[1])

    @staticmethod
    def _get_point(card):
        if 1 <= card <= 10:
            return card
        elif 11 <= card <= 13:
            return 10
        else:
            raise ValueError("invalid card:{}".format(card))

    def _show(self):
        return "({}) Cards:{}".format(self._name, self._hands)

def main():
    deck = np.arange(1, 13, 1)
    np.random.shuffle(deck)
    p1 = Player((1, 2), 'Player1')
    p2 = Player((1, 2), 'Player2')
    while deck.size > 0:
        if not p1.stop():
            deck = p1.handle(deck)
        elif not p2.stop():
            deck = p2.handle(deck)
        else:
            break
    print("{} score: {}".format(p1.name(), p1.score()))
    print("{} score: {}".format(p2.name(), p2.score()))
    s1 = p1.score()
    s2 = p2.score()
    winner = None
    if s1 > s2:
        winner = p1
    elif s1 < s2:
        winner = p2
    if winner:
        print("Winner:", winner.name())
    else:
        print("Draw")


if __name__ == '__main__':
    main()

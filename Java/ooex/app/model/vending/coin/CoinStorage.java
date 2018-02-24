package model.vending.coin;

import model.vending.message.Money;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class CoinStorage {
    private List<Money> storage_;

    CoinStorage() {
        storage_ = new ArrayList<>();
    }

    CoinStorage(int count, Money money) {
        if (count <= 0) {
            storage_ = new ArrayList<>();
        } else {
            storage_ = IntStream.range(0, count)
                    .mapToObj(i -> Money.of(money.getValue()))
                    .collect(Collectors.toList());
        }
    }

    public boolean hasCoins(int count) {
        return count <= storage_.size();
    }

    public Money take() {
        if (storage_.isEmpty()) {
            return Money.of(0);
        }
        return storage_.remove(storage_.size() - 1);
    }

    public Money take(int count) {
        int value =  IntStream.range(0, count).map(i -> take().getValue()).sum();
        return Money.of(value);
    }

    public List<Money> takeAll() {
        List<Money> destination = new ArrayList<>();
        while (storage_.size() > 0) {
            destination.add(take());
        }
        return destination;
    }

    public void store(Money coin) {
        if (coin.getValue() > 0) {
            storage_.add(coin);
        }
    }
}

package model.vending;

import model.vending.message.Drink;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

class DrinkHolder {
    private final int MAX_COUNT = 5;
    private final List<Drink> stock_;

    public DrinkHolder() {
        stock_ = new ArrayList<>(MAX_COUNT);
    }

    public Drink take() {
        return stock_.remove(stock_.size() - 1);
    }

    public void charge(Drink drink) {
        stock_.add(drink);
    }

    public void charge(Drink drink, int count) {
        IntStream.range(0, count).forEach(i -> charge(drink));
    }

    public boolean hasStock() {
        return !stock_.isEmpty();
    }
}

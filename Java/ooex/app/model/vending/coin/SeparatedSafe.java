package model.vending.coin;

import model.vending.message.Money;

import java.util.HashMap;
import java.util.Map;

class SeparatedSafe {
    private Map<Money, CoinStorage> storage_;

    SeparatedSafe() {
        storage_ = new HashMap<>();
    }

    public void addStorage(Money money, int count) {
        if (!money.isValid()) {
            return;
        }
        storage_.put(money, new CoinStorage(count, money));
    }

    public boolean available(Money money) {
        return storage_.containsKey(money);
    }

    public boolean canRefund(Money amount, Money refundsCoin) {
        CoinStorage refundCoins =  storage_.get(refundsCoin);
        int paybackCount = amount.numberOfDifference(refundsCoin);
        return refundCoins.hasCoins(paybackCount);
    }

    public void cache(Money amount) {
        if (!storage_.containsKey(amount)) {
            throw new IllegalArgumentException("amount cannot available. amount: " + amount);
        }
        CoinStorage coins = storage_.get(amount);
        coins.store(amount);
    }

    public Money take(Money target, Money amount) {
        CoinStorage coins = storage_.get(target);
        int takeCount = amount.numberOfDifference(target);
        return coins.take(takeCount);
    }
}

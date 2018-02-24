package model.vending.coin;

import model.vending.message.Drink;
import model.vending.message.Money;

public class Safe {
    private SeparatedSafe bank_;
    private CoinStorage paybackStorage_;
    private static final Money JP_100_YEN = Money.of(100);
    private static final Money JP_500_YEN = Money.of(500);

    public Safe() {
        bank_ = new SeparatedSafe();
        bank_.addStorage(JP_100_YEN, 10);
        bank_.addStorage(JP_500_YEN, 0);
        paybackStorage_ = new CoinStorage();
    }

    public boolean available(Money amount) {
        if (!bank_.available(amount)) {
            return false;
        }

        if (amount.equals(JP_100_YEN)) {
            return true;
        }

        return bank_.canRefund(amount, JP_100_YEN);
    }

    public void storeToPaybackable(Money amount) {
        paybackStorage_.store(amount);
    }

    public Refunded refund() {
        return new Refunded(paybackStorage_.takeAll());
    }

    public Drink payoff(Drink drink, Money amount) {
        storeToPaybackable(bank_.take(drink.getValue(), amount));
        cache(amount);
        return drink;
    }

    private void cache(Money amount) {
        bank_.cache(amount);
    }
}

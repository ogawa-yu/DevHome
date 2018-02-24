package model.vending.message;

import lombok.Data;
import model.vending.DrinkKind;

import java.io.Serializable;

@SuppressWarnings("serial")
public @Data class Drink implements Serializable {
    private final DrinkKind kind;
    private final Money value;

    public Drink(DrinkKind kind) {
        this.kind = kind;
        this.value = Money.of(100);
    }

    public Money difference(Money money) {
        return money.difference(value);
    }

    public static Drink empty() {
        return new Drink(DrinkKind.UNDEF);
    }
}

package model.vending.message;

import lombok.Data;
import model.vending.DrinkKind;

import java.io.Serializable;

@SuppressWarnings("serial")
public @Data class Drink implements Serializable {
    private DrinkKind kind;

    public Drink(DrinkKind kind) {
        this.kind = kind;
    }

    public static Drink empty() {
        return new Drink(DrinkKind.UNDEF);
    }
}

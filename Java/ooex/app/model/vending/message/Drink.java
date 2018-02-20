package model.vending.message;

import lombok.Value;

import java.io.Serializable;

@SuppressWarnings("serial")
@Value(staticConstructor="of")
public class Drink implements Serializable {

    public static final int COKE = 0;
    public static final int DIET_COKE = 1;
    public static final int TEA = 2;
    public static final int EMPTY = -1;
    private final int kind;

    public static Drink empty() {
        return new Drink(EMPTY);
    }
}

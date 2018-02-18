package model.vending.message;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Value implements Serializable {
    private final int value_;

    public static Value of(int value) {
        return new Value(value);
    }

    private Value(int value) {
        value_ = value;
    }

    public int getValue() {
        return value_;
    }
}

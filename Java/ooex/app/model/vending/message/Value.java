package model.vending.message;

public class Value {
    private int value_;

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

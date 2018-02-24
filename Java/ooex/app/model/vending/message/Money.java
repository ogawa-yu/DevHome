package model.vending.message;

import lombok.Data;

import java.io.Serializable;

@SuppressWarnings("serial")
@Data(staticConstructor = "of")
public class Money implements Serializable {
    private final int value;

    public boolean isValid() {
        return value > 0;
    }

    public Money difference(Money other) {
        return Money.of(value - other.value);
    }

    public int numberOfDifference(Money other) {
        return (value / other.value) - 1;
    }
}

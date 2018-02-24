package model.vending.coin;

import lombok.Data;
import model.vending.message.Money;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

@Data
public class Refunded implements Serializable {
    private final List<Money> paybacks;

    public static Refunded of(Money ... paybacks) {
        return new Refunded(Arrays.asList(paybacks));
    }

    public Refunded(List<Money> pb) {
        paybacks = pb;
    }

    public int valueOf() {
        return paybacks.stream()
                .mapToInt(Money::getValue)
                .sum();
    }
}

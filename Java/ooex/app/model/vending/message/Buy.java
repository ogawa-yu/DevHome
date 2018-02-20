package model.vending.message;

import lombok.AllArgsConstructor;
import lombok.Value;

import java.io.Serializable;

@SuppressWarnings("serial")
@Value(staticConstructor = "of")
public class Buy implements Serializable{
    private final int drinkType;
    private final int amount;
}

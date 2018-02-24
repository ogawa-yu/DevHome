package model.vending.message;

import lombok.Data;
import model.vending.DrinkKind;

import java.io.Serializable;

@SuppressWarnings("serial")
@Data(staticConstructor = "of")
public class Buy implements Serializable {
    private final DrinkKind drinkType;
    private final Money amount;
}

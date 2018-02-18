package model.vending.message;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Buy implements Serializable{
    private final int drinkType_;
    private final int discount_;

    public Buy(int drinkType, int discount) {
        drinkType_ = drinkType;
        discount_ = discount;
    }

    public int getDrinkType() {
        return drinkType_;
    }

    public int getDiscount() {
        return discount_;
    }
}

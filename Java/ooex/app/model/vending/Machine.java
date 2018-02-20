package model.vending;

import akka.actor.AbstractActor;
import model.vending.message.AllDrinks;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Money;
import model.vending.message.Refund;

import java.util.Arrays;
import java.util.List;

public class Machine extends AbstractActor {
    int quantityOfCoke = 5; // コーラの在庫数
    int quantityOfDietCoke = 5; // ダイエットコーラの在庫数
    int quantityOfTea = 5; // お茶の在庫数
    int numberOf100Yen = 10; // 100円玉の在庫
    int charge = 0; // お釣り

    /**
     * ジュースを購入する.
     *
     * @param i           投入金額. 100円と500円のみ受け付ける.
     * @param kindOfDrink ジュースの種類.
     *                    コーラ({@code Drink.COKE}),ダイエットコーラ({@code Drink.DIET_COKE},お茶({@code Drink.TEA})が指定できる.
     * @return 指定したジュース. 在庫不足や釣り銭不足で買えなかった場合は {@code null} が返される.
     */
    public Drink buy(int i, int kindOfDrink) {
        // 決められたジュースの種類以外は購入できない。
        if ((kindOfDrink != Drink.COKE) &&
                (kindOfDrink != Drink.DIET_COKE) &&
                (kindOfDrink != Drink.TEA)) {
            charge += i;
            return Drink.empty();
        }

        // 100円と500円だけ受け付ける
        if ((i != 100) && (i != 500)) {
            charge += i;
            return Drink.empty();
        }

        if ((kindOfDrink == Drink.COKE) && (quantityOfCoke == 0)) {
            charge += i;
            return Drink.empty();
        } else if ((kindOfDrink == Drink.DIET_COKE) && (quantityOfDietCoke == 0)) {
            charge += i;
            return Drink.empty();
        } else if ((kindOfDrink == Drink.TEA) && (quantityOfTea == 0)) {
            charge += i;
            return Drink.empty();
        }

        // 釣り銭不足
        if (i == 500 && numberOf100Yen < 4) {
            charge += i;
            return Drink.empty();
        }

        if (i == 100) {
            // 100円玉を釣り銭に使える
            numberOf100Yen++;
        } else if (i == 500) {
            // 400円のお釣り
            charge += (i - 100);
            // 100円玉を釣り銭に使える
            numberOf100Yen -= (i - 100) / 100;
        }

        if (kindOfDrink == Drink.COKE) {
            quantityOfCoke--;
        } else if (kindOfDrink == Drink.DIET_COKE) {
            quantityOfDietCoke--;
        } else {
            quantityOfTea--;
        }

        return Drink.of(kindOfDrink);
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder().match(AllDrinks.class, msg -> {
            List<Integer> drinks = Arrays.asList(Drink.COKE, Drink.DIET_COKE, Drink.TEA);
            sender().tell(drinks, self());
        }).match(Buy.class, msg -> {
            Drink drink = buy(msg.getAmount(), msg.getDrinkType());
            sender().tell(drink, self());
        }).match(Refund.class, msg -> {
            sender().tell(Money.of(charge), self());
            charge = 0;
        }).build();
    }
}

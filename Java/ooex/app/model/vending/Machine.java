package model.vending;

import akka.actor.AbstractActor;
import model.vending.message.AllDrinks;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Money;
import model.vending.message.Refund;

public class Machine extends AbstractActor {
    private DrinkServer storage_;
    int numberOf100Yen = 10; // 100円玉の在庫
    int charge = 0; // お釣り

    Machine() {
        storage_ = new DrinkServer();
    }
    /**
     * ジュースを購入する.
     *
     * @param amount      投入金額. 100円と500円のみ受け付ける.
     * @param kindOfDrink ジュースの種類.
     *                    コーラ({@code DrinkKind.COKE}),ダイエットコーラ({@code DrinkKind.DIET_COKE},お茶({@code DrinkKind.TEA})が指定できる.
     * @return 指定したジュース. 在庫不足や釣り銭不足で買えなかった場合は {@code null} が返される.
     */
    public Drink buy(int amount, int kindOfDrink) {
        if (DrinkKind.notFound(kindOfDrink)) {
            charge += amount;
            return Drink.empty();
        }

        // 100円と500円だけ受け付ける
        if ((amount != 100) && (amount != 500)) {
            charge += amount;
            return Drink.empty();
        }

        DrinkKind kind = DrinkKind.fromType(kindOfDrink);
        if (!storage_.stored(kind)) {
            charge += amount;
            return Drink.empty();
        }

        // 釣り銭不足
        if (amount == 500 && numberOf100Yen < 4) {
            charge += amount;
            return Drink.empty();
        }

        if (amount == 100) {
            // 100円玉を釣り銭に使える
            numberOf100Yen++;
        } else if (amount == 500) {
            // 400円のお釣り
            charge += (amount - 100);
            // 100円玉を釣り銭に使える
            numberOf100Yen -= (amount - 100) / 100;
        }
        DrinkHolder holder =  storage_.select(kind);
        return holder.take();
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder().match(AllDrinks.class, msg -> {
            sender().tell(DrinkKind.valueList(), self());
        }).match(Buy.class, msg -> {
            Drink drink = buy(msg.getAmount(), msg.getDrinkType().getType());
            sender().tell(drink, self());
        }).match(Refund.class, msg -> {
            sender().tell(Money.of(charge), self());
            charge = 0;
        }).build();
    }
}

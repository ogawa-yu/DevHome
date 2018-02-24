package model.vending;

import akka.actor.AbstractActor;
import model.vending.coin.Safe;
import model.vending.drink.DrinkHolder;
import model.vending.drink.DrinkServer;
import model.vending.message.AllDrinks;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Money;
import model.vending.message.Refund;

public class Machine extends AbstractActor {
    private DrinkServer storage_ = new DrinkServer();
    private Safe safe_ = new Safe();
    /**
     * 飲み物を購入する.
     *
     * @param amount      投入金額. 100円と500円のみ受け付ける.
     * @param kindOfDrink 飲み物の種類.
     * @return 指定した飲み物. 在庫不足や釣り銭不足で買えなかった場合は空のDrink が返される.
     */
    private Drink buy(Money amount, DrinkKind kindOfDrink) {
        if (storage_.stockout(kindOfDrink) || !safe_.available(amount)) {
            safe_.storeToPaybackable(amount);
            return Drink.empty();
        }
        DrinkHolder holder =  storage_.select(kindOfDrink);
        Drink drink = holder.take();
        return safe_.payoff(drink, amount);
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder().match(AllDrinks.class, msg ->
            sender().tell(DrinkKind.valueList(), self())
        ).match(Buy.class, msg -> {
            Money amount = msg.getAmount();
            DrinkKind kind = msg.getDrinkType();
            sender().tell(buy(amount, kind), self());
        }).match(Refund.class, msg ->
            sender().tell(safe_.refund(), self())
        ).build();
    }
}

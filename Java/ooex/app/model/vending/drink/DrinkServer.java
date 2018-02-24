package model.vending.drink;

import model.vending.DrinkKind;
import model.vending.drink.DrinkHolder;
import model.vending.message.Drink;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class DrinkServer {
    private final Map<DrinkKind, DrinkHolder> server_;
    private static final DrinkHolder EMPTY_HOLDER = new DrinkHolder();

    public DrinkServer() {
        server_ = new HashMap<>();
        Arrays.stream(DrinkKind.values())
                .filter(kind -> kind != DrinkKind.UNDEF)
                .forEach(kind -> {
                    DrinkHolder holder = new DrinkHolder();
                    holder.charge(new Drink(kind), 5);
                    server_.put(kind, holder);
                });
    }

    public boolean stockout(DrinkKind kind) {
        if (!server_.containsKey(kind)) {
            return true;
        }

        DrinkHolder holder = server_.get(kind);
        return holder.stockout();
    }

    public DrinkHolder select(DrinkKind kind) {
        return server_.getOrDefault(kind, EMPTY_HOLDER);
    }
}

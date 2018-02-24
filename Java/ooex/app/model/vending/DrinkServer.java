package model.vending;

import model.vending.message.Drink;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

class DrinkServer {
    private final Map<DrinkKind, DrinkHolder> server_;

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

    public boolean stored(DrinkKind kind) {
        if (!server_.containsKey(kind)) {
            return false;
        }

        DrinkHolder holder = server_.get(kind);
        return holder.hasStock();
    }

    public DrinkHolder select(DrinkKind kind) {
        return server_.get(kind);
    }
}

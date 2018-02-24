package controllers;

import akka.actor.ActorRef;
import com.fasterxml.jackson.databind.JsonNode;
import model.actor.Messaging;
import model.vending.message.AllDrinks;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Money;
import model.vending.message.Refund;
import modules.ActorModule;
import play.libs.Json;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;
import javax.inject.Named;

public class VendingMachineController extends Controller{
    @Inject
    @Named(ActorModule.VENDING_MACHINE_ACTOR)
    ActorRef vendingMachine_;

    public Result allDrinks() throws Exception {
        return ok(messagingAsJson(Object.class, new AllDrinks()));
    }

    public Result buy() throws Exception {
        JsonNode json = request().body().asJson();
        if(json == null) {
            return badRequest("Expecting Json data");
        }
        Buy body = Buy.of(json.findPath("drinkType").intValue(), json.findPath("amount").intValue());
        return ok(messagingAsJson(Drink.class, body));
    }

    public Result refund() throws Exception {
        return ok(messagingAsJson(Money.class, new Refund()));
    }

    private <T> JsonNode messagingAsJson(Class<?> type, T message) throws Exception {
        return Json.toJson(Messaging.wait(type, message, vendingMachine_));
    }
}

package controllers;

import akka.actor.ActorRef;
import akka.pattern.Patterns;
import akka.util.Timeout;
import javax.inject.Inject;
import javax.inject.Named;

import com.fasterxml.jackson.databind.JsonNode;
import model.vending.message.AllDrinks;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Refund;
import model.vending.message.Money;
import modules.ActorModule;
import play.libs.Json;
import play.mvc.BodyParser;
import play.mvc.Controller;
import play.mvc.Result;
import scala.concurrent.Await;
import scala.concurrent.duration.Duration;
import scala.concurrent.duration.FiniteDuration;
import scala.reflect.ClassTag;

import java.util.concurrent.TimeUnit;

public class VendingMachineController extends Controller{
    @Inject @Named(ActorModule.VENDING_MACHINE_ACTOR)
    private ActorRef vendingMachine_;

    public Result allDrinks() throws Exception {
        return ok(Json.toJson(wait(Object.class, new AllDrinks())));
    }

    public Result buy() throws Exception {
        JsonNode json = request().body().asJson();
        if(json == null) {
            return badRequest("Expecting Json data");
        }
        Buy body = Buy.of(json.findPath("drinkType").intValue(), json.findPath("amount").intValue());
        return ok(Json.toJson(wait(Drink.class, body)));
    }

    public Result refund() throws Exception {
        return ok(Json.toJson(wait(Money.class, new Refund())));
    }

    private Object wait(Class<?> clazz, Object message) throws Exception {
        FiniteDuration duration = Duration.create(5, TimeUnit.SECONDS);
        return Await.result(
                Patterns.ask(vendingMachine_, message, new Timeout(duration))
                        .mapTo(new ClassTag() {
                            @Override
                            public Class<?> runtimeClass() {
                                return clazz;
                            }}),
                duration);
    }
}

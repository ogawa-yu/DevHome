package controllers;

import akka.actor.ActorRef;
import akka.pattern.Patterns;
import akka.util.Timeout;
import javax.inject.Inject;
import javax.inject.Named;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Refund;
import model.vending.message.Value;
import modules.ActorModule;
import play.libs.Json;
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

    public Result buy(int discount, int type) throws Exception {
        return ok(Json.toJson(wait(Drink.class, new Buy(type, discount))));
    }

    public Result refund() throws Exception {
        return ok(Json.toJson(wait(Value.class, new Refund())));
    }

    private Object wait(Class<?> clazz, Object message) throws Exception {
        FiniteDuration duration = Duration.create(5, TimeUnit.SECONDS);
        return Await.result(
                Patterns.ask(vendingMachine_, message, new Timeout(duration))
                        .mapTo(new ClassTag<Drink>() {
                            @Override
                            public Class<?> runtimeClass() {
                                return clazz;
                            }}),
                duration);
    }
}

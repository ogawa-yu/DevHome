package controllers;

import akka.actor.ActorRef;
import akka.pattern.Patterns;
import akka.util.Timeout;
import com.google.inject.Inject;
import com.google.inject.name.Named;
import model.vending.message.Buy;
import model.vending.message.Drink;
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
    @Inject
    @Named(ActorModule.VENDING_MACHINE_ACTOR)
    ActorRef vendingMachine_;

    public Result buy() throws Exception {
        FiniteDuration duration = Duration.create(5, TimeUnit.SECONDS);
        Object drink = Await.result(
                Patterns.ask(vendingMachine_, new Buy(100, Drink.COKE), new Timeout(duration))
                        .mapTo(new ClassTag<Drink>() {
                            @Override
                            public Class<?> runtimeClass() {
                                return Drink.class;
                            }
                        }),
                duration);
        return ok(Json.toJson(drink));
    }
}

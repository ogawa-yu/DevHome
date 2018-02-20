package model.vending;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.actor.Props;
import akka.testkit.javadsl.TestKit;
import model.vending.message.Buy;
import model.vending.message.Drink;
import model.vending.message.Money;
import model.vending.message.Refund;
import org.junit.AfterClass;
import org.junit.Test;

public class MachineTest extends TestKit{
    private static ActorSystem system_ = ActorSystem.create("TestSystem");

    public MachineTest() {
        super(system_);
    }

    @AfterClass
    public static void teardownClass() {
        system_.terminate();
    }

    @Test
    public void test_buy_case_zero_yen() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_zero_count");

        testee.tell(new Buy(Drink.COKE, 0), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_less_money() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_less_money");

        testee.tell(new Buy(Drink.COKE, 99), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_invalid_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_invalid_amount");

        testee.tell(new Buy(Drink.COKE, 150), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_invalid_drink_kind() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_invalid_drink_kind");

        testee.tell(new Buy(-9999, 100), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(100));
    }

    @Test
    public void test_buy_case_coke() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_coke");

        testee.tell(new Buy(Drink.COKE, 100), getRef());
        expectMsg(Drink.of(Drink.COKE));
    }

    @Test
    public void test_buy_case_tea() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_tea");

        testee.tell(new Buy(Drink.TEA, 100), getRef());
        expectMsg(Drink.of(Drink.TEA));
    }

    @Test
    public void test_buy_case_diet_coke() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_diet_coke");

        testee.tell(new Buy(Drink.DIET_COKE, 100), getRef());
        expectMsg(Drink.of(Drink.DIET_COKE));
    }

    @Test
    public void test_refund_case_put_zero_yen() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_put_zero_yen");

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(0));
    }

    @Test
    public void test_refund_case_after_buy_juice_less_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_after_buy_juice_less_amount");

        testee.tell(new Buy(Drink.COKE, 99), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(99));
    }

    @Test
    public void test_refund_case_after_buy_juice_just_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_after_buy_juice_just_amount");

        testee.tell(new Buy(Drink.DIET_COKE, 100), getRef());
        expectMsg(Drink.of(Drink.DIET_COKE));

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(0));
    }

    @Test
    public void test_refund_case_after_buy_juice_more_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_after_buy_juice_more_amount");

        testee.tell(new Buy(Drink.TEA, 500), getRef());
        expectMsg(Drink.of(Drink.TEA));

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(400));
    }

    @Test
    public void test_refund_case_invalid_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_invalid_amount");

        testee.tell(new Buy(Drink.COKE, 150), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(150));
    }

}

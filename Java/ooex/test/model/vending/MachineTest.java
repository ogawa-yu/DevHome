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

import java.util.stream.IntStream;

/**
 * 下記の仕様を確認する <br>
 * - 購入できるのは コーラ・ダイエットコーラ・紅茶のみ。 <br>
 * - 購入に利用できる貨幣は500円・100円のみ。 <br>
 * - 購入に使用しなかった貨幣は払い戻すことができる。 <br>
 * - 釣り銭が不足している場合、購入することができない。
 */
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

        testee.tell(Buy.of(Drink.COKE, 0), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_less_money() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_less_money");

        testee.tell(Buy.of(Drink.COKE, 99), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_invalid_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_invalid_amount");

        testee.tell(Buy.of(Drink.COKE, 150), getRef());
        expectMsg(Drink.empty());
    }

    @Test
    public void test_buy_case_invalid_drink_kind() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_invalid_drink_kind");

        testee.tell(Buy.of(-9999, 100), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(100));
    }

    @Test
    public void test_buy_case_coke() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_coke");

        testee.tell(Buy.of(Drink.COKE, 100), getRef());
        expectMsg(Drink.of(Drink.COKE));
    }

    @Test
    public void test_buy_case_tea() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_tea");

        testee.tell(Buy.of(Drink.TEA, 100), getRef());
        expectMsg(Drink.of(Drink.TEA));
    }

    @Test
    public void test_buy_case_diet_coke() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_diet_coke");

        testee.tell(Buy.of(Drink.DIET_COKE, 100), getRef());
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

        testee.tell(Buy.of(Drink.COKE, 99), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(99));
    }

    @Test
    public void test_refund_case_after_buy_juice_just_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_after_buy_juice_just_amount");

        testee.tell(Buy.of(Drink.DIET_COKE, 100), getRef());
        expectMsg(Drink.of(Drink.DIET_COKE));

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(0));
    }

    @Test
    public void test_refund_case_after_buy_juice_more_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_after_buy_juice_more_amount");

        testee.tell(Buy.of(Drink.TEA, 500), getRef());
        expectMsg(Drink.of(Drink.TEA));

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(400));
    }

    @Test
    public void test_refund_case_invalid_amount() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_refund_case_invalid_amount");

        testee.tell(Buy.of(Drink.COKE, 150), getRef());
        expectMsg(Drink.empty());

        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(150));
    }

    @Test
    public void test_buy_case_poor_change() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_poor_change");

        testee.tell(Buy.of(Drink.COKE, 500), getRef());
        expectMsg(Drink.of(Drink.COKE));
        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(400));

        testee.tell(Buy.of(Drink.COKE, 500), getRef());
        expectMsg(Drink.of(Drink.COKE));
        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(400));

        testee.tell(Buy.of(Drink.COKE, 500), getRef());
        expectMsg(Drink.empty());
        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(500));
    }

    @Test
    public void test_buy_case_poor_stock() {
        ActorRef testee = getSystem().actorOf(Props.create(Machine.class), "test_buy_case_poor_stock");

        test_poor_stock(testee, Drink.COKE);
        test_poor_stock(testee, Drink.DIET_COKE);
        test_poor_stock(testee, Drink.TEA);
    }

    private void test_poor_stock(ActorRef testee, int kind) {
        IntStream.range(0, 5).forEach(i ->{
            testee.tell(Buy.of(kind, 100), getRef());
            expectMsg(Drink.of(kind));
        });
        testee.tell(Buy.of(kind, 100), getRef());
        expectMsg(Drink.empty());
        
        testee.tell(new Refund(), getRef());
        expectMsg(Money.of(100));

    }
}

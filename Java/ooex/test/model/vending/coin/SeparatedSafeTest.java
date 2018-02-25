package model.vending.coin;

import model.vending.message.Money;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

public class SeparatedSafeTest {
    @Test
    public void test_unhasStorage() {
        SeparatedSafe testee = new SeparatedSafe();
        assertFalse(testee.hasStorage(Money.of(0)));

        testee.addStorage(Money.of(100), 0);
        assertTrue(testee.hasStorage(Money.of(100)));
    }

    @Test
    public void test_hasStorage() {
        SeparatedSafe testee = new SeparatedSafe();
        testee.addStorage(Money.of(100), 1);

        assertTrue(testee.hasStorage(Money.of(100)));
    }

    @Test(expected=IllegalArgumentException.class)
    public void test_cache_notFoundStorage() {
        SeparatedSafe testee = new SeparatedSafe();
        testee.addStorage(Money.of(100), 1);

        testee.cache(Money.of(200));
    }

    @Test
    public void test_cache() {
        SeparatedSafe testee = new SeparatedSafe();
        testee.addStorage(Money.of(100), 1);

        testee.cache(Money.of(100));
        Money actual = testee.take(Money.of(100), Money.of(200));
        assertThat(actual, is(Money.of(100)));
        assertTrue(testee.hasStorage(Money.of(100)));
    }

    @Test
    public void test_canRefund() {
        SeparatedSafe testee = new SeparatedSafe();
        testee.addStorage(Money.of(100), 5);

        assertTrue(testee.canRefund(Money.of(100), Money.of(100)));
        assertTrue(testee.canRefund(Money.of(200), Money.of(100)));
        assertTrue(testee.canRefund(Money.of(300), Money.of(100)));
        assertTrue(testee.canRefund(Money.of(400), Money.of(100)));
        assertTrue(testee.canRefund(Money.of(500), Money.of(100)));
        assertTrue(testee.canRefund(Money.of(600), Money.of(100)));
        assertFalse(testee.canRefund(Money.of(700), Money.of(100)));
    }

    @Test
    public void test_take() {
        SeparatedSafe testee = new SeparatedSafe();
        testee.addStorage(Money.of(100), 5);

        {
            Money actual = testee.take(Money.of(100), Money.of(200));
            assertThat(actual, is(Money.of(100)));
        }
        {
            Money actual = testee.take(Money.of(100), Money.of(200));
            assertThat(actual, is(Money.of(100)));
        }
        {
            Money actual = testee.take(Money.of(100), Money.of(400));
            assertThat(actual, is(Money.of(300)));
        }
        assertTrue(testee.canRefund(Money.of(100), Money.of(100)));
        assertFalse(testee.canRefund(Money.of(200), Money.of(100)));
    }
}

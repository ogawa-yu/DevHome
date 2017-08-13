import java.util.*;
import java.math.BigInteger;

class Factorial {
    public static BigInteger factorial(final BigInteger number) {
        return factorialRec(BigInteger.ONE, number).invoke();
    }

    private static TailCall<BigInteger> factorialRec(final BigInteger factorial, final BigInteger number) {
        if (number.equals(BigInteger.ONE)) {
            return TailCalls.done(factorial);
        }
        else {
            return TailCalls.call(() -> factorialRec(factorial.multiply(number), number.subtract(BigInteger.ONE)));
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(Factorial.factorial(new BigInteger(args[0])));
        } catch (StackOverflowError e) {
            System.out.println(e);
        }
    }
}

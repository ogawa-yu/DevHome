import java.util.*;

class Factorial {
    public static long factorial(final long number) {
        return factorialRec(1, number).invoke();
    }

    public static TailCall<Long> factorialRec(final long factorial, final long number) {
        if (number == 1) {
            return TailCalls.done(factorial);
        }
        else {
            return TailCalls.call(() -> factorialRec(factorial * number, number - 1));
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(Factorial.factorial(new Long(args[0])));
        } catch (StackOverflowError e) {
            System.out.println(e);
        }
    }
}

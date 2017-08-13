import java.util.*;

class Factorial {
    public static long factorialRec(final long number) {
        if (number == 1) {
            return number;
        }
        else {
            return number * factorialRec(number - 1);
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(Factorial.factorialRec(new Long(args[0])));
        } catch (StackOverflowError e) {
            System.out.println(e);
        }
    }
}

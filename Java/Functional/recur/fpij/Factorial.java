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
        System.out.println(Factorial.factorialRec(new Long(args[0])));
    }
}

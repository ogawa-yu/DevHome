import java.util.*;
import java.util.function.Predicate;
import java.util.function.Function;

class PickElementMulti {

    private final Predicate<String> pred_;

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");
        final Function<String, Predicate<String>> startsWithLetter =
            (String letter) -> {
                Predicate<String> checkStarts = (String name) -> name.startsWith(letter);
                return checkStarts;
            };
        final Predicate<String> startWithN = startsWithLetter.apply("N");
        final Predicate<String> startWithB = startsWithLetter.apply("B");

        System.out.println(count(startWithN).of(friends));
        System.out.println(count(startWithB).of(friends));
        System.out.println(count(startWithN).of(editors));
        System.out.println(count(startWithN).of(comrades));
    }

    private PickElementMulti(final Predicate<String> pred) {
        pred_ = pred;
    }

    static public PickElementMulti count(final Predicate<String> pred) {
        PickElementMulti finder = new PickElementMulti(pred);
        return finder;
    }

    long of(final List<String> names) {
        return names.stream().filter(pred_).count();
    }
}
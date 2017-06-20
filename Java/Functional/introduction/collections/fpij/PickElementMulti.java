import java.util.*;
import java.util.function.Predicate;

class PickElementMulti {

    private final Predicate<String> pred_;

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");
        final Predicate<String> startWithN = startsWith("N");
        final Predicate<String> startWithB = startsWith("B");
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

    static public Predicate<String> startsWith(final String letter) {
        return name -> name.startsWith(letter);
    }
    
    long of(final List<String> names) {
        return names.stream().filter(pred_).count();
    }

}
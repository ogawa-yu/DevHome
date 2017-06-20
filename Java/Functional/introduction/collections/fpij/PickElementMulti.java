import java.util.*;

class PickElementMulti {

    private final java.util.function.Predicate<String> pred_;

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");
        final java.util.function.Predicate<String> startWithN = name -> name.startsWith("N");
        
        System.out.println(count(startWithN).of(friends));
        System.out.println(count(startWithN).of(editors));
        System.out.println(count(startWithN).of(comrades));
    }

    private PickElementMulti(final java.util.function.Predicate<String> pred) {
        pred_ = pred;
    }

    static public PickElementMulti count(final java.util.function.Predicate<String> pred) {
        PickElementMulti finder = new PickElementMulti(pred);
        return finder;
    }

    long of(final List<String> names) {
        return names.stream().filter(pred_).count();
    }
}
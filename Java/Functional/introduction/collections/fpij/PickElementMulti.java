import java.util.*;
import java.util.function.Predicate;
import java.util.function.Function;
import java.util.function.BiFunction;
import java.util.stream.Stream;

class PickElementMulti {

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");
        final BiFunction<List<String>, String, Long> countNameWith =
            (names, letter) -> names.stream().filter(name -> name.startsWith(letter)).count();
            
        System.out.println(countNameWith.apply(friends, "N"));
        System.out.println(countNameWith.apply(friends, "B"));
        System.out.println(countNameWith.apply(editors, "N"));
        System.out.println(countNameWith.apply(comrades, "N"));
    }
}

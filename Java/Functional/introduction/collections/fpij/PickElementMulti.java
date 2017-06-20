import java.util.*;
import java.util.function.Predicate;
import java.util.function.Function;
import java.util.function.ToLongBiFunction;
import java.util.stream.Stream;

class PickElementMulti {

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");
        final ToLongBiFunction<List<String>, String> countNameWith =
            (names, letter) -> names.stream().filter(name -> name.startsWith(letter)).count();
            
        System.out.println(countNameWith.applyAsLong(friends, "N"));
        System.out.println(countNameWith.applyAsLong(friends, "B"));
        System.out.println(countNameWith.applyAsLong(editors, "N"));
        System.out.println(countNameWith.applyAsLong(comrades, "N"));
    }
}

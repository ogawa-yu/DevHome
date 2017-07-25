import java.util.*;

public class PickAnElement {
    static final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");

    public static void main(String[] args) {
        System.out.println(findData(1, Arrays.asList(2, 3, 4, 1, 5)).orElse(new Integer(-1)));
        
    }

    public static void pickElemet(List<String> names, String startingLetter) {
        final Optional<String> foundName = names.stream().filter(n->n.startsWith(startingLetter)).findFirst();
        System.out.println(String.format("A name starting with %s: %s",
        startingLetter, foundName.orElse("No name found")));
    }

    public static Optional<Integer> findData(int target, List<Integer> source) {
        return source.stream().filter(i -> i == target).findFirst();
    }

}
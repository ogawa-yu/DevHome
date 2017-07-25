import java.util.*;

public class PickAnElement {
    static final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");

    public static void main(String[] args) {
        Optional<Integer> result = findData(1, Arrays.asList(2, 3, 4, 5));
        // ここでoptionalに値は入ってきていないので、下のコードブロックは実行されない。
        result.ifPresent(data -> System.out.println(data));
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
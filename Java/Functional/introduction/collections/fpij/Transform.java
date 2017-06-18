import java.util.*;

class Transform {
    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> uppercaseNames = new ArrayList<>();

        friends.forEach((name) -> uppercaseNames.add(name.toUpperCase()));
        uppercaseNames.forEach(System.out::println);
    }
}
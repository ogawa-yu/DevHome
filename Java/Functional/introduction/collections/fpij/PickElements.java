import java.util.*;

class PickElements {
    static final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");

    public static void main(String[] args) {
        final List<String> startWithN = friends.stream()
                            .filter(name -> name.startsWith("N"))
                            .collect(java.util.stream.Collectors.toList());
        System.out.println(startWithN);
    }
}
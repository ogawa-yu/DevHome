import java.util.*;

class Iteration {
    public static void main(String[] args) {
        final List<String> friends = 
            Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        friends.forEach((final String name) -> System.out.println(name));
    }

}
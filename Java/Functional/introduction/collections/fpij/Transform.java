import java.util.*;

class Transform {
    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        friends.stream().map(name -> name.toUpperCase())
                        .forEach(name -> System.out.print(name + " "));
        System.out.println(); // 改行のため
    }
}

import java.util.*;

class PickElements {
    static final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");

    public static void main(String[] args) {
        final List<String> startWithN = new ArrayList<>();
        for (String name : friends) {
            if (name.startsWith("N")) {
                startWithN.add(name);
            }
        }
        System.out.println(startWithN);
    }
}
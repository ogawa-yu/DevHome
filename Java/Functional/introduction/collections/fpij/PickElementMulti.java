import java.util.*;

class PickElementMulti {

    public static void main(String[] args) {
        final List<String> friends = Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott");
        final List<String> editors = Arrays.asList("Brian", "Jackie", "Jone", "Mike");
        final List<String> comrades = Arrays.asList("Kate", "Ken", "Nick", "Paula", "Zach");

        System.out.println(countStartN(friends));
        System.out.println(countStartN(editors));
        System.out.println(countStartN(comrades));
    }

    static long countStartN(final List<String> names) {
        return names.stream().filter(name -> name.startsWith("N")).count();
    }
}
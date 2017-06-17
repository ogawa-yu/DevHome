import java.util.*;

class Cities {
    public static void main(String[] args) {
        List<String> cities = new ArrayList<>();
        cities.add("Chicago");
        System.out.println("Found Chicago?:" + cities.contains("Chicago"));
    }

}
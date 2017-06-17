import java.util.*;

class Cities {
    public static void main(String[] args) {
        boolean found = false;
        List<String> cities = new ArrayList<>();
        cities.add("Chicago");

        for (String city : cities) {
            if (city.equals("Chicago")) {
                found = true;
                break;
            }
        }

        System.out.println("Found Chicago?:" + cities.contains("Chicago"));
    }

}
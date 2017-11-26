import java.util.*;
import java.util.stream.*;

class toMapTest {
    private static class Sample {
        private int valueInt_;
        private String valueStr_;
        public Sample(int valueInt, String valueStr) {
            valueInt_ = valueInt;
            valueStr_ = valueStr;
        }

        public int getValueInt() {
            return valueInt_;
        }

        public String getValueStr() {
            return valueStr_;
        }
    }

    public static void main(String[] args) {
        List<Sample> sampleList = new ArrayList<>();
        sampleList.add(new Sample(1, "test-a"));
        sampleList.add(new Sample(2, "test-b"));
        sampleList.add(new Sample(10, "test-c"));
        sampleList.add(new Sample(-1, "untest-a"));
        sampleList.add(new Sample(-2, "untest-b"));
        sampleList.add(new Sample(1, "test-d"));
        sampleList.add(new Sample(1, "test-e"));

        Map<Integer, List<String>> result =
        sampleList
            .stream()
            .collect(
                Collectors.toMap(
                    Sample::getValueInt,
                    s -> Arrays.asList(s.getValueStr()),
                    (s, a) -> Stream.concat(s.stream(), a.stream())
                        .collect(
                            Collectors.toCollection(
                                () -> new ArrayList<>(s.size() + a.size()))),
                    () -> new LinkedHashMap<>(sampleList.size())
                ));
        System.out.println("data size:" + result.size());
        System.out.println("v1:" + result.get(1).toString());
        System.out.println("v2:" + result.get(2).toString());
        System.out.println("v10:" + result.get(10).toString());
        System.out.println("v-1:" + result.get(-1).toString());
        System.out.println("v-2:" + result.get(-2).toString());
    }
}

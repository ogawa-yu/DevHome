package my;

import my.*;
import java.util.*;

public class SortTest {
    public static my.Info new_i(String f, String l, int a, String c, String n) {
        return new my.Info(new my.Person(f, l, a), new my.Section(c, n));
    }

    public static void main(String[] args) {
        List<my.Section> slist = new ArrayList<>();
        slist.add(new my.Section("A", "あああ"));
        slist.add(new my.Section("D", "えええ"));
        slist.add(new my.Section("C", "ううう"));
        slist.add(new my.Section("B", "いいい"));
        slist.stream().sorted(Comparator.comparing(s -> s.code()))
                      .forEach(System.out::println);
        System.out.println("==================");

        List<my.Info> iList = new ArrayList<>();
        iList.add(new_i("taro", "yamada", 30, "A", "あああ"));
        iList.add(new_i("sachiko", "sato", 27, "C", "ううう"));
        iList.add(new_i("ichiko", "suzuki", 40, "D", "えええ"));
        iList.add(new_i("eri", "ito", 20, "B", "えええ"));

        // Comparatorが型推論できないことがある。
        // そういう場合はラムダの引数に型を明示すれば強制できる。
        iList.stream().sorted(Comparator.comparing((my.Info t) -> t.getSection().name())
                                        .thenComparing(Comparator.comparing((my.Info t) -> t.getSection().code())))
        .forEach(System.out::println);
    }
}
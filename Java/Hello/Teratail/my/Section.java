package my;
import java.util.*;

public class Section {
    String code_;
    String name_;

    public Section(String code, String name) {
        code_ = code;
        name_ = name;
    }

    public String code() {
        return code_;
    }

    public String name() {
        return name_;
    }
    @Override
    public String toString() {
        return "Section{code:" + code() + ", name:" + name() + "}";
    }

    public static void main(String[] args) {
        Section testee = new Section("TPA", ":)");
        System.out.println(testee.toString());
    }
}
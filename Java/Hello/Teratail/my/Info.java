package my;

import java.util.*;
import my.Person;
import my.Section;

public class Info {
    my.Person person_;
    my.Section section_;

    public Info(my.Person person, my.Section section) {
        person_ = person;
        section_ = section;
    }

    public my.Person getPerson() {
        return person_;
    }

    public my.Section getSection() {
        return section_;
    }

    @Override
    public String toString() {
        return "Info{person:" + person_ + ", section:" + section_ + "}";
    }
}
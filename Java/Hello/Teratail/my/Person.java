package my;
import java.util.*;

public class Person {
    String firstName_;
    String lastName_;
    int age_;

    public Person(String firstName, String lastName, int age) {
        firstName_ = firstName;
        lastName_ = lastName;
        age_ = age;
    }

    public String firstName() {
        return firstName_;
    }

    public String lastName() {
        return lastName_;
    }

    public int age() {
        return age_;
    }

    @Override
    public String toString() {
        return "Person{first:" + firstName() + ", last:" + lastName() + ", age:" + age() + "}";
    }

    public static void main(String[] args) {
        Person testee = new Person("ogawa", "yusuke", 27);
        System.out.println(testee.toString());
    }
}
import java.util.*;

class Iteration {
    public static void main(String[] args) {
        Arrays.asList("Brian", "Nate", "Neal", "Raju", "Sara", "Scott")
        .forEach((name) -> System.out.println(name)); // ラムダ式は型推論してくれるが、その場合final修飾子はつかないので注意
    }

}

import java.util.*;
import java.math.BigDecimal;

class DiscountImperative {
    public static void main(String[] args) {
        final List<BigDecimal> PRICES = 
            Arrays.asList(
                    new BigDecimal("10"), new BigDecimal("30"), new BigDecimal("17"),
                    new BigDecimal("20"), new BigDecimal("15"), new BigDecimal("18"),
                    new BigDecimal("45"), new BigDecimal("12"),
                    new BigDecimal("10"), new BigDecimal("30"), new BigDecimal("17"),
                    new BigDecimal("20"), new BigDecimal("15"), new BigDecimal("18"),
                    new BigDecimal("45"), new BigDecimal("12")

            );
        final BigDecimal total = 
            PRICES.parallelStream()
                  .filter(price -> price.compareTo(BigDecimal.valueOf(20)) > 0)
                  .map(price -> price.multiply(BigDecimal.valueOf(0.9)))
                  .reduce(BigDecimal.ZERO, BigDecimal::add);
        final BigDecimal max =
            PRICES.stream().max(Comparator.naturalOrder()).get();
        final BigDecimal min =
            PRICES.stream().min(Comparator.naturalOrder()).get();

        System.out.println("Total prices is " + total.toString());
        System.out.println("Max price:" + max.toString());
        System.out.println("Min price:" + min.toString());
    }
}
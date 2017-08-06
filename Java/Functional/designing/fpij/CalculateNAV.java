import java.util.*;
import java.util.function.*;

public class CalculateNAV {
    private Function<String, BigDecimal> priceFinder_;

    public CalculateNav(Function<String, BigDecimal> priceFinder) {
        priceFinder_ = priceFinder;
    }

    public BigDecimal computeStockWorth(final String ticker, final int shares) {
        return priceFinder_.apply(ticker).multiply(BigDecimal.valueOf(shares));
    }


}
import java.util.*;
import java.util.function.*;
public class AssetUtil {
    public static int totalAssetValues(final List<Asset> assets,
                                       final Predicate<Asset> assetSelector) {
        return assets.stream()
                     .filter(assetSelector)
                     .mapToInt(asset -> asset.getValue())
                     .sum();
    }

    public static void main(String[] args) {
        List<Asset> assets =
            Arrays.asList(new Asset(Asset.AssetType.BOND, 1000),
                        new Asset(Asset.AssetType.BOND, 2000),
                        new Asset(Asset.AssetType.STOCK, 3000),
                        new Asset(Asset.AssetType.STOCK, 4000));
        System.out.println("Total all of assets: " + AssetUtil.totalAssetValues(assets, asset -> true));
        System.out.println("Total all of assets(Bond): " + AssetUtil.totalAssetValues(assets, asset -> asset.getType() == Asset.AssetType.BOND));
        System.out.println("Total all of assets(Stock): " + AssetUtil.totalAssetValues(assets, asset -> asset.getType() == Asset.AssetType.STOCK));
    }
}
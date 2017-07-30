import java.util.*;

public class AssetUtil {
    public static int totalAssetValues(final List<Asset> assets, Asset.AssetType type) {
        return assets.stream().mapToInt(a -> a.getType() == type ? a.getValue() : 0).sum();
    }

    public static void main(String[] args) {
        List<Asset> assets =
            Arrays.asList(new Asset(Asset.AssetType.BOND, 1000),
                        new Asset(Asset.AssetType.BOND, 2000),
                        new Asset(Asset.AssetType.STOCK, 3000),
                        new Asset(Asset.AssetType.STOCK, 4000));
        System.out.println("Total all of assets(Bond): " + AssetUtil.totalAssetValues(assets, Asset.AssetType.BOND));
        System.out.println("Total all of assets(Stock): " + AssetUtil.totalAssetValues(assets, Asset.AssetType.STOCK));
        
    }
}
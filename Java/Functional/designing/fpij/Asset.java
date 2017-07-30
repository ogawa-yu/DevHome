import java.util.*;

public class Asset {
    public enum AssetType {
        BOND,
        STOCK,
    };
    private final AssetType type_;
    private final int value_;
    public Asset(AssetType type, int value) {
        type_ = type;
        value_ = value;
    }
    
    public AssetType getType() {
        return type_;
    }

    public int getValue() {
        return value_;
    }
}
package model.vending.message;

import lombok.Value;
import java.io.Serializable;

@SuppressWarnings("serial")
@Value(staticConstructor="of")
public class Money implements Serializable {
    private final int value;
}

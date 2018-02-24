package model.vending.message;

import lombok.Data;

import java.io.Serializable;

@SuppressWarnings("serial")
@Data(staticConstructor = "of")
public class Money implements Serializable {
    private final int value;
}

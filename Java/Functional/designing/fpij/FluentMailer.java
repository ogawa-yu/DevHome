import java.util.*;
import java.util.function.*;

public class FluentMailer {
    private FluentMailer() {
    }

    public FluentMailer from(final String address) {
        // ...
        return this;
    }

    public FluentMailer to(String address){
        // ...
        return this;
    }

    public FluentMailer subject(String line) {
        // ...
        return this;
    }

    public FluentMailer body(String message) {
        // ...
        return this;
    }

    public static void send(final Consumer<FluentMailer> block) {
        final FluentMailer mailer = new FluentMailer();
        block.accept(mailer);
        System.out.println("Sending ...");
    }

    public static void main(String[] args) {
        FluentMailer.send(mailer -> mailer.from("my")
                                          .to("you")
                                          .subject("do you know?")
                                          .body("her name..."));
    }
}

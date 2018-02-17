package modules;

import com.google.inject.AbstractModule;
import model.vending.Machine;
import play.libs.akka.AkkaGuiceSupport;

public class ActorModule extends AbstractModule implements AkkaGuiceSupport {
    public static final String VENDING_MACHINE_ACTOR = "vending-machine-actor";

    @Override
    public void configure() {
        bindActor(Machine.class, VENDING_MACHINE_ACTOR);
    }
}

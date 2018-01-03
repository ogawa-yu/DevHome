package com.jgoticks;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.Props;
import akka.dispatch.OnSuccess;
import akka.event.Logging;
import akka.event.LoggingAdapter;
import akka.pattern.Patterns;
import akka.util.Timeout;
import lombok.Data;
import lombok.Value;
import scala.concurrent.Await;
import scala.concurrent.Future;
import scala.concurrent.duration.FiniteDuration;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static com.jgoticks.TicketSeller.Add;
import static com.jgoticks.TicketSeller.Ticket;

class BoxOffice extends AbstractActor {
    public static Props props() {
        return Props.create(BoxOffice.class, () -> new BoxOffice());
    }

    public static String name() {
        return ACTOR_NAME;
    }

    private static final String ACTOR_NAME = "boxOffice";
    private LoggingAdapter log = Logging.getLogger(getContext().getSystem(), this);

    private ActorRef createTicketSeller(String event) {
        return getContext().actorOf(TicketSeller.props(event), event);
    }

    public BoxOffice() {
    }

    private <T> void fold(String name, Consumer<ActorRef> isEmpty, Consumer<ActorRef> f) {
        Optional<ActorRef> child = getContext().findChild(name);
        if (!child.isPresent()) {
            isEmpty.accept(child.orElse(ActorRef.noSender()));
        } else {
            f.accept(child.get());
        }
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(CreateEvent.class, msg -> {
                    fold(msg.getName(),
                            empty -> msg.create(createTicketSeller(msg.getName()), getSender(), getSelf()),
                            child -> getSender().tell(new EventExists(), getSelf()));
                })
                .match(GetEvent.class, msg -> {
                    fold(msg.getName(),
                            empty -> getSender().tell(Optional.empty(), getSelf()),
                            child -> child.forward(new TicketSeller.GetEvent(), getContext()));
                })
                .match(GetEvents.class, msg -> {
                    final List<Event> eventList = new ArrayList<>();
                    getContext().getChildren().forEach(actor -> {
                         Future<Object> f = Patterns.ask(actor, new TicketSeller.GetEvent(),1000);
                         f.onSuccess(new OnSuccess<Object>() {
                                     @Override
                                     public void onSuccess(Object result) {
                                         Event ev = (Event)result;
                                         eventList.add(ev);
                                     }
                                 }, getContext().dispatcher());
                        FiniteDuration delay = FiniteDuration.create(5, "second");
                        Timeout timeout = new Timeout(delay);
                        try {
                            Await.ready(f, timeout.duration());
                        } catch(Exception e) {
                            log.error(e.toString());
                        }
                    });
                    sender().tell(new Events(eventList), self());
                })
                .build();
    }

    public static @Data class Event {
        private final String name;
        private final int tickets;
    }

    public static @Value(staticConstructor = "of") class Events {
        private List<Event> events;
    }

    public static @Data class CreateEvent {
        final private String name;
        final private int tickets;

        public void create(ActorRef seller, ActorRef sender, ActorRef receiver) {
            List<Ticket> newTickets =
                    IntStream.rangeClosed(1, tickets)
                            .mapToObj(Ticket::new)
                            .collect(Collectors.toList());
            seller.tell(new Add(newTickets), receiver);
            sender.tell(new EventCreated(new Event(name, tickets)), receiver);
        }

    }

    public static @Data class GetEvent {
        private final String name;
    }

    public static @Data class GetEvents {}

    public static @Data class GetTickets {
        private final String event;
        private final int tickets;
    }

    public static @Data class CancelEvent {
        private final String name;
    }

    interface EventResponse {}
    public static @Data class EventCreated implements EventResponse {
        private final Event event;
    }

    public static @Data class EventExists implements EventResponse {}
}

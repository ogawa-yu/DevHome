package com.jgoticks;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.PoisonPill;
import akka.actor.Props;
import akka.event.Logging;
import akka.event.LoggingAdapter;
import akka.http.impl.engine.ws.WebSocket;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import akka.japi.*;
import lombok.ToString;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class TicketSeller extends AbstractActor {
    private final static String ACTOR_TICKET_SELLER = "ticketSeller";

    private String event_;
    private List<Ticket> tickets_ = new ArrayList<>();
    private final LoggingAdapter log = Logging.getLogger(context().system(), this);

    public static Props props(String event) {
        return Props.create(TicketSeller.class, () -> new TicketSeller(event));
    }

    public static String name() {
        return ACTOR_TICKET_SELLER;
    }

    private TicketSeller(String event) {
        event_ = event;
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(Ticket.class, msg -> {})
                .match(Tickets.class, msg -> {})
                .match(Add.class, msg -> {
                    tickets_.addAll(msg.getTickets());
                })
                .match(Buy.class, msg -> {
                    if (tickets_.size() < msg.getTickets()) {
                        log.info("ticket count exceed. count=" + tickets_.size() + ", request=" + msg.getTickets());
                        getSender().tell(new Tickets(event_, Collections.emptyList()), getSelf());
                        return;
                    }
                    List<Ticket> entries = IntStream.range(0, msg.getTickets())
                            .mapToObj(i -> tickets_.remove(i))
                            .collect(Collectors.toList());
                    getSender().tell(new Tickets(event_, entries), getSelf());
                })
                .match(GetEvent.class, msg -> {
                    getSender().tell(new BoxOffice.Event(event_, tickets_.size()), getSelf());
                })
                .match(Cancel.class, msg -> {
                    getSelf().tell(PoisonPill.getInstance(), ActorRef.noSender());
                    getSender().tell(new BoxOffice.Event(event_, tickets_.size()), getSelf());
                })
                .matchAny(o -> log.info("received unknown message."))
                .build();
    }

    @AllArgsConstructor @Getter @EqualsAndHashCode @ToString
    public static class Ticket {
        private final int id;
    }

    @AllArgsConstructor @Getter @ToString
    public static class Tickets {
        private final String event;
        private final List<Ticket> tickets;

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Tickets)) {
                return false;
            }
            Tickets other = (Tickets)obj;
            return event.equals(other.event) && tickets.equals(other.tickets);
        }
    }

    @AllArgsConstructor @Getter
    public static class Add {
        private final List<Ticket> tickets;
    }
    @AllArgsConstructor @Getter
    public static class Buy {
        private final int tickets;
    }
    public static class GetEvent {}
    public static class Cancel {}
}

package com.noty;

import akka.actor.AbstractActor;
import akka.actor.Props;
import akka.event.DiagnosticLoggingAdapter;
import akka.event.Logging;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

public class DirectoryModificationNotifier extends AbstractActor {
    private DiagnosticLoggingAdapter log_ = Logging.getLogger(this);
    private Map<WatchEvent.Kind<?>, Consumer<WatchEvent<?>>> eventToActions_;
    private static Consumer<WatchEvent<?>> NULL_EVENT = (event -> {});

    public static String name() {
        return "DirectoryModificationNotifier";
    }

    public static Props props() {
        return Props.create(DirectoryModificationNotifier.class);
    }

    DirectoryModificationNotifier() {
        eventToActions_ = new HashMap<WatchEvent.Kind<?>, Consumer<WatchEvent<?>>>() {
            {
                put(StandardWatchEventKinds.ENTRY_CREATE, e -> raise(new OnCreated(e.context().toString())));
                put(StandardWatchEventKinds.ENTRY_MODIFY, e -> raise(new OnModified(e.context().toString())));
                put(StandardWatchEventKinds.ENTRY_DELETE, e -> raise(new OnDeleted(e.context().toString())));
                put(StandardWatchEventKinds.OVERFLOW, e -> raise(new OnOverflow()));
            }
        };
    }

    private <T> void raise(T msg) {
        getSender().tell(msg, getSelf());
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder().match(WatchDirectory.class, msg -> {
            WatchService service = watch(msg.getPath(), msg.getEvents());
            WatchKey key = service.take();
            if (!key.isValid()) {
                raise(new UnavailableWatchDir());
                return;
            }
            key.pollEvents().forEach(event -> {
                Consumer<WatchEvent<?>> action = eventToActions_.getOrDefault(event.kind(), NULL_EVENT);
                action.accept(event);
            });
        }).build();
    }

    private WatchService watch(Path path, List<WatchEvent.Kind<?>> events) throws IOException {
        WatchService service = FileSystems.getDefault().newWatchService();
        Path root = path.toFile().isDirectory()
                ? path
                : path.getParent();
        WatchEvent.Kind<?>[] kinds = events.stream().toArray(WatchEvent.Kind<?>[]::new);
        log_.info("watch events {}, {}", root, Arrays.toString(kinds));
        root.register(service, kinds);
        return service;
    }

    public static @Data @AllArgsConstructor class WatchDirectory {
        Path path;
        List<WatchEvent.Kind<?>> events;
    }

    public static @Data @AllArgsConstructor class UnavailableWatchDir {
    }

    public static @Data @AllArgsConstructor class OnCreated {
        String fileName;
    }

    public static @Data @AllArgsConstructor class OnModified {
        String fileName;
    }

    public static @Data @AllArgsConstructor class OnDeleted {
        String fileName;
    }
    public static @Data class OnOverflow {
    }
}

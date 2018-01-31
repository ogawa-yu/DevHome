package com.noty;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.Props;
import akka.dispatch.sysmsg.Watch;
import akka.event.DiagnosticLoggingAdapter;
import akka.event.Logging;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.xml.stream.events.StartDocument;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;

public class DirectoryModificationNotifier extends AbstractActor {
    private DiagnosticLoggingAdapter log_ = Logging.getLogger(this);

    public static String name() {
        return "DirectoryModificationNotifier";
    }

    public static Props props() {
        return Props.create(DirectoryModificationNotifier.class);
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder().match(WatchDirectory.class, msg -> {
            WatchService service = FileSystems.getDefault().newWatchService();
            msg.getPath()
                    //.toAbsolutePath()
                    .register(service, StandardWatchEventKinds.ENTRY_CREATE, StandardWatchEventKinds.ENTRY_MODIFY);
            WatchKey key = service.take();
            if (!key.isValid()) {
                sender().tell(new UnavailableWatchDir(msg.getPath()), self());
                return;
            }
            key.pollEvents().forEach(event -> {
                if (event.kind() == StandardWatchEventKinds.ENTRY_CREATE ||
                        event.kind() == StandardWatchEventKinds.ENTRY_MODIFY) {
                    sender().tell(new FileUpdated((Path)event.context()), self());
                    return;
                } else if (event.kind() == StandardWatchEventKinds.ENTRY_DELETE) {
                    log_.info("File deleted. file={}", event.context().toString());
                }
            });
        }).build();
    }

    public static @Data @AllArgsConstructor class WatchDirectory {
        Path path;
    }

    public static @Data @AllArgsConstructor class UnavailableWatchDir {
        Path path;
    }

    public static @Data @AllArgsConstructor class FileUpdated {
        Path updatedPath;
    }
}

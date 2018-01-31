package com.noty;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

public class DirectoryMonitor extends AbstractActor {
    private Map<Path, ActorRef> monitoringDirectories_ = new HashMap<>();

    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(RegisterMonitor.class, msg -> {
                    registerNotifier(msg.getFilePath())
                            .tell(new DirectoryModificationNotifier.WatchDirectory(msg.getFilePath()), sender());
                }).build();
    }

    private ActorRef registerNotifier(Path path) {
        ActorRef notifier = getContext().system().actorOf(
                DirectoryModificationNotifier.props(),
                DirectoryModificationNotifier.name());
        monitoringDirectories_.put(path, notifier);
        return notifier;
    }


    public static @Data @AllArgsConstructor class RegisterMonitor {
        private Path filePath;
    }
}

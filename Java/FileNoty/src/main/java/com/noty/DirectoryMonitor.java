package com.noty;

import akka.actor.AbstractActor;
import akka.actor.ActorRef;
import akka.actor.Props;
import akka.dispatch.sysmsg.Terminate;
import akka.event.DiagnosticLoggingAdapter;
import akka.event.Logging;
import akka.event.LoggingAdapter;
import com.typesafe.config.Config;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DirectoryMonitor extends AbstractActor {
    private Map<Path, ActorRef> monitoringDirectories_ = new HashMap<>();
    private Path monitoringTarget_;
    private DiagnosticLoggingAdapter log_ = Logging.getLogger(this);

    public static String name() {
        return "DirectoryMonitor";
    }

    public static Props props() {
        return Props.create(DirectoryModificationNotifier.class);
    }

    @Override
    public void preStart() throws Exception {
        super.preStart();
        /*
        Config conf = getContext().system().settings().config();
        monitoringTarget_ = Paths.get(conf.getString("com.noty.DirectoryMonitor.target"));
        List<WatchEvent.Kind<?>> events = Arrays.asList(StandardWatchEventKinds.ENTRY_CREATE);
        registerNotifier(monitoringTarget_)
                .tell(new DirectoryModificationNotifier.WatchDirectory(monitoringTarget_, events), self());
        log_.info("start monitor");
        */
    }

    @Override
    public Receive createReceive() {
        return receiveBuilder()
                .match(RegisterMonitor.class, msg -> {
                    registerNotifier(msg.getFilePath())
                            .tell(new DirectoryModificationNotifier.WatchDirectory(msg.getFilePath(), msg.getEvents()), self());
                })
                .match(DirectoryModificationNotifier.OnCreated.class, msg ->{
                    if (!monitoringTarget_.getFileName().equals(msg.getFileName())) {
                        log_.debug("created file is not target. continue monitoring. file:{}", msg.getFileName());

                        List<WatchEvent.Kind<?>> events = Arrays.asList(StandardWatchEventKinds.ENTRY_CREATE);
                        monitoringDirectories_.get(monitoringTarget_)
                                .tell(new DirectoryModificationNotifier.WatchDirectory(monitoringTarget_, events), self());
                        return;
                    }
                    log_.debug("end of monitoring. file:{}", msg.getFileName());
                    monitoringDirectories_.get(monitoringTarget_)
                            .tell(new Terminate(), self());
                    monitoringDirectories_.remove(monitoringTarget_);
                    context().system().terminate();
                })
                .build();
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
        private List<WatchEvent.Kind<?>> events;
    }
}

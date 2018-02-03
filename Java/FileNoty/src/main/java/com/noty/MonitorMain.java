package com.noty;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.util.Arrays;
import java.util.List;

public class MonitorMain {

    public static void main(String[] args) {
        Config conf = ConfigFactory.load();
        Path monitoringTarget = Paths.get(conf.getString("com.noty.DirectoryMonitor.target"));
        ActorSystem system = ActorSystem.create("FileNoty", conf);

        ActorRef monitor = system.actorOf(DirectoryMonitor.props());

        List<WatchEvent.Kind<?>> events = Arrays.asList(StandardWatchEventKinds.ENTRY_CREATE);
        monitor.tell(new DirectoryMonitor.RegisterMonitor(monitoringTarget, events), ActorRef.noSender());
    }
}

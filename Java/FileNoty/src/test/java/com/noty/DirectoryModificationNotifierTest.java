package com.noty;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.testkit.javadsl.TestKit;
import org.junit.After;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.util.ArrayList;
import java.util.List;

public class DirectoryModificationNotifierTest extends TestKit {
    @BeforeClass
    public static void setupClass() {
    }

    public DirectoryModificationNotifierTest() {
        super(ActorSystem.create("TestSystem"));
    }

    @After
    public void teardown() {
        getSystem().terminate();
    }

    @Test
    public void test_fileCreated() throws Exception {
        Path targetPath = Paths.get(this.getClass().getResource("./").toURI());

        ActorRef notifier = getSystem().actorOf(
                DirectoryModificationNotifier.props(),
                "test_monitor");
        Path watchFile = targetPath.resolve("dummy_file.dat");

        List<WatchEvent.Kind<?>> evs = new ArrayList<>();
        evs.add(StandardWatchEventKinds.ENTRY_CREATE);

        notifier.tell(
                new DirectoryModificationNotifier.WatchDirectory(watchFile, evs),
                getRef());
        write("created file from unittest", watchFile);
        within(duration("15 second"), () -> expectMsg(new DirectoryModificationNotifier.OnCreated("dummy_file.dat")));
    }

    private static void write(String s, Path targetPath) throws IOException {
        Files.write(targetPath, s.getBytes());
    }
}

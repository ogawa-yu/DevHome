package com.noty;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.testkit.javadsl.TestKit;
import org.junit.After;
import org.junit.Before;
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
    private Path target_;

    @Before
    public void setupClass() throws Exception {
        target_ = Paths.get(this.getClass().getResource("./").toURI());
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
        ActorRef notifier = getSystem().actorOf(
                DirectoryModificationNotifier.props(),
                "test_fileCreated");
        Path watchFile = target_.resolve("test_fileCreated.dat");

        List<WatchEvent.Kind<?>> evs = new ArrayList<>();
        evs.add(StandardWatchEventKinds.ENTRY_CREATE);

        notifier.tell(new DirectoryModificationNotifier.WatchDirectory(watchFile, evs), getRef());
        //テストスレッド側がファイル監視より先にファイルを書き込んでしまうことがあり、少し待つ
        Thread.sleep(3000);

        write("created file from unittest", watchFile);
        within(duration("5 second"), () -> expectMsg(new DirectoryModificationNotifier.OnCreated("test_fileCreated.dat")));
    }

    private static void write(String s, Path targetPath) throws IOException {
        Files.write(targetPath, s.getBytes());
    }
}

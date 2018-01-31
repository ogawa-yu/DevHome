package com.noty;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.testkit.javadsl.TestKit;
import akka.util.Timeout;
import org.junit.BeforeClass;
import org.junit.Test;
import scala.concurrent.duration.FiniteDuration;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import static java.nio.file.Files.*;

public class DirectoryModificationNotifierTest extends TestKit {

    private static Timeout timeout_;

    @BeforeClass
    public static void setupClass() {
        FiniteDuration delay = FiniteDuration.create(5, "second");
        timeout_ = new Timeout(delay);
    }

    public DirectoryModificationNotifierTest() {
        super(ActorSystem.create("TestSystem"));
    }

    @Test
    public void test_monitor() throws Exception {
        ActorRef notifier = getSystem().actorOf(
                DirectoryModificationNotifier.props(),
                DirectoryModificationNotifier.name());

        Path targetPath = Paths.get(this.getClass().getResource("./").toURI());

        notifier.tell(
                new DirectoryModificationNotifier.WatchDirectory(targetPath),
                getRef());
        write("created file from unittest", targetPath.resolve("dummy_file.dat"));
        while(true) {}
        //expectMsg(new DirectoryModificationNotifier.FileUpdated(targetPath));
    }

    private static void write(String s, Path targetPath) throws IOException {
        try (BufferedWriter bw = newBufferedWriter(targetPath, Charset.defaultCharset())) {
            bw.write(s);
        }
    }
}

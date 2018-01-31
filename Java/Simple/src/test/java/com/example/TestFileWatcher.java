package com.jgoticks;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;

public class TestFileWatcher {
    static class DirWatcher {
        public void watch() throws Exception {
            FileSystem fileSystem = FileSystems.getDefault();
            // 監視対象ディレクトリのPathを
            //Path path = fileSystem.getPath("path_to_dir");
            Path path = Paths.get(this.getClass().getResource("./").toURI());
            System.out.println("WatchingPath:" + path.toString());
            try {
                // WatchServiceの取得
                WatchService watchService = fileSystem.newWatchService();
                WatchEvent.Kind<?>[] events = {
                        StandardWatchEventKinds.ENTRY_CREATE,
                        StandardWatchEventKinds.ENTRY_MODIFY,
                        StandardWatchEventKinds.ENTRY_DELETE
                };
                // 捕捉したいイベント種別とWatchServiceをPathに登録
                path.register(watchService, events);
                while (true) {
                    WatchKey key = watchService.take();
                    if (!key.isValid()) {
                        continue;
                    }
                    System.out.println("Watching...");
                    try {
                        String watchableName = key.watchable().toString();
                        System.out.println("Watchable : " + watchableName);
                        for (WatchEvent<?> event : key.pollEvents()) {
                            // イベントが発生するまで待機
                            System.out.println("イベント種別 : " + event.kind());
                            System.out.println("対象コンテンツ : " + event.context());
                            System.out.println("イベント回数 : " + event.count());
                            Path targetPath = FileSystems.getDefault().getPath(watchableName + "\\" + event.context());
                            processContent(targetPath, event);
                            System.out.println();
                            Path fullpath = path.resolve(event.context().toString());
                            System.out.println(fullpath.toString());
                            if (fullpath.getFileName().toString().equals("end.txt")) {
                                System.out.println("end of watching.");
                                key.reset();
                                return;
                            }
                        }
                    } catch (Exception e) {
                        Thread.currentThread().interrupt();
                    }
                    if (!key.reset()) {
                        // Is this right ?
                        System.out.println("The watch key might be invalid.");
                        break;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        private static final void processContent(final Path targetPath, final WatchEvent<?> watchEvent) {
            // コンテンツがファイルかつ更新イベントの場合コンテンツ内容を出力
            if (Files.isRegularFile(targetPath)) {
                if (watchEvent.kind() == StandardWatchEventKinds.ENTRY_MODIFY) {
                    try {
                        if (Files.size(targetPath) > 0) {
                            try(BufferedReader reader = Files.newBufferedReader(targetPath, Charset.defaultCharset())) {
                                String line = null;
                                while ((line = reader.readLine()) != null) {
                                    System.out.println(line);
                                }
                            }
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    @Test
    public void test() throws Exception {
        DirWatcher testee = new DirWatcher();

        @Mockup

        testee.watch();
    }
}

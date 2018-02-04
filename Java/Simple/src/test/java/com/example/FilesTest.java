package com.example;

import java.util.regex.*;
import java.nio.file.*;
import java.io.File;
import java.util.*;
import java.util.stream.*;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class FilesTest {
    private final Pattern IMAGE_FILE = Pattern.compile("(\\w+[^.]).(img|png|bmp)");
    private final Pattern TEXT_FILE = Pattern.compile("(\\w+[^.]).(txt|log)");
    private final String TEXT_FILE_REGEX = "(\\w+[^.]).(txt|log)";
    @Test
    public void fileFindTest() throws Exception {
        Path cp = Paths.get(FilesTest.class.getResource("./").toURI());
        Stream<Path> fs = Files.find(cp, 5,
            (path, attr) -> {
                return attr.isRegularFile() && IMAGE_FILE.matcher(path.toString()).matches();
            });
        assertThat(fs.count(), is(0L));
    }

    @Test
    public void fileFindTestDepthOne() throws Exception {
        Path cp = Paths.get(FilesTest.class.getResource("./").toURI());
        Stream<Path> fs = Files.find(cp, 1,
            (path, attr) -> {
                return attr.isRegularFile() && TEXT_FILE.matcher(path.toString()).find();
            });
        assertThat(fs.count(), is(1L));
    }

    @Test
    public void fileFindTestDepthZero() throws Exception {
        Path cp = Paths.get(FilesTest.class.getResource("./").toURI());
        Stream<Path> fs = Files.find(cp, 0,
            (path, attr) -> {
                System.out.println(path.toString());
                return attr.isRegularFile() && IMAGE_FILE.matcher(path.toString()).matches();
            });
        assertThat(fs.count(), is(0L));
    }
}

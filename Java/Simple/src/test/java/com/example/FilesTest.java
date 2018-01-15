package com.example;

import java.nio.file.*;
import java.io.File;
import java.util.*;
import java.util.stream.*;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class FilesTest {
    @Test
    public void fileFindTest() throws Exception {
        Path cp = Paths.get(FilesTest.class.getResource("./").toURI());
        Stream<Path> fs = Files.find(cp, 5,
            (path, attr) -> {
                return attr.isRegularFile() && path.toString().endsWith("txt");
            });
        assertThat(fs.count(), is(2L));
    }
}

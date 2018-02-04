package com.example;

import org.junit.Test;

import java.nio.file.Paths;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class PythonCommandTest {

    @Test
    public void test_executePython() throws Exception {
        String path = Paths.get(this.getClass().getResource("./").toURI()).resolve("test.py").toString();
        Process proc = PythonCommand.of(path)
            .option("-include hoge")
            .execute();
        int code = proc.waitFor();
        assertThat(code, is(0));
    }

}

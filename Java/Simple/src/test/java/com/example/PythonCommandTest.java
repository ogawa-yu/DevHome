package com.example;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class PythonCommandTest {

    @Test
    public void test() throws Exception {
        assertThat(PythonCommand.of("test.py").append("-include hoge").build(),
                is("python test.py -include hoge"));
    }

}

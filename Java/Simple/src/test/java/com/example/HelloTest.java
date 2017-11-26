package com.example;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

import java.util.*;
import org.junit.experimental.theories.DataPoints;
import org.junit.experimental.theories.DataPoint;
import org.junit.experimental.theories.Theories;
import org.junit.experimental.theories.Theory;
import org.junit.runner.RunWith;
import org.junit.Test;

@RunWith(Theories.class)
public class HelloTest {

    @DataPoints
    public static Map<String, Object>[] createParameters() {
        Map<String, Object>[] parameters = new HashMap[2];
        parameters[0] = new HashMap<>();
        parameters[0].put("key-1", "tanaka");
        parameters[0].put("key-2", "yamada");

        parameters[1] = new HashMap<>();
        parameters[1].put("key-1", "takahashi");
        parameters[1].put("key-2", "katou");

        return parameters;
    }

    private static int testCounter_ = 0;

    @Theory
    public void test_injectParameter(Map<String, Object> param) {
        assertThat(param.get("key-1"), is(not(nullValue())));
        assertThat(param.get("key-2"), is(not(nullValue())));
    }
}

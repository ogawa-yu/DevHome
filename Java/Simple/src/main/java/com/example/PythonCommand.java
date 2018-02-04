package com.example;

import java.util.ArrayList;
import java.util.List;

public class PythonCommand {
    private final String pyFile_;
    private final List<String> options_ = new ArrayList<>();

    public static PythonCommand of(String pyFile) {
        return new PythonCommand(pyFile);
    }

    private PythonCommand(String pyFile) {
        pyFile_ = pyFile;
    }

    public PythonCommand append(String option) {
        options_.add(option);
        return this;
    }

    public PythonCommand withVirtualEnv() {
        return this;
    }

    public String build() {
        List<String> command = new ArrayList<>();
        command.add(pyFile_);
        command.addAll(options_);
        return command.stream().reduce("python", (s1, s2) -> s1.concat(" " + s2));
    }
}
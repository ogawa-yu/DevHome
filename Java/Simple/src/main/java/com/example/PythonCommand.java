package com.example;

import java.io.IOException;
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

    public PythonCommand option(String option) {
        options_.add(option);
        return this;
    }

    public PythonCommand withVirtualEnv() {
        return this;
    }

    public Process execute() throws IOException {
        List<String> command = new ArrayList<>();
        command.add("python");
        command.add(pyFile_);
        command.addAll(options_);
        ProcessBuilder builder = new ProcessBuilder(command);
        return builder.start();
    }
}
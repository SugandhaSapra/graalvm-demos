# GraalVM Demos: Top Ten Occurring Words

This repository contains the code for a demo application for [GraalVM](graalvm.org).

## Intent
To benchmark performance between GraalVM JIT (Just In Time) mode and GraalVM AOT (Ahead of Time) compile mode.

## Prerequisites
* [GraalVM](http://graalvm.org)

## Preparation
GraalVM comes with JavaScript included and has a package manager called gu that lets you install additional languages. I’ve installed the Ruby, Python and R languages. I’ve also installed the native-imagetool. These all get downloaded from GitHub.

```
$ gu install native-image
```


Now you are all set to execute the benchmark and compare the results between different GraalVM modes.

## Running the benchmark

To run the benchmark, you need to execute the `target/benchmarks.jar` file. You can run it with the following command:
```
./run-native-image.sh
```

## A note about the results

This command produces a native executable called topten. This executable isn’t a launcher for the JVM, it doesn’t link to the JVM, and it doesn’t bundle the JVM in any way. native-image really does compile your Java code, and any Java libraries you use, all the way down to simple machine code. For runtime components like the garbage collector we are running our own new VM called the SubstrateVM, which like GraalVM is also written in Java.

If we run the executable we can see that it starts around an order of magnitude faster, and uses around an order of magnitude less memory, than running the same program on the JVM does. It’s so fast that you don’t notice the time taken when using it at the command line — you don’t feel that pause you always get when running a short-running command with the JVM.

# GraalVM Demos: Simple Java Stream Benchmark

This repository contains the code for a demo application for [GraalVM](graalvm.org).

## Intent
To benchmark performance between OpenJDK compiler and Graal compiler.

## Prerequisites
* [Maven](https://maven.apache.org/)
* [GraalVM](http://graalvm.org)

## Preparation

Build the benchmark. You can manually execute `mvn package`, but there is also a `build.sh` script included for
 your convenience.
```
./build.sh
```

Now you are all set to execute the benchmark and compare the results between different JVMs.

## Running the benchmark

To run the benchmark, you need to execute the `target/benchmarks.jar` file. You can run it with the following command:
```
./run.sh
```

If you would like to run the benchmark on a different JVM, you can run it with
whatever `java` you have. However, if you want to run it on the same JVM, just
without the GraalVM compiler, you can simply add the `-XX:-UseJVMCICompiler`
command line option into the same command.

```
./run-with-no-graal.sh
```

This way, the GraalVM compiler will not be used as the JVMCI compiler and the JVM will use its default one.

## A note about the results

The benchmark mode is the `AverageTime` in nanoseconds per operation, which
means lower numbers are better. Note that the results you see can be influenced
by the hardware you are running this benchmark on, the CPU load, and other
factors. Interpret them responsibly.

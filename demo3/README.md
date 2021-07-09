# GraalVM Demos: Spring Boot on GraalVM

This repository contains the code for a demo application for [GraalVM](graalvm.org).

## Intent
To benchmark performance with Spring Boot and Graal compiler.

## Prerequisites
* [Maven](https://maven.apache.org/)
* [GraalVM](http://graalvm.org)

## Preparation

Build the application using `build.sh` script.This step make take few minutes. Just grab a cup of coffee or tea or
 green tea.
```
./build.sh
```

Now you are all set to execute the application and compare the results without GraalVM Spring Boot application.
## Running the benchmark

To run the application,you need to execute :
```
./run.sh
```



## A note about the results

Normally it takes seconds to start any Spring boot application but it takes milliseconds on GraalVM.

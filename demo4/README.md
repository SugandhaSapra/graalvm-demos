# GraalVM Demos: Polyglot Programming on GraalVM

This repository contains the code for a demo application for [GraalVM](graalvm.org).

## Intent
To combine javascript in java codebase

## Prerequisites
* [GraalVM](http://graalvm.org)

## Preparation

GraalVM comes with JavaScript included and has a package manager called gu that lets you install additional languages. I’ve installed the Ruby, Python and R languages. I’ve also installed the native-imagetool. These all get downloaded from GitHub.

```
$ gu install native-image
```


Now you are all set to execute the benchmark and compare the results between different GraalVM modes.

## Running the app

To run the app, you need to execute the following command:
```
./run-native-image.sh
```

## Just a note

As well as Java, GraalVM includes new implementations of JavaScript, Ruby, R and Python. These are written using a new language implementation framework called Truffle that makes it possible to implement language interpreters that are both simple and high performance. When you write a language interpreter using Truffle, Truffle will automatically use GraalVM on your behalf to give you a JIT compiler for your language. So GraalVM is not only a JIT compiler and ahead-of-time native compiler for Java, it can also be a JIT compiler for JavaScript, Ruby, R and Python.

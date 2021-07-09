#!/usr/bin/env bash
#set -xe

echo "Compiling to .class file..."
javac TopTen.java
make -s large.txt

echo "Running without graalVM compiler..."
time java -XX:-UseJVMCICompiler TopTen large.txt

echo "Running with graalVM compiler..."
time java TopTen large.txt

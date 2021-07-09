#!/usr/bin/env bash
#set -xe

echo "Compiling to .class file..."
javac TopTen.java
make -s small.txt

echo "Running with small file on graalVM..."
/usr/bin/time -v java TopTen small.txt

echo "Creating native image..."
native-image --no-server --no-fallback TopTen

echo "Running native image with small file on graalVM..."
/usr/bin/time -v ./topten small.txt

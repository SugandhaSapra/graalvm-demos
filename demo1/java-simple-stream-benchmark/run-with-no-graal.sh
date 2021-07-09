#!/usr/bin/env bash
set -xe

java -XX:-UseJVMCICompiler -jar target/benchmarks.jar

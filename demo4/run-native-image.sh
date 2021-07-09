#!/usr/bin/env bash
#set -xe

echo "Compiling to .class file..."
javac PrettyPrintJSON.java

echo "Creating native image..."
native-image -J-Xmx4G -H:+ReportExceptionStackTraces --language:js PrettyPrintJSON

echo "Running native image..."
./prettyprintjson < prettyMe.json

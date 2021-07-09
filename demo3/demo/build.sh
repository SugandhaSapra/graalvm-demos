#!/usr/bin/env bash
set -ex
mvn -Pnative-image -DskipTests package

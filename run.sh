#!/usr/bin/env bash

# build with redirect to stderr
make build 1>&2

docker run bcm-entry-bnealon-simple:latest

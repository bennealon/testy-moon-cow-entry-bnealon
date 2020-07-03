#!/usr/bin/env bash

# build with redirect to stderr
make build 1>&2

docker run -p 3000:3000 -d bcm-entry-bnealon-simple:latest

sleep 2

curl http://localhost:3000
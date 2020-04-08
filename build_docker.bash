#!/bin/bash

docker build -t "webotslab:$1" -f "dockerfiles/Dockerfile.$1" .

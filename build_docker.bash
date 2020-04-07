#!/bin/bash

docker build -t "webotslab:$1" -f "Dockerfile.$1" .

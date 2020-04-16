#!/bin/bash

docker run --rm -it \
    -p 8888:8888 \
    -p 8889:8889 \
    -p 1234:1234 \
    webotslab:r2020a

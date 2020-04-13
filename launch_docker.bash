#!/bin/bash

xhost +local:root

docker run --rm -it \
    --gpus all \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -p 8888:8888 \
    -p 8889:8889 \
    -p 1234:1234 \
    webotslab:$1

xhost -local:root

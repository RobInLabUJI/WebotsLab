#!/bin/bash

xhost +local:root

docker run --rm -it \
    --gpus all \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -p 8888:8888 \
    webotslab:$1

xhost -local:root

#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install ikpy jupyterlab matplotlib numpy opencv-python pillow shapely

cp -R projects/  ${ENVDIR}/
cp -R notebooks/ ${ENVDIR}/
cp -R stream/ ${ENVDIR}

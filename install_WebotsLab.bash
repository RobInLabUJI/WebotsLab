#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab matplotlib numpy opencv-python pillow shapely

cp -R projects/  ${ENVDIR}/
cp -R notebooks/ ${ENVDIR}/


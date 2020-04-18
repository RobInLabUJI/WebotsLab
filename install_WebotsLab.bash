#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab numpy matplotlib opencv-python shapely

cp -R projects/  ${ENVDIR}/
cp -R notebooks/ ${ENVDIR}/


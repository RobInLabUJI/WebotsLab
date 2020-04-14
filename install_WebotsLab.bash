#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab rpyc numpy matplotlib

cp -R projects/ ${ENVDIR}/

cp -R stream/ ${ENVDIR}/

mkdir -p ${ENVDIR}/notebooks
cp notebooks/test_py3_stream.ipynb ${ENVDIR}/notebooks/test.ipynb
cp notebooks/pioneer3dx_collision_avoidance.ipynb ${ENVDIR}/notebooks/
cp notebooks/khepera4.ipynb ${ENVDIR}/notebooks/
cp notebooks/controller.py ${ENVDIR}/notebooks/

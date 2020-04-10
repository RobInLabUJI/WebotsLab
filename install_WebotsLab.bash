#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab rpyc

mkdir -p ${ENVDIR}/projects/worlds
mkdir -p ${ENVDIR}/notebooks

cp -R controllers/ ${ENVDIR}/projects/

cp worlds/r2020a/*.wbt ${ENVDIR}/projects/worlds/
cp worlds/r2020a/.*.wbproj ${ENVDIR}/projects/worlds/

cp notebooks/test_py3.ipynb ${ENVDIR}/notebooks/test.ipynb
cp notebooks/test_py3_extern_controller.ipynb ${ENVDIR}/notebooks/


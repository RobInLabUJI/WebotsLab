#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab rpyc

mkdir -p ${ENVDIR}/projects/worlds
mkdir -p ${ENVDIR}/notebooks

cp -R controllers/ ${ENVDIR}/projects/

cp worlds/$1/pioneer3dx.wbt ${ENVDIR}/projects/worlds/
cp worlds/$1/.pioneer3dx.wbproj ${ENVDIR}/projects/worlds/

cp notebooks/test_py3_stream.ipynb ${ENVDIR}/notebooks/test.ipynb

cp -R stream/ ${ENVDIR}

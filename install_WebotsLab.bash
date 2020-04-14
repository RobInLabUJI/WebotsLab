#!/bin/bash

ENVDIR=./wlenv

python3 -m venv ${ENVDIR}
source ${ENVDIR}/bin/activate
pip install jupyterlab jupyter-server-proxy rpyc

cp -R projects/ ${ENVDIR}/

cp -R stream/ ${ENVDIR}/

mkdir -p ${ENVDIR}/notebooks
cp notebooks/test_py3_stream.ipynb ${ENVDIR}/notebooks/test.ipynb


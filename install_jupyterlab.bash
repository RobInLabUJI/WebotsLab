#!/bin/bash

python3 -m venv WebotsLab-env
source WebotsLab-env/bin/activate
pip install jupyterlab rpyc

mkdir projects
cp -R controllers/ projects/
mkdir projects/worlds
cp worlds/r2020a/*.wbt projects/worlds/
cp worlds/r2020a/.*.wbproj projects/worlds/


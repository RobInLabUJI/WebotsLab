#!/bin/bash

source WebotsLab-env/bin/activate

export WEBOTS_HOME=${HOME}/webots-R2020a-rev1
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${WEBOTS_HOME}/lib:${WEBOTS_HOME}/lib/controller
export PYTHONPATH=${PYTHONPATH}:${WEBOTS_HOME}/lib/python36:${WEBOTS_HOME}/lib/controller/python36
export PYTHONIOENCODING=UTF-8

cd notebooks && jupyter lab


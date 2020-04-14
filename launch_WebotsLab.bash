#!/bin/bash

ENVDIR=./wlenv

source ${ENVDIR}/bin/activate

export WEBOTS_HOME=${HOME}/webots
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${WEBOTS_HOME}/lib:${WEBOTS_HOME}/lib/controller
export PYTHONPATH=${PYTHONPATH}:${WEBOTS_HOME}/lib/python36:${WEBOTS_HOME}/lib/controller/python36
export PYTHONIOENCODING=UTF-8

cd ${ENVDIR}/stream && python3 server.py &
SERVER_ID=$!

cd ${ENVDIR} && ${WEBOTS_HOME}/webots --batch --stream --minimize ./projects/worlds/khepera4.wbt  &
WEBOTS_ID=$!

cd ${ENVDIR} && jupyter lab --NotebookApp.notebook_dir='notebooks'

for i in `ps -ef| awk '$3 == '$SERVER_ID' { print $2 }'`
 do
   echo killing $i
   kill $i
 done

for i in `ps -ef| awk '$3 == '$WEBOTS_ID' { print $2 }'`
 do
   echo killing $i
   kill $i
 done

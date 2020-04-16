#!/bin/bash

ENVDIR=./wlenv

source ${ENVDIR}/bin/activate

export WEBOTS_HOME=${HOME}/webots
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${WEBOTS_HOME}/lib:${WEBOTS_HOME}/lib/controller
export PYTHONPATH=${PYTHONPATH}:${WEBOTS_HOME}/lib/python36:${WEBOTS_HOME}/lib/controller/python36
export PYTHONIOENCODING=UTF-8

export AUDIODEV=null
export DEBIAN_FRONTEND=noninteractive
export DISPLAY=:99
export LIBGL_ALWAYS_SOFTWARE=true
Xvfb :99 -screen 0 1024x768x16 &

cd ${ENVDIR}/stream && python3 server.py &
SERVER_ID=$!

cd ${ENVDIR} && ${WEBOTS_HOME}/webots --stdout --stderr --no-sandbox --batch --stream --minimize ./projects/worlds/pioneer3dx.wbt  &
WEBOTS_ID=$!

cd ${ENVDIR} && jupyter lab --no-browser --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.notebook_dir='notebooks'

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

Set-ExecutionPolicy Unrestricted -Scope Process

python -m venv wlenv

.\wlenv\Scripts\activate.ps1

pip install jupyterlab rpyc

mkdir .\wlenv\projects
mkdir .\wlenv\projects\controllers
mkdir .\wlenv\projects\controllers\rpyc_controller
mkdir .\wlenv\projects\worlds
mkdir .\wlenv\notebooks
mkdir .\wlenv\stream
mkdir .\wlenv\stream\www

cp .\worlds\r2020a\*.wbt .\wlenv\projects\worlds
cp .\worlds\r2020a\.*.wbproj .\wlenv\projects\worlds

cp controllers\rpyc_controller\rpyc_controller.py .\wlenv\projects\controllers\rpyc_controller
cp .\notebooks\test_py3_stream.ipynb .\wlenv\notebooks\test.ipynb

cp .\stream\server.py .\wlenv\stream\
cp .\stream\www\*.* .\wlenv\stream\www\

deactivate
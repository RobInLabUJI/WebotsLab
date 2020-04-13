Set-ExecutionPolicy Unrestricted -Scope Process

.\wlenv\Scripts\activate

$Env:WEBOTS_HOME = "C:\Users\webots\AppData\Local\Programs\Webots"
$Env:path += $Env:WEBOTS_HOME+"\lib;"+$Env:WEBOTS_HOME+"\lib\controller;"+$Env:WEBOTS_HOME+"\msys64\mingw64\bin;"
$Env:pythonpath += $Env:WEBOTS_HOME+"\lib\controller\python37;"
$Env:PYTHONIOENCODING = "UTF-8"

cd .\wlenv\stream && python3 server.py

exit

jupyter lab #--NotebookApp.notebook_dir=.\notebooks

cd ..

deactivate

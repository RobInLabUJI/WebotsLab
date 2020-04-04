Set-ExecutionPolicy Unrestricted -Scope Process

.\WebotsLab-env\Scripts\activate

$Env:WEBOTS_HOME = "C:\Users\webots\AppData\Local\Programs\Webots"
$Env:path += $Env:WEBOTS_HOME+"\lib;"+$Env:WEBOTS_HOME+"\lib\controller;"+$Env:WEBOTS_HOME+"\msys64\mingw64\bin;"
$Env:pythonpath += $Env:WEBOTS_HOME+"\lib\controller\python37;"
$Env:PYTHONIOENCODING = "UTF-8"

cd notebooks

jupyter lab #--NotebookApp.notebook_dir=.\notebooks

cd ..

deactivate

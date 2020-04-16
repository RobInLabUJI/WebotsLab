Set-ExecutionPolicy Unrestricted -Scope Process

.\wlenv\Scripts\activate

$Env:WEBOTS_HOME = "C:\Users\webots\AppData\Local\Programs\Webots"
$Env:path += $Env:WEBOTS_HOME+"\lib;"+$Env:WEBOTS_HOME+"\lib\controller;"+$Env:WEBOTS_HOME+"\msys64\mingw64\bin;"
$Env:pythonpath += $Env:WEBOTS_HOME+"\lib\controller\python37;"
$Env:PYTHONIOENCODING = "UTF-8"

$block = {& C:\Users\webots\AppData\Local\Programs\Webots\msys64\mingw64\bin\webots.exe}

$job = Start-Job -scriptblock $block 

jupyter lab --NotebookApp.notebook_dir=.\notebooks

Stop-Job $job

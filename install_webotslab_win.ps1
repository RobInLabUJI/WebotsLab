Set-ExecutionPolicy Unrestricted -Scope Process

python -m venv wlenv

.\wlenv\Scripts\activate.ps1

pip install jupyterlab numpy matplotlib

mkdir .\wlenv\projects
mkdir .\wlenv\projects\worlds
mkdir .\wlenv\projects\worlds\textures
mkdir .\wlenv\notebooks

cp .\projects\worlds\*.wbt .\wlenv\projects\worlds\
cp .\projects\worlds\.*.wbproj .\wlenv\projects\worlds\
cp .\projects\worlds\textures\*.* .\wlenv\projects\worlds\textures\

cp .\notebooks\*.* .\wlenv\notebooks\

deactivate
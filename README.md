# WebotsLab
Interactive Webots with JupyterLab. Program the controller of a simulated robot in Python with [Jupyter notebooks](https://jupyter.org/).

You can set up WebotsLab with two different configurations:
1. Using the [Webots simulator](https://cyberbotics.com/) and [Python 3](https://www.python.org/) installed on your computer (the *native* way).
2. Using [Docker](https://docs.docker.com/engine/), no need of installing Webots nor Python (the *Docker* way).

## The *native* way

### Prerequisites

* [Webots](https://cyberbotics.com/) (R2019b or later)
* [Python 3](https://www.python.org/) with [virtual environments](https://docs.python.org/3/tutorial/venv.html)

### Tested on:

* Ubuntu 18.04
* [Webots R2020a-rev1](https://github.com/cyberbotics/webots/releases/tag/R2020a-rev1) and
  [Webots R2019b-rev1](https://github.com/cyberbotics/webots/releases/tag/R2019b-rev1)
* Python 3.6.9

### Usage

1. Clone this repository:
```
git clone https://github.com/RobInLabUJI/WebotsLab.git && cd WebotsLab
```

2. Install JupyterLab:
```
./install_WebotsLab.bash
```

3. Launch JupyterLab:
```
./launch_WebotsLab.bash
```

4. JupyterLab will appear in a new browser window or tab; open the notebook `test.ipynb` and follow the instructions.

## The *Docker* way

### Prerequisites

* [Docker](https://docs.docker.com/engine/)

### Tested on:

* Ubuntu 18.04
* [Docker version 19.03.8](https://docs.docker.com/engine/install/ubuntu/)

### Usage

1. Clone this repository:
```
git clone https://github.com/RobInLabUJI/WebotsLab.git && cd WebotsLab
```

2. Build WebotsLab Docker image:
```
./build_docker.bash
```

or pull the Docker image with:
```
docker pull robinlab/webotslab:r2020a
```

3. Launch WebotsLab:
```
./launch_docker.bash
```

4. Open your favourite browser, connect to http://localhost:8888, open the notebook `test.ipynb` and follow the instructions.

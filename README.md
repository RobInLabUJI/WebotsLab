# WebotsLab
Interactive Webots with JupyterLab. Program the controller of a simulated robot in Python with [Jupyter notebooks](https://jupyter.org/).

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

2. Install WebotsLab in a Python virtual environment:
```
./install_WebotsLab.bash
```

3. Launch WebotsLab:
```
./launch_WebotsLab.bash
```

4. Webots will start and JupyterLab will appear in a new browser window or tab. Open a world in Webots, and select the corresponding notebook in Jupyter.

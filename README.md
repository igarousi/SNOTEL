# Introduction

### First, follow instruction in [here](https://github.com/igarousi/XSEDE/tree/master/run_notebooks_on_comet) to run a jupyterlab/jupyter notebook on COMET.

In jupyterlab, click on + button (called New Launcher) and open a terminal to check the following. 

```
Singularity> which python
Singularity> python --version
```

The python version is 3.7.6 as of May 27, 2020.  This version does not include `ulmo` library. Thus, you need to install a specific version of python. 

In the terminal, search for available viersions 
```
Singularity> conda search python
```

Change your python version to for example "3.6" with the environment variable "snotel" 
```
Singularity> conda create --name snotel python=3.6 pip --y
```

Activate the environment
```
Singularity> conda activate snotel
```

Install ipykernel
```
(snotel) Singularity> conda install ipykernel
(snotel) Singularity> ipython kernel install --user --name=snotel
```

Install `ulmo` libarary
```
(snotel) Singularity> pip install ulmo
(snotel) Singularity> pip install tzwhere
(snotel) Singularity> conda install matplotlib
(snotel) Singularity> conda install geopandas
```

Open the jupyterlab and change the kernel to **snotel**. 

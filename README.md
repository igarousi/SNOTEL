# Introduction

### 1. First, follow instruction in [here](https://github.com/igarousi/XSEDE/tree/master/run_notebooks_on_comet) to run a jupyterlab/jupyter notebook on COMET.

### 2. Run `conda_settings.sh` bash script 
In jupyterlab, click on + button (called New Launcher) and open a terminal. Then, browse to the code directory and run `conda_settings.sh` batch script from the terminal. The script creates an environment varibale (called snotel) with python 3.6. The reason for installing this verion (<3.7) is that `ulmo` library does not come with versions greater than 3.6. I need `ulmo` when retrieving SNOTEL data from CUAHSI data client. After installing python 3.6, the script installs `ipykernel` that lets to have the new python as a kernel when running the jupyter lab. Finally, it installs required libraries such as `ulmo` and `matplotlib`. 

Open the jupyterlab and change the kernel to **snotel**. This is the name that is defined within `conda_settings.sh` when installing the new kernel.

### 3. Run `SNOTEL_Download_Retrieve.ipynb` notebook
This noteook retrieves Snow Water Equivalent (SWE) and accumulated precipitation (P) data from SNOTEL sites through CUAHSI data client service. 

# Directory Description

* **code**: Includes the batch and the jupyter notebook scripts.

* **input**: Includes a CSV file that shows SNOTEL information such as latitudes, longitudes, associated ecoregions, ...

* **output**: Includes two large CSV files, i.e. snow water equivalent and precipitation measured at SNOTEL gages for all available days. Not uploaded on GitHub. 



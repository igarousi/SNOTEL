#!/bin/bash
# Run this script before running the jupyter notebook.

which python
python --version

conda create --name snotel python=3.6 pip --y 
source ~/anaconda3/etc/profile.d/conda.sh
conda activate snotel

conda install ipykernel --quiet --yes
ipython kernel install --user --name=snotel

pip install ulmo --quiet 
conda install -c conda-forge timezonefinder --yes
conda install matplotlib --yes
conda install geopandas --yes

which python
python --version
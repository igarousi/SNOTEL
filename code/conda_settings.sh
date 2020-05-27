#!/bin/bash

which python
python --version

conda create --name snotel python=3.6 pip 
source ~/anaconda3/etc/profile.d/conda.sh
conda activate snotel

which python
python --version

pip install ulmo
pip install tzwhere
conda install matplotlib
conda install geopandas


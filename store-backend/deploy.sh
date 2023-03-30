#!/bin/bash 

base_python_interpreter="/home/www/.python/bin/python3.8.2"
project_domain="game-store-lhpt.onrender.com"
project_path=`pwd`

`$base_python_interpreter -m venv env`
source env/bin/activate
pip install -U pip
pip install -r requirements.txt


#!/bin/bash 

sudo apt install python3-venv

python3 -m pip install --upgrade pip

python3 -m venv venv

source venv/bin/activate

pip3 install django


pip3 install -U "bcrypt<4.0.0"

pip3 install -r requirements.txt

python3 manage.py migrate

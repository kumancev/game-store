#!/bin/bash 

base_python_interpreter="/home/www/.python/bin/python3.8.2"
project_domain="game-store-lhpt.onrender.com"
project_path=`pwd`

`$base_python_interpreter -m venv env`
source env/bin/activate
pip install -U pip
pip install -r requirements.txt

sed -i "s~$project_path~g" systemd/gunicorn.service

sudo ln -s $project_path/nginx/site.conf /etc/nginx/sites-enabled/
sudo ln -s $project_path/systemd/gunicorn.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo service nginx restart

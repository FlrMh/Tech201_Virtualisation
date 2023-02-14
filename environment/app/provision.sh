#!/bin/bash

# Installing nginx and python

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable
sudo apt-get install python -y


# Setting up reverse proxy on nginx

sudo rm /etc/nginx/sites-available/default
sudo cp app/reverse_proxy /etc/nginx/sites-available/default
sudo systemctl restart nginx


# Install nodejs

sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y


# Install pm2

sudo npm install pm2 -g



# Setting up an persistant environment variable

# export DB_HOST=mongodb://192.168.10.150:27017/posts

# echo "export DB_HOST=mongodb://192.168.10.150:27017/posts" >> ~/.bashrc

# source ~/.bashrc



# Starting the app

# cd app/

# npm install

# node seeds/seed.js

# node app.js

# vagrant up database




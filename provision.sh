#!/bin/bash


# updates and upgrades the tools and packages within the app
sudo apt-get update -y # because the vm will run this script before we acces the machin, there is no input, so we need -y
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# enable or start nginx
sudo systemctl enable nginx -y

# Insall nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install pm2 
sudo npm install pm2 -g

#  Running the app
cd app/
npm install
node app.js

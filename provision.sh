#!/bin/bash


# updates and upgrades the tools and packages within the app
sudo apt-get update -y # because the vm will run this script before we acces the machin, there is no input, so we need -y
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# enable or start nginx
sudo systemctl enable nginx -y


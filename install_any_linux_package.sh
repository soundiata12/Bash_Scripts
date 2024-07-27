#!/bin/bash
#Autor: keita
#Discription: This is for install any packages
#Date creation: 07/25/2024
#Date of mofity: 07/26/2024


echo "Pleass enter the package for install in server"
read package_name

sudo yum install $package_name -y
sudo systemctl enable $package_name
sudo systemctl restart $package_name





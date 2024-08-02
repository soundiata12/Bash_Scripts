#!/bin/bash
# Autor: SKeita
# Description: Set up a webserver using Apache software to host an application.

# Update server packages!
yum update -y
# Install useful packages.
yum install unzip wget httpd -y
# Download the application code from git repository.
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
# Extract the compress file.
unzip main.zip
# Make sure the /var/www/html/ folder is emppty and ready.
rm -rf /var/www/html/*
# Copy the app in the /var/www/html folder.
cp -r static-resume-main/* /var/www/html
# Start the apache service or daemon.
systemctl start httpd 
systemctl enable httpd


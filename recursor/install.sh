#!/bin/bash

# Add your script code here

sudo apt install libboost-all-dev
sudo touch /etc/apt/sources.list.d/pdns.list

echo "deb [signed-by=/etc/apt/keyrings/rec-50-pub.asc arch=amd64] http://repo.powerdns.com/ubuntu jammy-rec-50 main" | sudo tee -a /etc/apt/sources.list.d/pdns.list

sudo touch /etc/apt/preferences.d/rec-50
echo "Package: rec*\
Pin: origin repo.powerdns.com\
Pin-Priority: 600" | sudo tee -a /etc/apt/preferences.d/rec-50

sudo install -d /etc/apt/keyrings
curl https://repo.powerdns.com/FD380FBB-pub.asc | sudo tee /etc/apt/keyrings/rec-50-pub.asc
sudo apt-get update
sudo apt-get install pdns-recursor
sudo mkdir /var/run/pdns-recursor
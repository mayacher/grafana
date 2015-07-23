#!/bin/bash

if [ ! -f /usr/share/grafana/public/build.txt ]; then
    wget https://grafanarel.s3.amazonaws.com/builds/grafana_2.0.2_amd64.deb
    sudo apt-get install -y adduser libfontconfig
    sudo dpkg -i grafana_2.0.2_amd64.deb
else 
    echo "public dir already exist."

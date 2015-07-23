#!/bin/sh
docker run -h grafana -p 9001:9001 -p 80:80 -p 3306:3306  -v /home/maya/grafana-data/:/usr/share/grafana/public -v /home/maya/grafana-db:/grafana  --name grafana  -d mayacher/grafana 

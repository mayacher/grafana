#!/bin/sh
docker run -h grafana -p 9001:9001 -p 80:80 -p 5432:5432   --name grafana -d mayacher/grafana

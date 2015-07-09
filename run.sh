#!/bin/sh
docker run -h grafana -p 9001:9001 --name grafana -d mayacher/grafana

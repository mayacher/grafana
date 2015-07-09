#!/bin/sh
docker run -h grafana -p 9001:9001 -p 3000:3000  --name grafana -d mayacher/grafana

#!/bin/bash
set -ex
cd /ext/open-source/prometheus/.build/linux-amd64/
go build /ext/open-source/prometheus/cmd/prometheus/
cd  	/ext/open-source/prometheus
make docker
docker tag  prom/prometheus-linux-amd64:main  r.fastonetech.com:5000/kurt/prometheus:debug
docker push r.fastonetech.com:5000/kurt/prometheus:debug

#!/bin/bash

if [ $EUID -ne 0 ]
	then echo "usage: sudo ./run.sh"
	exit
fi

echo "Starting sonarqube server"

sysctl -w vm.max_map_count=524288
sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -u 8192

docker-compose up

#!/bin/sh

in=$1
cn=$2

if [ $# -ge 2 ]
then
    [ ! -d /opt/docker/store1 ] && mkdir -p /opt/docker/store1
    docker run --privileged --net=host -d --name ${cn} -v /opt/docker/store1:/opt/data-ext ${in}
else
    echo "run-host.sh [imageName] [containerName]"
fi

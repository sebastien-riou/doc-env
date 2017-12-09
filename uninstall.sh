#!/bin/sh

#stop the script on error
set -e

#remove doc-env containers
CONTAINERS=`sudo docker ps -a | grep "doc-env" | awk '{ print $1 }'`
echo $CONTAINERS
[ "$CONTAINERS" ] && sudo docker rm --force $CONTAINERS

#remove the doc-env image from local storage
sudo docker rmi $(sudo docker images doc-env -q)

#remove the doc-env script
sudo rm /usr/bin/doc-env

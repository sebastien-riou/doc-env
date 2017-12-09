#!/bin/sh

#stop the script on error
set -e

#get the path to this script
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

#build the doc-env docker image
sudo docker build -t doc-env $SCRIPTPATH/docker_root

#add a link to launch the doc-env script
sudo cp -f $SCRIPTPATH/bin/doc-env /usr/bin/doc-env

echo ""
echo "doc-env installed"
echo "you can delete the $SCRIPTPATH directory, it is not needed anymore."
echo ""

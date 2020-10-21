#!/bin/bash

set -e

echo '{ "features": { "buildkit": true } }' | sudo tee /etc/docker/daemon.json

sudo systemctl restart docker

targetdir=$HOME/.alpha
rm -rf ${targetdir}

mkdir -p $targetdir 
workdir="$(mktemp -d)"

cp user-login.sh  $targetdir/user-login.sh
chmod +x $targetdir/user-login.sh

cd ${workdir}
git clone https://github.com/alpha-prosoft/alpha-build-lib.git

cp alpha-build-lib/ami-base/files/login.sh $targetdir/login.sh
chmod +x $targetdir/login.sh



temp_dir="$(mktemp -d)"
cd $temp_dir
curl -L -o traefik.tar.gz https://github.com/containous/traefik/releases/download/v2.2.8/traefik_v2.2.8_linux_amd64.tar.gz
tar -zxvf traefik.tar.gz
cp  traefik $targetdir/traefik


cd $workdir



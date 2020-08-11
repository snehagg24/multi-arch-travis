#!/bin/bash

ARCH=$(uname -m)

docker build -t container/$ARCH -f ./$ARCH/Dockerfile .
docker tag container/$ARCH quay.io/rpsene/multi-arch-travis:$ARCH
docker login quay.io -u "$USER" -p $TOKEN
docker push quay.io/rpsene/multi-arch-travis:$ARCH
sudo sed '/^",experimental": true=.*/a "mtu": 1460' /etc/docker/daemon.json
cat /etc/docker/daemon.json

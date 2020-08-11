#!/bin/bash

ARCH=$(uname -m)

docker build -t container/$ARCH -f ./$ARCH/Dockerfile .
docker tag container/$ARCH quay.io/rpsene/multi-arch-travis:$ARCH
docker login quay.io -u "$USER" -p $TOKEN
docker push quay.io/rpsene/multi-arch-travis:$ARCH
> /etc/docker/daemon.json
sudo echo '{"storage-driver": "overlay2", "registry-mirrors": ["https://registry.docker.io"], "mtu": 1460, "experimental": true}' >> /etc/docker/daemon.json
cat /etc/docker/daemon.json
sudo systemctl restart docker
sudo docker version

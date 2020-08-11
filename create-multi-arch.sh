#!/bin/bash

> /etc/docker/daemon.json

echo '{"storage-driver": "overlay2", "registry-mirrors": ["https://registry.docker.io"], "mtu": 1460, "experimental": true}' >> /etc/docker/daemon.json

cat ~/.docker/config.json

sudo systemctl restart docker

docker info

docker manifest create travis/multi-arch-image:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

#sudo docker tag travis/multi-arch-image quay.io/rpsene/multi-arch-travis:latest

#sudo docker manifest inspect quay.io/rpsene/multi-arch-travis:latest

#sudo docker login quay.io -u "$USER" -p $TOKEN

#sudo docker manifest push quay.io/rpsene/multi-arch-travis:latest

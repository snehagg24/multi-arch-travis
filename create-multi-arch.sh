#!/bin/bash

> /etc/docker/daemon.json
sudo echo '{"storage-driver": "overlay2", "registry-mirrors": ["https://registry.docker.io"], "mtu": 1460, "experimental": true}' >> /etc/docker/daemon.json
cat /etc/docker/daemon.json
sudo systemctl restart docker

docker manifest create travis/multi-arch-image:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

docker tag travis/multi-arch-image quay.io/rpsene/multi-arch-travis:latest

docker login quay.io -u "$USER" -p $TOKEN

docker manifest inspect quay.io/rpsene/multi-arch-travis:latest

docker manifest push quay.io/rpsene/multi-arch-travis:latest

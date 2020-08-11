#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker buildx version

docker manifest create travis/multi-arch-image:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

#sudo docker tag travis/multi-arch-image quay.io/rpsene/multi-arch-travis:latest

#sudo docker manifest inspect quay.io/rpsene/multi-arch-travis:latest

#sudo docker login quay.io -u "$USER" -p $TOKEN

#sudo docker manifest push quay.io/rpsene/multi-arch-travis:latest

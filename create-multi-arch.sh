#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/rpsene/multi-arch-image:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

docker manifest inspect quay.io/rpsene/multi-arch-image

docker login quay.io -u "$USER" -p $TOKEN

docker manifest

#docker manifest push quay.io/rpsene/multi-arch-image:latest

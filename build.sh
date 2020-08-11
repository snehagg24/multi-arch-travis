#!/bin/bash

ARCH=$(uname -m)

docker build -t container/$ARCH -f ./$ARCH/Dockerfile .
docker tag container/$ARCH quay.io/rpsene/multi-arch-travis:$ARCH
docker login quay.io -u "$USER" -p $TOKEN
docker push -u "$USER" -p $TOKEN quay.io/rpsene/multi-arch-travis:$ARCH

#!/usr/bin/env bash
set -ex

# automate tagging with the short commit hash
docker build --no-cache -t jabahum/medx-distro:$(git rev-parse --short HEAD) .
docker tag jabahum/medx-distro:$(git rev-parse --short HEAD) jabahum/medx-distro
docker push jabahum/medx-distro:$(git rev-parse --short HEAD)
docker push jabahum/medx-distro:latest
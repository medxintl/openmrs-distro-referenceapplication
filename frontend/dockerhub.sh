#!/usr/bin/env bash
set -ex

# automate tagging with the short commit hash
docker build --network=host --no-cache -t jabahum/medx-frontend:$(git rev-parse --short HEAD) .
docker tag jabahum/medx-frontend:$(git rev-parse --short HEAD) jabahum/medx-frontend
docker push jabahum/medx-frontend:$(git rev-parse --short HEAD)
docker push jabahum/medx-frontend:latest
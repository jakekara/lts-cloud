#!/usr/bin/env sh

set -e

docker system prune -f

docker build \
    --tag lts-app \
    --file backend.Dockerfile \
    .
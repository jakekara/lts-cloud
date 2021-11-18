#!/usr/bin/env sh

set -e

docker system prune -f

docker build \
    --tag lts-app-frontend-builder \
    --file frontend-deps.Dockerfile \
    --no-cache \
    .

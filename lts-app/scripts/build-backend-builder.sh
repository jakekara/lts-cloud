#!/usr/bin/env sh

docker build \
    --tag lts-app-backend-deps \
    --file backend-deps.Dockerfile \
    --no-cache \
    .
#!/usr/bin/env sh

docker build \
    --tag lts-app \
    --file backend.Dockerfile \
    .
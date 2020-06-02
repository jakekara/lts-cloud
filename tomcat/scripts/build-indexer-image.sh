#!/usr/bin/env sh

docker system prune -f 

docker build \
    --file indexer.Dockerfile \
    --tag lts-blacklab-indexer \
    .


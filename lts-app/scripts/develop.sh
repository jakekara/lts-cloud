#!/usr/bin/env sh

set -e 

. ./scripts/develop-frontend.sh

echo "Cleaning up Docker stuff"
docker container prune -f

echo "Creating an lts network" 
docker network create lts 2> /dev/null && echo "Created network" || echo "Network already exists"

echo "Running lts-app container in dev mode"
docker run --rm -p 7082:7082 \
    --network lts \
    --name lts-app \
    -it \
    -v "$(pwd)/let-them-speak":/lts-app
    lts-app
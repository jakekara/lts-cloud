#!/usr/bin/env sh

set -e

echo Cleaning up Docker stuff
docker container prune -f
docker stop lts-mongo | true

echo Creating an lts network
docker network create lts 2> /dev/null && echo "Created network" || echo "Network already exists"

echo Running lts-mongo container
docker run -v migrations:/migrations -p 27017:27017 --rm --network lts --name lts-mongo lts-mongo
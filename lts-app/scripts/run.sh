#!/usr/bin/env sh

set -e 

echo Cleaning up Docker stuff
docker container prune -f

echo Creating an lts network 
docker network create lts 2> /dev/null && echo "Created network" || echo "Network already exists"

echo Running lts-app container
docker run --rm -p 7082:7082 --network lts --name lts-app -it lts-app
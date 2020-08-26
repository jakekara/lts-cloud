#!/usr/bin/env sh

set -e 

#. ./scripts/develop-frontend.sh

echo "Cleaning up Docker stuff"
docker container prune -f

echo "Creating an lts network" 
docker network create lts 2> /dev/null && echo "Created network" || echo "Network already exists"

echo "Running lts-app container in dev mode"
docker run --rm -p 7082:7082 \
    --network lts \
    --name lts-app-dev-mode \
    -it \
    -v "$(pwd)/let-them-speak":/lts-app \
    lts-app /bin/sh -c "gunicorn -b 0.0.0.0:7082 \
                        --workers 1 \
                        --threads 8 \
                        --timeout 30 \
                        --keep-alive 2 \
                        --access-logfile - \
                        --reload \
                        --log-level=DEBUG server.app:app"
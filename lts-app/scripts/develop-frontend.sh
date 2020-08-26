#!/usr/bin/env sh

docker run --rm -it \
    -v "$(pwd)/let-them-speak":/lts-app \
    --name lts-app-frontend-watcher \
    lts-app-frontend-builder \
    /bin/sh -c "echo Starting frontend build watcher && \
        cd /lts-app && \
        npm install --no-optional && \
        npm run develop"
    
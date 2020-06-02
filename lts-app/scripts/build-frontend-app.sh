#!/usr/bin/env sh

docker run --rm -it \
    -v "$(pwd)/lts-app":/lts-app \
    lts-app-frontend-builder \
    /bin/sh -c "echo Building frontend && \
        cd /lts-app && \
        rm -rf node_modules && \
        npm install --no-optional && \
        npm run build && \
        rm -rf node_modules"
    
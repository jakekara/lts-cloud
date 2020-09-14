#!/usr/bin/env sh

docker run --rm -it \
-v "$(pwd)/let-them-speak":/lts-app \
--env LTS_GA_CODE=$LTS_GA_CODE \
lts-app-frontend-builder \
/bin/sh -c "echo Building frontend && \
        cd /lts-app && \
        rm -rf node_modules && \
        npm install --no-optional && \
        npm run build && \
rm -rf node_modules"

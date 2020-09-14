#!/usr/bin/env sh

docker run --rm -it \
-v "$(pwd)/let-them-speak":/lts-app \
--env LTS_GA_CODE=$LTS_GA_CODE \
--name lts-app-frontend-watcher \
lts-app-frontend-builder \
/bin/sh -c "echo Starting frontend build watcher && \
echo building with GA code: $LTS_GA_CODE && \
cd /lts-app && \
npm install --no-optional && \
npm run develop"

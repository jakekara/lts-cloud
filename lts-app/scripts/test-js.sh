#/usr/bin/env sh

docker run --rm -it \
    -v "$(pwd)/let-them-speak":/lts-app \
    lts-app-frontend-builder \
    /bin/sh -c "echo Building and testing frontend && \
        cd /lts-app && \
        rm -rf node_modules && \
        npm install --no-optional && \
        npm run build && \
        npm run jest && \
        rm -rf node_modules"

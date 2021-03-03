#!/usr/bin/env sh

rm -rf "let-them-speak/node_modules"

docker run --rm -it \
-v "$(pwd)/let-them-speak":/lts-app \
--env LTS_GA_CODE=$LTS_GA_CODE \
lts-app-frontend-builder \
/bin/sh -c "echo Building frontend && \
        echo Link deps && ln -s /deps/node_modules/ /lts-app/node_modules && \
        echo Working dir && pwd && \
        echo Listing work dir && ls -lah && \
        echo Build && npm run build && \
        echo Cleanup && rm -rf node_modules"

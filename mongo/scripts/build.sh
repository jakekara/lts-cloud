#!/usr/bin/env sh

echo build.sh: Building mongodb image
echo --------------------------------
echo

# Exit if any step exits with nonzero code
set -e

docker build \
    -f lts-mongo.Dockerfile \
    --tag lts-mongo \
    .
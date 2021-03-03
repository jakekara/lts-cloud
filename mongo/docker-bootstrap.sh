#!/usr/bin/env sh

echo docker-bootstrap.sh: Loading LTS data into mongodb
echo --------------------------------------------------
echo

echo Starting mongo         && mongod & sleep 3 && \
echo Changing dir           && cd /s3/ && \
echo Listing dir            && ls -lah
echo Unzipping DB           && unzip -q lts.archive.zip && \
echo Restoring DB           && mongorestore --archive=lts.archive --nsInclude="lts.*" && \
echo Stopping mongo         && mongod --shutdown && \
echo Cleaning env           && AWS_SECRET_ACCESS_KEY="" && AWS_ACCESS_KEY_ID="" && \
echo Starting mongo         && /usr/local/bin/docker-entrypoint.sh mongod
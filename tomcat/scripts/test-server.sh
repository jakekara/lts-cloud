#/usr/bin/env sh

docker run -it --network lts --rm \
    lts-blacklab-indexer /bin/sh -c \
    "wget -O- --server-response http://lts-blacklab:8080/blacklab-server-1.7.3/lts/"
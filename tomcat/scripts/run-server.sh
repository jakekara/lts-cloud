set -e

echo Cleaning up Docker stuff
docker container prune -f
docker stop lts-blacklab | true

echo Creating an lts network
docker network create lts 2> /dev/null && echo "Created network" || echo "Network already exists"


docker run \
--rm \
--network lts \
--name lts-blacklab \
-p 8888:8080 \
lts-blacklab
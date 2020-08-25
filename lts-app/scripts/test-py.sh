#/usr/bin/env sh

echo "Running Python Tests"
echo "--------------------"
echo 
echo "Note: You'll want to make sure mongo and tomcat containers"
echo "      are running properly so that all tests may pass."
echo 

docker run --rm \
    --env TOMCAT_WEBAPPS="" \
    -p 7082:7082 \
    --network lts \
    --name lts-app \
    -it lts-app \
    /bin/sh -c "pytest"

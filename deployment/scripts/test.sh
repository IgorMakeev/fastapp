#!/bin/bash

cat << EOF > ./deployment/.env
POSTGRES_USER=app
POSTGRES_PASSWORD=app
POSTGRES_DB=app
EOF

docker compose -f ./deployment/docker-compose.yaml up  -d

docker exec app pytest

failure=`docker exec app pytest | grep 'FAILED' | awk '{print $1}'`
if [ -z "$failure" ]; then echo "passed"; else exit 1; fi

docker rm -f $(docker ps -aq)

rm ./deployment/.env

#!/bin/bash

docker compose -f ./deployment/docker-compose.yaml up -d

cat << EOF > ./deployment/.env
POSTGRES_USER=app
POSTGRES_PASSWORD=app
POSTGRES_DB=app
EOF

docker exec app pytest

docker-compose down -f ./deployment/docker-compose.yaml

rm ./deployment/.env

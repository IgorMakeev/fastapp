#!/bin/bash

cat << EOF > ./deployment/.env
POSTGRES_USER=app
POSTGRES_PASSWORD=app
POSTGRES_DB=app
EOF

docker-compose up -f ./deployment/docker-compose.yaml  -d

docker exec app pytest

docker-compose down -f ./deployment/docker-compose.yaml

rm ./deployment/.env

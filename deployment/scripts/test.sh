#!/bin/bash

docker compose -f ./deployment/docker-compose.yaml -d

cat << EOF > ./deployment/.env
POSTGRES_USER=${POSTGRES_USER}
POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
POSTGRES_DB=${POSTGRES_DB}
EOF

docker exec app pytest

docker compose down -f ./deployment/docker-compose.yaml


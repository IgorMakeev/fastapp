#!/bin/bash

docker compose -f ./deployment/docker-compose.yaml -d

docker exec app pytest

docker compose down -f ./deployment/docker-compose.yaml


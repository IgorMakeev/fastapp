#!/bin/bash

# push
docker tag jenkins-builds:latest ${REPOSITORY}/${APP_NAME}-${ENV}:latest
docker push ${REPOSITORY}/${APP_NAME}-${ENV}:latest
# docker rmi -f $(docker images -q)

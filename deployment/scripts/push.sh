#!/bin/bash

# logging in to aws ecr
aws ecr get-login-password \
   --region ${REGION} \
   | docker login \
   --username AWS \
   --password-stdin ${REPOSITORY}

# push
docker tag jenkins-builds:latest ${REPOSITORY}/${APP_NAME}-${ENV}:latest
docker push ${REPOSITORY}/${APP_NAME}-${ENV}:latest
# docker rmi -f $(docker images -q)

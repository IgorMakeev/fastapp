#!/bin/bash

# logging in to aws ecr
aws ecr get-login-password \
   --region ${REGION} \
   | docker login \
   --username AWS \
   --password-stdin ${REPOSITORY}

# push
docker push ${IMAGE}

# clean up
docker rm -f $(docker ps -aq)

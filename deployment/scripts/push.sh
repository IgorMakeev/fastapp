#!/bin/bash

# logging in to aws ecr
aws ecr get-login-password \
   --region ${REGION} \
   | docker login \
   --username AWS \
   --password-stdin ${REPOSITORY}

# push
docker push ${IMAGE}
# docker rmi -f $(docker images -q)

#!/bin/bash

# push
docker tag jenkins-builds:latest ${REPOSITORY}/jenkins-builds:latest
docker push ${REPOSITORY}/jenkins-builds:latest
docker rmi -f $(docker images -q)

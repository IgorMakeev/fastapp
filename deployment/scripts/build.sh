#!/bin/bash

# build
docker build -t jenkins-builds .

docker tag jenkins-builds:latest ${IMAGE}

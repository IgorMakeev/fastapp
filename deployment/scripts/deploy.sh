#!/bin/bash

echo ${REPOSITORY}
echo ${ENV}
echo ${REGION}

aws ecr describe-repositories

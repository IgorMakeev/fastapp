#!/bin/bash

echo ${REPOSITORY}
echo ${ENV}
echo ${REGION}
echo ${params.NAME}

aws ecr describe-repositories

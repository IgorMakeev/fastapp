#!/bin/bash

echo ${REPOSITORY}
echo ${ENV}
echo ${REGION}
echo ${params.NAME}
echo ${NAME}

aws ecr describe-repositories

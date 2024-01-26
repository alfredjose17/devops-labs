#!/bin/bash

DOCKERHUB_USERNAME="avj17"
APP_NAME="basic-service"

# Log in to Docker Hub
docker login

# Get the current Git commit hash
GIT_COMMIT=$(git log -1 --format=%h)

# Build the Docker image with label and tag
docker build -t $DOCKERHUB_USERNAME/$APP_NAME:$GIT_COMMIT .

# Push the image to Docker Hub
docker push $DOCKERHUB_USERNAME/$APP_NAME:$GIT_COMMIT

# Check if the image is created
docker images
docker images $DOCKERHUB_USERNAME/$APP_NAME
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rj93/ml-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u rj93 -p "$1"
docker tag ml-app rj93/ml-app

# Step 3:
# Push image to a docker repository
docker push rj93/ml-app

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rj93/ml-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
pod=$(kubectl get pods -o jsonpath='{.items[*].metadata.name}')

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/"$pod" --address 0.0.0.0 8000:80


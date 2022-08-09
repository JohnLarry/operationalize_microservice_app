#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=johnlarry/udacity-project-four-jay




# Step 2
# Run the Docker Hub container with kubernetes
kubectl run  --image=$dockerpath:1.0.0 --port=80 udacity-project-four-jaya
#kubectl run --image "$dockerpath" --port 80 my-running-microservice 



# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host

kubectl port-forward --address  127.0.0.1 pod/udacity-project-four-jay 8000:80

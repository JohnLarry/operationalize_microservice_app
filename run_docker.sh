#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=udacity-project-four-jay .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
#docker run -p 8000:80 udacity-project
docker run -it --rm -p 8000:80 --name my-running-microservice udacity-project-four-jay
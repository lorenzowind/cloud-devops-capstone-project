#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="lorenzowind/capstone"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag capstone lorenzowind/capstone
docker login --username=lorenzowind

# Step 3:
# Push image to a docker repository
docker image push lorenzowind/capstone

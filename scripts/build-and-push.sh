#!/bin/bash

# Ensure we're in the directory containing the docker-compose.yml file
cd "$(dirname "$0")/.."

# Build the Docker image using docker-compose
docker-compose build app

# After building, tag the built image appropriately. 
# The image name typically follows the format "<directory_name>_service_name"
# but since we want to tag it for pushing to a Docker registry, we specify the tag directly.
docker tag "dev-build_app" "evilgenius13/starfire:latest"

# Push the tagged image to the Docker registry
docker push "evilgenius13/starfire:latest"

#!/bin/bash

# Root directory of the project
cd "$(dirname "$0")/.."

# Build the Docker image using docker-compose and tag it with the latest tag and push it to the registry
docker-compose build app

docker tag "dev-build_app" "evilgenius13/starfire:latest"

docker push "evilgenius13/starfire:latest"

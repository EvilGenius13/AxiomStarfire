#!/bin/bash

# Build the Docker image using docker-compose
docker-compose build app

# Tag the image
# Note: Ensure you've logged into your Docker registry beforehand or include login commands in this script
docker tag app:latest evilgenius13/starfire:latest

# Push the image to the registry
docker push evilgenius13/starfire:latest

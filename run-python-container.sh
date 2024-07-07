#!/bin/bash

# Build and run the Docker container in detached mode
docker-compose up -d --build

# Wait for the container to be up and running
echo "Waiting for the container to start..."
sleep 5

# Exec into the running container
docker exec -it python-dev-container zsh

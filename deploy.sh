#!/bin/bash

echo "Pulling latest Docker image..."
docker pull $DOCKERHUB_USERNAME/my-node-app:latest

echo "Stopping and removing existing container..."
docker stop my-node-app || true
docker rm my-node-app || true

echo "Running new container..."
docker run -d --name my-node-app -p 4444:4444 $DOCKERHUB_USERNAME/my-node-app:latest


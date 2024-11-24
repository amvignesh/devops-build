#!/bin/bash

# Step 1: Build the Docker image
echo "Building Docker image..."
docker build -t devops-build .

# Step 2: Tag the image for Docker Hub (Dev environment)
docker tag devops-build username/dev:latest

# Step 3: Push the image to Docker Hub
docker push username/dev:latest

echo "Build completed and pushed to Docker Hub (Dev)."
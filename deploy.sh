#!/bin/bash

# Step 1: Pull the latest Docker image
echo "Pulling latest Docker image..."
docker pull username/dev:latest

# Step 2: Run the application on the server
docker run -d -p 80:80 --name devops-build username/dev:latest

echo "Application deployed successfully!"
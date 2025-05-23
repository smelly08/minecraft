#!/bin/bash

# Pull the image if it doesn't exist
docker pull dorowu/ubuntu-desktop-lxde-vnc:latest

# Remove existing container if it exists
docker rm -f lxde-vnc 2>/dev/null || true

# Run the LXDE VNC container with Java installation
docker run -d \
  --name lxde-vnc \
  -p 8080:80 \
  -e RESOLUTION=1280x720 \
  -v /dev/shm:/dev/shm \
  dorowu/ubuntu-desktop-lxde-vnc:latest

# Wait a moment for container to be ready
sleep 3

# Install OpenJDK inside the running container
docker exec lxde-vnc apt-get update
docker exec lxde-vnc apt-get install -y openjdk-17-jre-headless

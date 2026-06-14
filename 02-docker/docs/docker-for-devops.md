# Docker Containerization for DevOps

## Overview

This phase demonstrates how applications can be packaged into portable Docker containers.

The Flask application was containerized using a Dockerfile and executed inside a Docker container.

## Docker Concepts Demonstrated

- Docker Images
- Docker Containers
- Port Mapping
- Dockerfile Creation
- Dependency Management
- Containerized Application Deployment

## Build Process

Build image:

```bash
docker build -t cloud-native-app .

## Container Lifecycle

- Built image: cloud-native-app
- Ran container using:
  docker run -d -p 5000:5000 --name cloud-native-container cloud-native-app

- Learned:
  - Container naming must be unique
  - Containers can be stopped, removed, and recreated
  - Port mapping exposes services externally

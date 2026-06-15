## Cloud Native DevOps Platform

End-to-end DevOps portfolio project demonstrating Linux, Docker, CI/CD, and cloud-native engineering practices using a single progressive workflow.

---

## Project Overview

This project simulates a real-world DevOps pipeline from system automation to containerization and CI/CD automation.

It demonstrates:

- Linux automation
- Docker containerization
- Multi-stage Docker builds
- Flask application deployment
- GitHub Actions CI/CD
- Docker Hub image publishing
- Cloud-native development practices

---

## Architecture Flow

Developer

↓

GitHub Repository

↓

GitHub Actions CI Pipeline

↓

Docker Build

↓

Automated Health Testing

↓

Docker Hub Registry

↓

Deployable Container Image

---

## Phases

### Phase 1 — Linux Automation (Completed)

- Built system health monitoring script (Bash)
- Automated CPU, memory, disk, and uptime reporting
- Practiced Linux permissions and executable scripts
- Created first DevOps automation artifact

### Phase 2 — Docker Containerization (Completed)

- Built Flask application
- Created optimized multi-stage Dockerfile
- Implemented `.dockerignore`
- Added health monitoring endpoint (`/health`)
- Built Docker image versions (`v1`, `v2`)
- Tested containers locally
- Verified application through browser and curl
- Applied container versioning strategy

### Phase 3 — CI/CD with GitHub Actions (Completed)

- Created GitHub Actions workflow
- Automated Docker image builds on every push
- Added container health testing stage
- Implemented version generation using GitHub run numbers
- Added release simulation stage
- Integrated Docker Hub authentication
- Published Docker images automatically to Docker Hub
- Created production-style CI pipeline

### Phase 4 — Container Registry & Release Automation (Completed)

- Created Docker Hub repository
- Configured GitHub Actions secrets
- Automated image publishing
- Published versioned Docker images
- Published latest release tag
- Validated full CI/CD workflow from GitHub to Docker Hub

## Phase 5 — AWS EC2 Deployment (Completed)

### Objective
Deploy the Dockerized Flask application to a real AWS EC2 server.

### AWS Setup
- Created AWS Free Tier account
- Created IAM user for DevOps operations
- Configured AWS CLI with IAM credentials
- Launched Ubuntu EC2 instance (t3.micro)

### Server Configuration
- Connected to EC2 using SSH and PEM key authentication
- Installed Docker Engine
- Verified Docker service functionality

### Application Deployment
- Logged in to Docker Hub from EC2
- Pulled production image from Docker Hub
- Started Flask container on AWS EC2

### Validation
Verified application health using:

```bash
curl http://localhost:5000/health
```

Response:

```json
{"status":"healthy"}
```

### Skills Practiced
- AWS EC2
- IAM Users
- Security Groups
- SSH Authentication
- Docker Deployment
- Docker Hub Registry
- Linux Administration
- Cloud Troubleshooting

### Result
Successfully deployed and validated the Cloud Native DevOps Platform on AWS EC2 using a Docker container pulled from Docker Hub.

---

## Phase 6 — Kubernetes (Planned)

### Current Status

Kubernetes was initially attempted using:
- Docker Desktop Kubernetes
- Kind (local cluster)

However, due to:
- Resource limitations (EC2 t3.micro)
- Stability issues with local cluster setup
- System overload during testing

Kubernetes phase is temporarily postponed.

### Planned Topics

- Kubernetes Architecture
- Pods
- Deployments
- ReplicaSets
- Services
- ConfigMaps
- Secrets
- Health Probes
- Rolling Updates
- Scaling Applications
- Kubernetes Manifests
- Production Deployment Workflow## Current Features

### Flask REST API

- `/` application endpoint
- `/health` monitoring endpoint

### Docker

- Multi-stage builds
- Versioned images
- Optimized image size
- Clean build context with `.dockerignore`

### CI/CD

- Automated builds
- Automated health testing
- Version tagging
- Docker Hub publishing
- Release automation

---

## Tech Stack

- Python
- Flask
- Docker
- Docker Hub
- Git
- GitHub
- GitHub Actions
- Linux (WSL2)
- Bash

---

## Learning Goals

- Linux administration
- Docker containerization
- CI/CD pipeline design
- Container registry management
- Kubernetes orchestration
- Cloud-native architecture
- DevOps workflow automation

---

## Evidence

All phases include:

- Terminal outputs
- Docker builds
- Running containers
- Health check validation
- GitHub Actions workflow runs
- Docker Hub image publishing
- CI/CD execution logs

---

## Screenshots

### Phase 1 — Linux Automation
- Bash script execution in WSL terminal
- CPU, memory, disk monitoring output

### Phase 2 — Docker Containerization
- Docker build output
- Running Flask container (`docker ps`)
- Browser showing `/health` endpoint

### Phase 3 — CI/CD Pipeline
- GitHub Actions workflow run (successful build)
- Docker build and test logs
- CI pipeline completion status

### Phase 4 — Docker Hub Registry
- Docker Hub repository showing pushed images
- Versioned tags (v1.0.x, latest)
- Image pull confirmation logs

### Phase 5 — AWS EC2 Deployment
- EC2 instance running in AWS console
- SSH connection from WSL terminal
- `docker ps` showing running container
- `/health` endpoint response from EC2
- Browser access via EC2 public IP

### Phase 6 — Kubernetes (Experiment)
- Kind cluster creation output
- `kubectl version` output
- Cluster logs / initial setup attempts

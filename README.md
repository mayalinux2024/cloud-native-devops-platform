Cloud Native DevOps Platform

End-to-end DevOps portfolio project demonstrating Linux, Docker, CI/CD, and cloud-native engineering practices using a single progressive workflow.

Project Overview

This project simulates a real-world DevOps pipeline from system automation to containerization and CI/CD automation.

It demonstrates:

Linux automation
Docker containerization (multi-stage builds)
Flask application deployment
GitHub Actions CI pipeline
Architecture Flow

Developer
↓
GitHub Repository
↓
GitHub Actions (CI Pipeline)
↓
Docker Image Build
↓
Local Container Execution
↓
Flask Application Running on Port 5000

Phases
Phase 1 — Linux Automation (Completed)
Built system health monitoring script (Bash)
Automated system diagnostics (CPU, memory, disk, uptime)
Practiced Linux permissions and execution
Created first DevOps automation artifact
Phase 2 — Docker Containerization (Completed)
Built Flask application
Created multi-stage Dockerfile
Implemented .dockerignore for clean builds
Built and ran Docker container locally
Verified application on port 5000
Added /health endpoint for service monitoring
Phase 3 — CI/CD with GitHub Actions (In Progress)
Created GitHub Actions workflow
Automated Docker image build on every push
Implemented lightweight CI pipeline for stability
Integrated Docker build verification into CI process
Current Features
Flask REST API
/ main endpoint
/health monitoring endpoint
Dockerized application
Multi-stage Docker build
GitHub Actions CI pipeline
Tech Stack
Python (Flask)
Docker
Git & GitHub
GitHub Actions
Linux (WSL2)
Bash scripting
Learning Goals
Linux automation fundamentals
Containerization best practices
CI/CD pipeline design
Cloud-native architecture thinking
DevOps workflow simulation
Next Steps
Docker image versioning (v2)
CI pipeline improvements
Introduction to AWS deployment (EC2)
Terraform infrastructure setup
Kubernetes deployment phase
Evidence

All phases include:

Terminal outputs
Docker builds
Running containers
CI pipeline execution logs

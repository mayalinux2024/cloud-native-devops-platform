# AWS EC2 Deployment (DevOps Project)

## Objective
Deploy a containerized Flask application on AWS EC2 using Docker.

---

## Steps Performed

### 1. AWS Setup
- Created AWS Free Tier account
- Configured IAM user for DevOps access
- Configured AWS CLI locally

---

### 2. EC2 Instance Launch
- Instance Name: devops-flask-server
- AMI: Ubuntu 26.04 LTS
- Instance Type: t3.micro (Free Tier eligible)
- Security Group:
  - SSH (22)
  - HTTP (80)
  - Flask App (5000)

---

### 3. Server Setup
- Connected via SSH using PEM key
- Installed Docker Engine
- Verified Docker installation

---

### 4. Application Deployment
- Pulled Docker image from Docker Hub
- Ran container:

```bash
docker run -d -p 5000:5000 mayalinux/cloud-native-app:latest

### 5. Validation
Health check:

curl http://localhost:5000/health

Response:

{"status": "healthy"}

Outcome: 

Successfully deployed and verified a Dockerized Flask application on AWS EC2 using a public Docker Hub image.

This demonstrates:

Cloud infrastructure setup
EC2 provisioning
SSH access
Docker deployment on cloud server
Application validation

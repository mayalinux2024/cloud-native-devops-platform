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

## Phase 6 — Kubernetes (Completed)

Topics Practiced

- Kind cluster creation
- Deployments
- Services
- Port forwarding
- Scaling replicas
- Self-healing pods
- Rolling update troubleshooting
- Rollback operations

Kubernetes Deployment Lifecycle

1. Created Kind cluster
2. Deployed Flask application
3. Exposed application via Service
4. Scaled deployment to 3 replicas
5. Simulated failed deployment using invalid image tag
6. Diagnosed ImagePullBackOff
7. Performed rollback
8. Restored healthy service

## Phase 7: Terraform – Infrastructure as Code (AWS EC2)

In this phase, we automated cloud infrastructure provisioning using Terraform.

## Objective 
Provision an AWS EC2 instance and security group using Infrastructure as Code (IaC) instead of manual AWS Console setup.

---

### What was implemented
- Configured Terraform AWS Provider (`hashicorp/aws`)
- Defined infrastructure using declarative `.tf` files
- Created:
  - EC2 instance (`t3.micro`)
  - Security Group (SSH + Flask port 5000)
- Used Ubuntu AMI in `us-east-1`
- Automated Docker installation via `user_data`
- Deployed Flask application container automatically

---

### Terraform Resources
#### Provider Configuration
- AWS Provider configured for region: `us-east-1`

#### EC2 Instance
- Instance Type: `t3.micro`
- AMI: Ubuntu 22.04 (free-tier eligible)
- Security Group: `devops-sg`

#### Security Group Rules
- SSH: Port 22
- Flask App: Port 5000

---

### Deployment Flow
1. `terraform init` – Initialize provider plugins
2. `terraform plan` – Preview infrastructure changes
3. `terraform apply` – Provision AWS resources
4. EC2 instance automatically:
   - Installs Docker
   - Pulls Flask image
   - Runs container on port 5000

---

### Output
- EC2 Public IP generated dynamically
- Flask app accessible via:
http://34.235.152.3:5000/health


---

### Key Learnings
- Infrastructure as Code (IaC) fundamentals
- AWS EC2 provisioning automation
- Security group configuration
- Terraform state management
- Handling real-world issues (AMI mismatch, instance type restrictions)

---

### Issues Solved
- Fixed invalid instance type (resolved Free Tier compatibility)
- Resolved large `.terraform` artifacts in Git
- Cleaned repository using `git filter-repo`
- Managed AWS authentication and region configuration

---

### Evidence
- Terraform init success screenshot
- Terraform apply success screenshot
- EC2 instance running in AWS Console
- Flask app health check response
   
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
> Note: Screenshots represent key milestones captured during development. Some intermediate automation outputs (Phase 1 CI artifacts) were validated via terminal logs but not individually screenshoted.

### Phase 1 — Linux Automation
- `linux-health-check`
  System Health Report (terminal output)
  
  <img width="628" height="505" alt="linux-health-check" src="https://github.com/user-attachments/assets/6cd6d441-f3a4-4f52-9649-e1daed736922" />
---

### Phase 2 — Docker Containerization
- `flask-app-running`
  Flask app running on port 5000 (browser)
  
  <img width="404" height="104" alt="flask-app-running" src="https://github.com/user-attachments/assets/cca6bbcd-894e-4252-ba6f-72f73bf396ac" />

- `docker-container-running`
  Docker container run command + `docker ps`

  <img width="940" height="103" alt="docker-container-running" src="https://github.com/user-attachments/assets/dbb0cab2-df27-43c6-ab34-135bc25fec71" />

- `docker-upgraded-image-running`
  Updated Docker image running (v2) in browser
  
  <img width="851" height="227" alt="docker-v2" src="https://github.com/user-attachments/assets/3d4fbe23-b209-468a-9aa0-f5890300a112" />

- `docker-health-image`
  Health endpoint (`/health`) showing healthy status
  
  <img width="427" height="103" alt="docker-health-image" src="https://github.com/user-attachments/assets/54827e52-3b2c-4090-bddc-f5e6492841fc" />

- `docker-vs`
  Comparison of Docker versions (v1 vs v2) + terminal output
  
  <img width="431" height="74" alt="docker-upgraded-image-running" src="https://github.com/user-attachments/assets/092824b7-2468-4016-ad76-2b2f0dc41bf8" />
---

### Phase 3 — CI/CD Pipeline
*(covered via GitHub Actions logs — no screenshot captured)*

---

### Phase 4 — Docker Hub Registry

   <img width="458" height="410" alt="docker-hub-registry" src="https://github.com/user-attachments/assets/ab9a26cf-6b37-457a-87e5-d13b2f993570" />

---

### Phase 5 — AWS EC2 Deployment
- `aws-ec2-docker-running`
  Flask app running on EC2 (browser health status)
  
   <img width="329" height="92" alt="aws-Ec2-docker-running" src="https://github.com/user-attachments/assets/5fbb9ec5-dfe3-4417-832c-bff9e357c33a" />

- `ubuntu-ec2-terminal`
  EC2 SSH session showing:
  - Docker pull
  - Docker run
  - Docker ps
  - curl /health
  - 
   <img width="853" height="425" alt="Ubuntu EC2 terminal" src="https://github.com/user-attachments/assets/75c5ee5c-ebc8-4232-a9a8-618f50b99164" />
  
- `aws-console`
  AWS EC2 instance running in console

   <img width="707" height="342" alt="AWS Console" src="https://github.com/user-attachments/assets/27d8d9ba-b7b2-44ce-9bae-e464db9650b6" />

- `security-group-inbound-rule-port-5000`
  Security group rules (port 5000 + SSH access)

   <img width="737" height="371" alt="Security Group - Inbound Rule - port 5000" src="https://github.com/user-attachments/assets/f85edd1d-83fa-48ea-b1a8-9d970d2121a0" />

### Phase 6 - Kubernetes
- kind Create Cluster
  
  <img width="756" height="418" alt="kind-create-cluster" src="https://github.com/user-attachments/assets/5e26d4dd-d6cc-474e-98b4-d3d6238482ab" />

- kubectl get nodes
  
  <img width="728" height="128" alt="kubectl-get-nodes" src="https://github.com/user-attachments/assets/4b995c4f-95e8-4956-a1b6-0dda1400f088" />

- kubectl get podes kubectl get services
  
  <img width="731" height="166" alt="kubectl-apply-get-pods-get-services" src="https://github.com/user-attachments/assets/9699680b-1b77-4376-8252-0405f634aa3c" />

- kubectl port forward service
  
  <img width="383" height="101" alt="kubectl port-forward-service" src="https://github.com/user-attachments/assets/1470b653-611d-472d-a7f2-7cb1d8b44974" />

  <img width="842" height="134" alt="kubectl-port-forward" src="https://github.com/user-attachments/assets/7169dee4-69d5-4f5e-80e5-bc5ea03b3c47" />

- kubectl scale (Horizontal scaling)
  
  <img width="846" height="311" alt="kubectl-scale" src="https://github.com/user-attachments/assets/56180bf7-04f3-47b4-8dcc-a6a8c31011af" />

- Real Load Balancing Test
  
  <img width="848" height="143" alt="kubectl-real-load-balancing-test" src="https://github.com/user-attachments/assets/2b0ed807-273d-4df6-a90a-ef994fc16994" />

  Send Multiple Requests

  <img width="446" height="110" alt="kubectl-send-multiple-requests" src="https://github.com/user-attachments/assets/049e5cf0-6c66-46ed-a4a2-bba5c6a3e078" />

- Kubernetes Rollout - rolled back
  
  <img width="947" height="368" alt="kubernetes-rolled-back" src="https://github.com/user-attachments/assets/e67adafb-f382-4804-a9b6-3343f2b3a503" />

  <img width="916" height="146" alt="kubernetes-rollout-rollback" src="https://github.com/user-attachments/assets/26fc509e-593f-4db5-b450-75ad8af365e9" />

- Kubernetes Self Healing
  
  <img width="829" height="119" alt="kubectl-self-healing" src="https://github.com/user-attachments/assets/cbe02ba1-e029-4d98-83ac-d71d957c20b1" />

- Kubernetes scaling to 3 replicas
  
  <img width="648" height="95" alt="kubernetes-deployment-scaling-to-3-replicas-self-healing" src="https://github.com/user-attachments/assets/28a88dcb-fb7c-40e4-a6cd-54f88d46231e" />

### Phase 7 Terraform

- Terraform init
  
  <img width="663" height="324" alt="terraform-init" src="https://github.com/user-attachments/assets/00f2c5bf-8b3f-4fb8-9652-33998f91a58f" />

- Terraform plan

  <img width="916" height="470" alt="terraform-plan-1" src="https://github.com/user-attachments/assets/da5b7727-4fd1-4306-9512-a53fa2d68ceb" />

  <img width="496" height="476" alt="terraform-plan-2" src="https://github.com/user-attachments/assets/5aba4e84-bd1f-42b3-b3c6-fcbd5fb79f3e" />

  <img width="407" height="461" alt="terraform-plan-3" src="https://github.com/user-attachments/assets/5915dd9f-160a-422f-affd-c7811ade8e59" />

  <img width="884" height="474" alt="terraform-plan-4" src="https://github.com/user-attachments/assets/b4d9bbec-cdc6-404d-9360-c37425263693" />

- Terraforom apply (1st time)

  <img width="931" height="460" alt="terraform-apply-success-1" src="https://github.com/user-attachments/assets/b22c04b5-0965-4189-8e9b-850102cfd416" />

  <img width="482" height="476" alt="terraform-apply-success-2" src="https://github.com/user-attachments/assets/9f922354-1dc1-4045-b70f-dedff733cab0" />

  -Public_IP
  <img width="562" height="283" alt="terraform-apply-success-3-public_ip" src="https://github.com/user-attachments/assets/f6792154-6a50-4174-9094-cdbb14c6ecdb" />

- SSH Login Success

  <img width="910" height="451" alt="SSH-login-success" src="https://github.com/user-attachments/assets/ff60da10-492b-48dd-8ab2-d1702759c9c8" />

- EC2 uptime

  <img width="432" height="49" alt="Ec2-uptime" src="https://github.com/user-attachments/assets/933d3574-3b70-415a-af89-55ffe9ca203d" />

- EC2 Instance: "terraform-deveops-server"

  <img width="840" height="443" alt="ec2-instance-terraform-devops-server" src="https://github.com/user-attachments/assets/77daa5ff-de49-456a-8cc2-c312373eb34a" />

- Instance Security Group

  <img width="763" height="374" alt="terraform-security-group" src="https://github.com/user-attachments/assets/44983014-fae0-4377-b55f-1953239d060b" />

  <img width="767" height="323" alt="terraform-security-group-devops-sg" src="https://github.com/user-attachments/assets/09ccb0b6-10e1-4209-9585-1dcd25fbb9ce" />

- Terraform apply (2nd time)

  <img width="917" height="472" alt="terraform-second-apply-success-1" src="https://github.com/user-attachments/assets/0f166802-2c32-4610-bd94-8ed57ad02076" />

  - Public_IP
    <img width="605" height="230" alt="terraform-second-apply-success-2-public_ip" src="https://github.com/user-attachments/assets/bc997b6b-af5f-406e-a7f6-c81570ef378f" />

- Terraform/SSH issue ran into an AWS-region/key-pair mismatch issue

- Terraform successfully provisioned AWS infrastructure. Additional improvements such as key pair management and automated application bootstrap were identified as future enhancements. The Terraform deployment can be revisited later as an enhancement,













  









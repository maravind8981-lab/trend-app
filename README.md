# Project Overview
# This project demonstrates a complete DevOps CI/CD pipeline using Docker, Jenkins, Kubernetes (AWS EKS), and Monitoring with Prometheus & Grafana.

# Tech Stack
- GitHub (Version Control)
- Docker
- Jenkins (CI/CD)
- Terraform (Infrastructure)
- AWS EC2
- AWS EKS (Kubernetes)
- Helm
- Prometheus & Grafana (Monitoring)

# Architecture Flow
1. Developer pushes code to GitHub
2. GitHub webhook triggers Jenkins pipeline
3. Jenkins:
   - Builds Docker image
   - Pushes image to Docker Hub
   - Deploys application to EKS using kubectl
4. Application runs on Kubernetes
5. Prometheus & Grafana monitor cluster and application
   
## Monitoring
Cluster monitoring was implemented for the EKS cluster trend-app-cluster using Prometheus and Grafana. The monitoring stack was deployed via Helm and visualized using Grafana Kubernetes dashboards to monitor cluster, node, and pod metrics.

# Setup Instructions

# 1. Clone Repository
```bash
git clone https://github.com/maravind8981-lab/trend-app
cd trend-app



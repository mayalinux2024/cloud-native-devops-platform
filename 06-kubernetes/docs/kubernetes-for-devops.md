# Kubernetes for DevOps

## Concepts Practiced

- Kind cluster creation
- kubectl administration
- Deployments
- Services
- Scaling
- Self-healing pods
- Port forwarding

## Commands Used

kubectl apply -f deployment.yaml

kubectl apply -f service.yaml

kubectl scale deployment flask-app --replicas=3

kubectl get pods

kubectl get services

kubectl port-forward service/flask-service 8080:5000

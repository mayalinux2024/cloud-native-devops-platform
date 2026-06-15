## Kubernetes Run Notes

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

kubectl port-forward service/flask-service 8080:5000

Access app:
http://localhost:8080/health

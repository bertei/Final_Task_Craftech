helm install -f testapp-chart-dynamic/values/testapp_db-values.yml testapp-db-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_backend-values.yml testapp-backend-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_frontend-values.yml testapp-frontend-microservice testapp-chart-dynamic
kubectl port-forward testapp-db-service 5432:5432
kubectl port-forward testapp-frontend-service 8000:8000
kubectl port-forward testapp-frontend-service 3000:3000
kubectl get all
helm list
helm install -f testapp-chart-dynamic/values/testapp_db-values.yml testapp-db-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_backend-values.yml testapp-backend-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_frontend-values.yml testapp-frontend-microservice testapp-chart-dynamic
kubectl apply -f testapp-chart-dynamic/testapp-ingress.yml
kubectl get all
curl testapp.dev/frontend
sleep 3
curl testapp.dev/backend
sleep 3
minikube service list
minikube service testapp-frontend-service --url
echo "------------------opening the service------------------"
curl $(minikube service testapp-frontend-service --url)


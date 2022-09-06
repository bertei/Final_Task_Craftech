helm install -f testapp-chart-dynamic/values/testapp_db-values.yml testapp-db-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_backend-values.yml testapp-backend-microservice testapp-chart-dynamic
helm install -f testapp-chart-dynamic/values/testapp_frontend-values.yml testapp-frontend-microservice testapp-chart-dynamic
kubectl apply -f testapp-chart-dynamic/testapp-ingress.yml
minikube service list
minikube service testapp-frontend-service --url
echo "------------------opening the service------------------"
curl $(minikube service testapp-frontend-service --url)
minikube service testapp-backend-service --url
echo "------------------opening the service------------------"
curl $(minikube service testapp-backend-service --url)
echo "------------------Testing ingress------------------"
curl $(minikube ip)/frontend
curl $(minikube ip)/backend

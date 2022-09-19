##Cert-Manager Installation
##Add repository
helm repo add jetstack https://charts.jetstack.io
helm repo update
##Install chart
helm install cert-manager jetstack/cert-manager --version 1.9.1 --set installCRDs=true


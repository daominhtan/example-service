$ minikube start --driver=docker --network host
$ minikube addons enable metallb
$ minikube addons configure metallb
$ kubectl get pods -n metallb-system


kubectl expose deployment exmple --type=LoadBalancer --port=8080

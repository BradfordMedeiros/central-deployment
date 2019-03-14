#!/usr/bin/env bash

#kubectl delete -f ./charts/prometheus/prometheus-configmap.yaml
#kubectl delete -f ./charts/prometheus/prometheus-deployment.yaml
#kubectl delete -f ./charts/prometheus/prometheus-service.yaml

kubectl delete -f ./charts/hippo/hippo-deployment.yaml
kubectl delete -f ./charts/hippo/hippo-service.yaml

kubectl delete -f ./charts/home/home-configmap.yaml
kubectl delete -f ./charts/home/home-deployment.yaml
kubectl delete -f ./charts/home/home-service.yaml

#kubectl delete -f ./charts/irc/irc-deployment.yaml
#kubectl delete -f ./charts/irc/irc-service.yaml

kubectl delete -f ./charts/bootstrapper/bootstrapper-deployment.yaml
kubectl delete -f ./charts/bootstrapper/bootstrapper-service.yaml

kubectl delete -f ./charts/main-ingress.yaml

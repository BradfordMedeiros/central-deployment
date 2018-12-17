#!/usr/bin/env bash

kubectl apply -f ./charts/prometheus/prometheus-deployment.yaml
kubectl apply -f ./charts/prometheus/prometheus-service.yaml

kubectl apply -f ./charts/hippo/hippo-deployment.yaml
kubectl apply -f ./charts/hippo/hippo-service.yaml

kubectl apply -f ./charts/main-ingress.yaml

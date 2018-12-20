#!/usr/bin/env bash

INGRESS_IP=$(kubectl get ingress | tail -n 1 | awk '{ print $3 }')

if [[ -z "$INGRESS_IP" ]]; then
	echo "Not defined"
	exit 1
fi 

xdg-open "http://$INGRESS_IP"


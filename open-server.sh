#!/usr/bin/env bash

ip=$(gcloud compute instances list --format=json | jq -r .[0].networkInterfaces[0].accessConfigs[0].natIP)
xdg-open "http://$ip"

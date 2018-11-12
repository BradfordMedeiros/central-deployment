#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

gcloud compute instances delete -q --zone=us-west1-a "$INSTANCE_NAME"
gcloud compute firewall-rules delete allow-irc
gcloud compute firewall-rules delete allow-hippo

#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

gcloud compute instances create "$INSTANCE_NAME" --zone=us-west1-a --machine-type=g1-small
echo "created $INSTANCE_NAME"

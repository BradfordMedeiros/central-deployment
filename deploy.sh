#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

echo "creating instance"
gcloud compute instances create "$INSTANCE_NAME" --zone=us-west1-a --machine-type=g1-small
echo "created $INSTANCE_NAME"

echo "uploading code"
./put-code.sh
echo "uploaded code"

#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

echo "creating instance"
gcloud compute instances create "$INSTANCE_NAME" --zone=us-west1-a --machine-type=g1-small
echo "created $INSTANCE_NAME"

echo "creating firewall rule to allow-irc"
gcloud compute firewall-rules create allow-irc --allow tcp:6667 --target-tags=irc-server
echo "created firewall rule"

echo "allowing http traffic to server"
gcloud compute instances add-tags test-instance --tags http-server,irc-server

echo "uploading code"
./put-code.sh
echo "uploaded code"

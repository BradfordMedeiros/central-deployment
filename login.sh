#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

gcloud compute ssh "$INSTANCE_NAME"

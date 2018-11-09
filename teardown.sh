#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

gcloud compute instances delete "$INSTANCE_NAME" -q

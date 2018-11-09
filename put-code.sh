#!/usr/bin/env bash

INSTANCE_NAME=$(<instance-name)

gcloud compute scp --recurse ./code "$INSTANCE_NAME:~"
gcloud compute ssh "$INSTANCE_NAME" --command "cd ./code && ./install.sh"

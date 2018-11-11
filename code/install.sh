#!/usr/bin/env bash

apt-get update
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt-get install -y docker-ce
apt-get -y install nginx

chmod 777 /var/run/docker.sock 

./start.sh

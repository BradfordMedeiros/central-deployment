#!/usr/bin/env bash

nginx -s quit
cat ./nginx.conf.template | sed "s|{{CONTENT_FOLDER}}|$(pwd)/static|g" > nginx.conf
nginx -c $(pwd)/nginx.conf

docker run --name inspircd -p 6667:6667 -e "INSP_NET_NAME=Smugs_Server" -d inspircd/inspircd-docker

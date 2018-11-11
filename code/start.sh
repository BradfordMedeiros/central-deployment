#!/usr/bin/env bash

# Start website
nginx -s quit
cat ./nginx.conf.template | sed "s|{{CONTENT_FOLDER}}|$(pwd)/static|g" > nginx.conf
nginx -c $(pwd)/nginx.conf

# Start IRC server
docker run  --name inspircd -p 6667:6667 -e "INSP_NET_NAME=Smugs_Server" -v $(pwd)/conf:/inspircd/conf -d inspircd/inspircd-docker 
	

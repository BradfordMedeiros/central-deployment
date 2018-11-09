#!/usr/bin/env bash

nginx -s quit
cat ./nginx.conf.template | sed "s|{{CONTENT_FOLDER}}|$(pwd)/static|g" > nginx.conf
nginx -c $(pwd)/nginx.conf


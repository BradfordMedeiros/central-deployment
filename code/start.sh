#!/usr/bin/env bash

cat ./nginx.conf.template | sed "s|{{CONTENT_FOLDER}}|$(pwd)/static|g" > nginx.conf

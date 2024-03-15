#!/bin/bash
PROJECT=ghcr.io/aweher/stream-noticias-ar
NOW=$(date +"%Y%m%d%H%M%S")
docker build -t $PROJECT:latest -t $PROJECT:$NOW .
docker push $PROJECT:latest 
docker push $PROJECT:$NOW
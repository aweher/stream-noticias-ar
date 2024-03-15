#!/bin/bash
PROJECT=aweher/stream-noticias-ar
PROJECTGH=ghcr.io/aweher/stream-noticias-ar
NOW=$(date +"%Y%m%d%H%M%S")
docker build -t $PROJECT:latest -t $PROJECT:$NOW -t $PROJECTGH:latest -t $PROJECTGH:$NOW .
docker push $PROJECT:latest 
docker push $PROJECT:$NOW
docker push $PROJECTGH:latest 
docker push $PROJECTGH:$NOW
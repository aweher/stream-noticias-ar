#!/bin/bash
NOW=$(date +"%Y%m%d%H%M%S")
docker build -t aweher/stream-noticias-ar:latest -t aweher/stream-noticias-ar:$NOW .
docker push aweher/stream-noticias-ar:latest aweher/stream-noticias-ar:$NOW
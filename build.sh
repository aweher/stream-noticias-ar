NOW=$(date +"%Y%m%d%H%M%S")
docker build -t aweher/stream-noticias-ar:latest -t aweher/stream-noticias-ar:$NOW .
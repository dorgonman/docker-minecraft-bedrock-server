#!/bin/sh
set -e

docker pull itzg/minecraft-bedrock-server

docker compose down
# remove old container
docker rm -f minecraft-bedrock-server-instance || true
# create new container with updated image
docker compose up -d
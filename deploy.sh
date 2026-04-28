#!/bin/bash

echo "Deploy başladı..."

docker pull azrayy/medical-app:latest
docker-compose down || true
docker image prune -f
docker-compose up -d

echo "Deploy tamamlandı 🚀"
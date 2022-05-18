#!/bin/bash
echo "Tagging and pushing docker image. Be sure to start docker.app first"
echo "To examine contents: 'docker run -it {image} sh'"

docker rmi kineticsquid/johnkellerman:latest
docker build --rm --no-cache --pull -t kineticsquid/johnkellerman:latest -f Dockerfile .
docker push kineticsquid/johnkellerman:latest

# list the current images
echo "Docker Images..."
docker images

echo "Now running..."
./run-image-locally.sh

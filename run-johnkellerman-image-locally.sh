#!/bin/bash

# Now run locally. Use "rm" to remove the container once it finishes
#docker run --rm kineticsquid/calendar:latest

export DATE=`date '+%F_%H:%M:%S'`

docker run --rm -p 5050:5050 \
  --env DATE=$DATE \
  --env PORT=${PORT} \
  kineticsquid/johnkellerman:latest




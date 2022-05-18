#!/bin/bash

echo 'Be sure to "gcloud auth login" first'

export DATE=`date '+%F_%H:%M:%S'`

# Run this to create or re-deploy the function
gcloud run deploy johnkellerman --allow-unauthenticated --project cloud-run-stuff --region us-central1 \
  --source ./
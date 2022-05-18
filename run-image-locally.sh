#!/bin/bash

./.vscode/environment_vars.sh

docker run --rm -p 8080:8080 kineticsquid/johnkellerman:latest

#!/bin/bash

IMAGE=swaggerapi/swagger-editor
PORT=8080

set -eu

echo "Starting editor on port $PORT ..."
docker run --rm -p $PORT:8080 $IMAGE

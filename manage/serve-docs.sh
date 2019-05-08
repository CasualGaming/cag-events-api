#!/bin/bash

JSON_DIR=json

set -eu

echo "Exporting to JSON ..."
rm -rf $JSON_DIR
manage/gen-json.sh

echo
echo "Starting server ..."
docker run --rm -e SWAGGER_JSON=/local/$JSON_DIR/swagger.json -v ${PWD}:/local -p 8080:8080 swaggerapi/swagger-ui

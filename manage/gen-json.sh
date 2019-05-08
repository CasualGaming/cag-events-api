#!/bin/bash

GEN_LANG=swagger
GEN_IN=openapi.yaml
GEN_OUT=json

set -eu

rm -rf $GEN_OUT

docker run --rm -v ${PWD}:/local \
        swaggerapi/swagger-codegen-cli generate \
        -l $GEN_LANG \
        -i /local/$GEN_IN \
        -o /local/$GEN_OUT

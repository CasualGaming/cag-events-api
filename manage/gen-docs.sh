#!/bin/bash

IMAGE=swaggerapi/swagger-codegen-cli-v3:3.0.8
GEN_LANG=html
GEN_IN=openapi.yaml
GEN_OUT=docs

set -eu

rm -rf $GEN_OUT

# Gen docs
# Has debug mode active, so redirect STDOUT to /dev/null
docker run --rm -v ${PWD}:/local $IMAGE \
        generate -v -l $GEN_LANG -i /local/$GEN_IN -o /local/$GEN_OUT > /dev/null

# Remove extra stuff
rm -rf $GEN_OUT/.swagger*

# Add license
cp LICENSE $GEN_OUT/

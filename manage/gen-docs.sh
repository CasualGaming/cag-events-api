#!/bin/bash

GEN_LANG=html
#GEN_LANG=html2
#GEN_LANG=cwiki
#GEN_LANG=dynamic-html

GEN_IN=openapi.yaml
GEN_OUT=docs

set -eu

rm -rf $GEN_OUT

docker run --rm -v ${PWD}:/local \
        swaggerapi/swagger-codegen-cli generate \
        -l $GEN_LANG \
        -i /local/$GEN_IN \
        -o /local/$GEN_OUT

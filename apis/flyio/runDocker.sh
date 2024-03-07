#!/bin/sh

# The file was found here : https://community.fly.io/t/fly-machines-rest-api-openapi-specification/8207/8

docker run --rm \
  -v ${PWD}:/local julienlengrand/jetbrains-openapi-generator generate \
  -i /local/doc.json \
  -g jetbrains-http-client \
  -o /local
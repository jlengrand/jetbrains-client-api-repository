#!/bin/sh

# File comes from https://docs.openaq.org/docs/postman-collection

docker run --rm \
  -v ${PWD}:/local julienlengrand/jetbrains-openapi-generator generate \
  -i /local/spec.json \
  -g jetbrains-http-client \
  -o /local
#    --additional-properties=customHeaders="X-API-Key: {{apiKey}}" \ // You need this to get past the rate limiting

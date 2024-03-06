#!/bin/sh

docker run --rm \
  -v ${PWD}:/local openapi-generator-jetbrains generate \
  -i /local/api.github.com.json \
  -g jetbrains-http-client \
  --additional-properties=customHeaders="Authorization: Bearer {{bearerToken}}" \
  -o /local
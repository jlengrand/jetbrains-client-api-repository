#!/bin/sh

# The file was found here : https://community.fly.io/t/fly-machines-rest-api-openapi-specification/8207/8
# The specs are available there too https://docs.machines.dev/

docker run --rm \
  -v ${PWD}:/local julienlengrand/jetbrains-openapi-generator generate \
  --additional-properties=customHeaders="Authorization: Bearer {{bearerToken}}" \
  -i /local/doc.json \
  -g jetbrains-http-client \
  -o /local
#!/usr/bin/env bash

echo "Using galasactl version ${INPUT_GALASACTL_VERSION}"
echo "Running command: galasactl ${INPUT_GALASACTL_ARGS}"

exec docker run \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    --entrypoint="/bin/galasactl" \
    --user="galasa" \
    icr.io/galasadev/galasa-cli-amd64:${INPUT_GALASACTL_VERSION} ${INPUT_GALASACTL_ARGS}

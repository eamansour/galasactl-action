#!/usr/bin/env bash

echo "Using galasactl version ${INPUT_GALASACTL_VERSION}"
echo "Running command: galasactl ${INPUT_GALASACTL_ARGS}"

pwd
ls -lah

exec docker run \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    -v "$(pwd):/root/.galasa" \
    --entrypoint="/bin/galasactl" \
    --user="root" \
    icr.io/galasadev/galasa-cli-amd64:${INPUT_GALASACTL_VERSION} ${INPUT_GALASACTL_ARGS}

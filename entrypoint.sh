#!/usr/bin/env bash

echo "Using galasactl version ${INPUT_GALASACTL_VERSION}"
echo "Running command: galasactl ${INPUT_GALASACTL_ARGS}"

galasactl ${INPUT_GALASACTL_ARGS}
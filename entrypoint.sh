#!/usr/bin/env bash
echo "JAVA_HOME is ${JAVA_HOME}"
echo "Using galasactl version '${INPUT_GALASACTL_VERSION}'"
echo "Running command: galasactl ${INPUT_GALASACTL_ARGS}"

if [ -z "${INPUT_GALASACTL_ARGS}" ]; then
    eval "${INPUT_SCRIPT}"
else
    galasactl ${INPUT_GALASACTL_ARGS}
fi
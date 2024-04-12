#!/usr/bin/env bash
echo "JAVA_HOME is ${JAVA_HOME}"
echo "Using galasactl version ${INPUT_GALASACTL_VERSION}"
echo "Running command: galasactl ${INPUT_GALASACTL_ARGS}"

pwd
ls -lah
ls -lah .m2/repository
ls -lah .galasa

galasactl ${INPUT_GALASACTL_ARGS}
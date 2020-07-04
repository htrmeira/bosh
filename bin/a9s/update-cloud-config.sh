#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions

bosh update-cloud-config \
  ${ANYNINES_INFRASTRUCTURE_DEPLOYMENT}/config/boshlite/cloud-config.yml

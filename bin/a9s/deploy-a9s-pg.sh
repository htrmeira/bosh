#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions

with_delete=${1:-update_only}

if [ "${with_delete}" == "delete_before_update" ]; then
  bosh -d a9s-pg delete-deployment -n
fi

bosh -d a9s-pg deploy ${ANYNINES_DEPLOYMENT}/a9s-pg/a9s-pg.yml \
  --vars-file=iaas/bosh-lite-iaas-config.yml

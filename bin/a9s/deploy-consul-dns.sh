#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions

with_delete=${1:-update_only}

if [ "${with_delete}" == "delete_before_update" ]; then
  bosh -d consul-dns delete-deployment -n
fi

credhub set --name=/cdns_encrypt --type=password --password=${CDNS_ENCRYPT}

bosh -d consul-dns deploy ${ANYNINES_DEPLOYMENT}/consul-dns/consul-dns.yml \
  --vars-file=iaas/bosh-lite-iaas-config.yml

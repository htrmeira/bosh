#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions

stemcell_url="https://bosh-core-stemcells.s3-accelerate.amazonaws.com/621.76/bosh-stemcell-621.76-warden-boshlite-ubuntu-xenial-go_agent.tgz"

bosh upload-stemcell ${stemcell_url}

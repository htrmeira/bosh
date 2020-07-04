#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions

back_dir() {
  popd
}

current=$(pwd)

pushd /home/heitor/workspace/lib/bosh-lite

trap back_dir EXIT

./bosh-deployment/virtualbox/create-env.sh \
  --ops-file=${current}/ops/large.yml

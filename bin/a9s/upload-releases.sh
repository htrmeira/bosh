#!/bin/bash

set -o errexit # Exit immediately if a simple command exits with a non-zero status
set -o nounset # Report the usage of uninitialized variables
set -o pipefail # Trace ERR through pipes
set -o errtrace  # Trace ERR through functions


bosh upload-release https://d3r5lzz0qww9ge.cloudfront.net/a9s-parachute-3.tgz

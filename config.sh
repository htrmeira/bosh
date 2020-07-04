export WORKSPACE_LIB="${HOME}/workspace/lib"
export BOSH_LITE_DIR="${WORKSPACE_LIB}/bosh-lite"
export ANYNINES_DEPLOYMENT="${BOSH_LITE_DIR}/anynines-deployment"
export ANYNINES_INFRASTRUCTURE_DEPLOYMENT="${BOSH_LITE_DIR}/anynines-infrastructure-deployment"

export CDNS_ENCRYPT='biTLJVOGUMmO+g4ABe43WQ=='

# Run unit-tests
export MY_BOSH_CONFIG="${HOME}/workspace/tmp/bosh"
export IAAS_CONFIG="${MY_BOSH_CONFIG}/iaas"
export PATH_TO_IAAS_CONFIG="${IAAS_CONFIG}/bosh-lite-iaas-config.yml"
export INTERNAL_CONSUL_IP='10.244.5.15'
export INTERNAL_DNS_IP='10.244.5.16'

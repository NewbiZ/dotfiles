#!/usr/local/bin/bash

# Current script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check for lint errors
puppet-lint --no-documentation-check ${DIR}

# Puppet modules
sudo puppet module install puppetlabs-vcsrepo

# Apply puppet manifest locally
puppet apply --modulepath ${DIR}/modules ${DIR}/manifests/site.pp

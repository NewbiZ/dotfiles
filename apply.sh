#!/usr/local/bin/bash

# Current script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check for lint errors
echo "> Checking lint:"
puppet-lint --no-documentation-check ${DIR}

# Puppet modules
echo "> Updating puppet modules:"
sudo puppet module install puppetlabs-vcsrepo

# Apply puppet manifest locally
echo "> Applying puppet manifest:"
puppet apply --modulepath ${DIR}/modules ${DIR}/manifests/site.pp
